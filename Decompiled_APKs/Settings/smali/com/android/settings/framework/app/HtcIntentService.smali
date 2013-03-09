.class public final Lcom/android/settings/framework/app/HtcIntentService;
.super Landroid/app/Service;
.source "HtcIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/app/HtcIntentService$InternalServiceHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mServiceHandler:Lcom/android/settings/framework/app/HtcServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcIntentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 120
    sget-object v0, Lcom/android/settings/framework/app/HtcIntentService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 59
    const-wide/16 v2, 0x0

    .local v2, startTime:J
    const-wide/16 v0, 0x0

    .line 67
    .local v0, endTime:J
    new-instance v4, Landroid/os/HandlerThread;

    sget-object v5, Lcom/android/settings/framework/app/HtcIntentService;->TAG:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 68
    .local v4, thread:Landroid/os/HandlerThread;
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 69
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 70
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/framework/app/HtcIntentService;->mServiceLooper:Landroid/os/Looper;

    .line 71
    new-instance v5, Lcom/android/settings/framework/app/HtcIntentService$InternalServiceHandler;

    iget-object v6, p0, Lcom/android/settings/framework/app/HtcIntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v5, p0, p0, v6}, Lcom/android/settings/framework/app/HtcIntentService$InternalServiceHandler;-><init>(Lcom/android/settings/framework/app/HtcIntentService;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/settings/framework/app/HtcIntentService;->mServiceHandler:Lcom/android/settings/framework/app/HtcServiceHandler;

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcIntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 112
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 93
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcIntentService;->mServiceHandler:Lcom/android/settings/framework/app/HtcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/app/HtcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    return-void
.end method
