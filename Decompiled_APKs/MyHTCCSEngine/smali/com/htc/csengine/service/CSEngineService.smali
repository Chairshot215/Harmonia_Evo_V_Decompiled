.class public Lcom/htc/csengine/service/CSEngineService;
.super Landroid/app/Service;
.source "CSEngineService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/csengine/service/CSEngineService$1;,
        Lcom/htc/csengine/service/CSEngineService$GetDeviceModelRunnable;,
        Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;,
        Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;,
        Lcom/htc/csengine/service/CSEngineService$PutDeviceProfileRunnable;,
        Lcom/htc/csengine/service/CSEngineService$WorkerHandler;
    }
.end annotation


# static fields
.field public static final ACTION_END_CSENGINE_SERVICE:Ljava/lang/String; = "com.htc.csengine.csEngineService.end"

.field public static final ACTION_FORCESTART_CSENGINE_SERVICE:Ljava/lang/String; = "com.htc.csengine.csEngineService.forcestart"

.field public static final ACTION_GET_DEVICE_CONFIG:Ljava/lang/String; = "com.htc.csengine.getConfig"

.field public static final ACTION_START_CSENGINE_SERVICE:Ljava/lang/String; = "com.htc.csengine.csEngineService.start"

.field public static final ACTION_UPDATE_MYHTC_URL:Ljava/lang/String; = "com.htc.cs.connectedservice.updateURL"

.field private static final TAG:Ljava/lang/String; = "csEngineService"

.field public static final baseURL:Ljava/lang/String; = "https://dm.htcsense.com/"


# instance fields
.field private getDeviceConfigOnly:Z

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private ttlTimeout:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/csengine/service/CSEngineService;->ttlTimeout:Landroid/app/PendingIntent;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/csengine/service/CSEngineService;->getDeviceConfigOnly:Z

    .line 378
    return-void
.end method

.method static synthetic access$400(Lcom/htc/csengine/service/CSEngineService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/csengine/service/CSEngineService;->setTTLAlarm()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/csengine/service/CSEngineService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/csengine/service/CSEngineService;->getDeviceConfigOnly:Z

    return v0
.end method

.method private cancelTTLAlarm()V
    .locals 2

    .prologue
    .line 412
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/htc/csengine/service/CSEngineService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 413
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/htc/csengine/service/CSEngineService;->ttlTimeout:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/htc/csengine/service/CSEngineService;->ttlTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 416
    :cond_0
    return-void
.end method

.method private finalizeWorker()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v1, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerThread:Landroid/os/HandlerThread;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/HandlerThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    iput-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerThread:Landroid/os/HandlerThread;

    .line 147
    iput-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    .line 148
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "cslib"

    const-string v2, "csEngineService unable to join worker withing 3000ms"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setTTLAlarm()V
    .locals 8

    .prologue
    .line 391
    invoke-static {p0}, Lcom/htc/cslib/util/CSDatabaseUtil;->getTTL(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v2

    .line 393
    .local v2, ttl:Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 394
    :cond_0
    const-string v3, "cslib"

    const-string v4, "csEngineService Invalid ttl "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_0
    return-void

    .line 397
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.csengine.getConfig"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v1, intentTTL:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/csengine/service/CSEngineService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/csengine/service/CSEngineService;->ttlTimeout:Landroid/app/PendingIntent;

    .line 400
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/htc/csengine/service/CSEngineService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 401
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/htc/csengine/service/CSEngineService;->ttlTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setupWorker()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CSEngineServiceWorker "

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerThread:Landroid/os/HandlerThread;

    .line 135
    iget-object v0, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    new-instance v0, Lcom/htc/csengine/service/CSEngineService$WorkerHandler;

    iget-object v1, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/csengine/service/CSEngineService$WorkerHandler;-><init>(Lcom/htc/csengine/service/CSEngineService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    .line 137
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "cslib"

    const-string v1, "csEngineService OnCreate(): begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 64
    invoke-direct {p0}, Lcom/htc/csengine/service/CSEngineService;->setupWorker()V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 129
    invoke-direct {p0}, Lcom/htc/csengine/service/CSEngineService;->finalizeWorker()V

    .line 130
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/16 v9, 0x3ec

    const/16 v8, 0x3e8

    const/16 v7, 0x3ea

    const/4 v6, 0x1

    .line 71
    const-string v4, "cslib"

    const-string v5, "csEngineService onStartCommand(): Begin "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, action:Ljava/lang/String;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/csengine/service/CSEngineService;->getDeviceConfigOnly:Z

    .line 75
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v6

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v4, "com.htc.csengine.csEngineService.start"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    invoke-static {p0}, Lcom/htc/csengine/util/CSEnginePreference;->getDeviceProfileFlag(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 83
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 84
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 88
    .local v2, msg1:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 91
    .local v3, msg2:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 94
    .end local v2           #msg1:Landroid/os/Message;
    .end local v3           #msg2:Landroid/os/Message;
    :cond_3
    const-string v4, "com.htc.csengine.csEngineService.forcestart"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 96
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 97
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 100
    .restart local v2       #msg1:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 103
    .restart local v3       #msg2:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 105
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #msg1:Landroid/os/Message;
    .end local v3           #msg2:Landroid/os/Message;
    :cond_4
    const-string v4, "com.htc.csengine.csEngineService.end"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    invoke-virtual {p0}, Lcom/htc/csengine/service/CSEngineService;->stopSelf()V

    goto :goto_0

    .line 108
    :cond_5
    const-string v4, "com.htc.csengine.getConfig"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    iput-boolean v6, p0, Lcom/htc/csengine/service/CSEngineService;->getDeviceConfigOnly:Z

    .line 111
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 112
    .restart local v2       #msg1:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/csengine/service/CSEngineService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
