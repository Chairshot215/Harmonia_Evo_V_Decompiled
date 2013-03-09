.class Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver$HtcCallHidtoryCleanerThread;
.super Ljava/lang/Thread;
.source "NotificationRemoveBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcCallHidtoryCleanerThread"
.end annotation


# instance fields
.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "resolver"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver$HtcCallHidtoryCleanerThread;->this$0:Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver$HtcCallHidtoryCleanerThread;->mResolver:Landroid/content/ContentResolver;

    .line 84
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .local v3, where:Ljava/lang/StringBuilder;
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v4, " AND new=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v2, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 92
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "new"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :try_start_0
    iget-object v4, p0, Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver$HtcCallHidtoryCleanerThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    const/4 v3, 0x0

    .line 108
    const/4 v2, 0x0

    .line 109
    iput-object v8, p0, Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver$HtcCallHidtoryCleanerThread;->mResolver:Landroid/content/ContentResolver;

    .line 112
    :try_start_1
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :goto_1
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, msg:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 100
    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "uriString"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    const-string v4, "HtcContactBroadcastReceiver"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 104
    :cond_1
    throw v0

    .line 114
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v1           #msg:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "HtcContactBroadcastReceiver"

    const-string v5, "Failed to clear missed calls notification due to remote excetpion"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
