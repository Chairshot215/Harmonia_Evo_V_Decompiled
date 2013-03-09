.class public Lcom/android/providers/telephony/service/TelephonyService;
.super Landroid/app/Service;
.source "TelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;
    }
.end annotation


# static fields
.field public static ACTION_CHECK_DB_LOADABLE:Ljava/lang/String; = null

.field public static final HTC_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TelephonyService"


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mRedelivery:Z

.field private volatile mServiceHandler:Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "com.andorid.providers.telephony.ACTION_CHECK_DB_LOADABLE"

    sput-object v0, Lcom/android/providers/telephony/service/TelephonyService;->ACTION_CHECK_DB_LOADABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/telephony/service/TelephonyService;->mRedelivery:Z

    .line 57
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/providers/telephony/service/TelephonyService;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method protected handleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, action:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/telephony/service/TelephonyService;->ACTION_CHECK_DB_LOADABLE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    :try_start_0
    const-string v3, "TelephonyService"

    const-string v4, "ACTION_CHECK_DB_LOADABLE> "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Lcom/android/providers/telephony/service/TelephonyService;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT _id FROM threads LIMIT 1"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 145
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/telephony/service/TelephonyService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/telephony/util/TelephUtils;->resetDbCorruptCountAtFirstLaunch(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/providers/telephony/service/TelephonyService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getContactMessageStore(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "TelephonyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "first load db fail...> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleMessageWhat(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/providers/telephony/service/TelephonyService;->stopService(I)V

    .line 136
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TelephonyServiceHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/telephony/service/TelephonyService;->mServiceLooper:Landroid/os/Looper;

    .line 94
    new-instance v1, Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;

    iget-object v2, p0, Lcom/android/providers/telephony/service/TelephonyService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;-><init>(Lcom/android/providers/telephony/service/TelephonyService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/providers/telephony/service/TelephonyService;->mServiceHandler:Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;

    .line 96
    invoke-virtual {p0}, Lcom/android/providers/telephony/service/TelephonyService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getHelper(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/telephony/service/TelephonyService;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/providers/telephony/service/TelephonyService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 117
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/providers/telephony/service/TelephonyService;->mServiceHandler:Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 103
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 104
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/android/providers/telephony/service/TelephonyService;->mServiceHandler:Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 110
    invoke-virtual {p0, p1, p3}, Lcom/android/providers/telephony/service/TelephonyService;->onStart(Landroid/content/Intent;I)V

    .line 111
    iget-boolean v0, p0, Lcom/android/providers/telephony/service/TelephonyService;->mRedelivery:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setIntentRedelivery(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/providers/telephony/service/TelephonyService;->mRedelivery:Z

    .line 77
    return-void
.end method

.method public stopService(I)V
    .locals 0
    .parameter "startId"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/service/TelephonyService;->stopSelf(I)V

    .line 128
    return-void
.end method
