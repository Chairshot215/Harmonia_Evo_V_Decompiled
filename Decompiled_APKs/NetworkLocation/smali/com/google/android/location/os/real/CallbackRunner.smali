.class Lcom/google/android/location/os/real/CallbackRunner;
.super Ljava/lang/Object;
.source "CallbackRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/os/real/CallbackRunner$1;,
        Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;,
        Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;,
        Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;,
        Lcom/google/android/location/os/real/CallbackRunner$MyHandler;
    }
.end annotation


# instance fields
.field private final alarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private broadcastReceiver:Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;

.field private callbacks:Lcom/google/android/location/os/Callbacks;

.field private final context:Landroid/content/Context;

.field private final eventLog:Lcom/google/android/location/os/EventLog;

.field private gpsOn:Z

.field private handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private final phoneStateListener:Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;

.field private quitCalled:Z

.field private final runnable:Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;

.field private final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/location/os/EventLog;)V
    .locals 6
    .parameter "context"
    .parameter "eventLog"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner;->lock:Ljava/lang/Object;

    .line 75
    iput-boolean v2, p0, Lcom/google/android/location/os/real/CallbackRunner;->quitCalled:Z

    .line 80
    iput-boolean v2, p0, Lcom/google/android/location/os/real/CallbackRunner;->gpsOn:Z

    .line 345
    iput-object p1, p0, Lcom/google/android/location/os/real/CallbackRunner;->context:Landroid/content/Context;

    .line 346
    iput-object p2, p0, Lcom/google/android/location/os/real/CallbackRunner;->eventLog:Lcom/google/android/location/os/EventLog;

    .line 347
    new-instance v1, Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;

    invoke-direct {v1, p0, v4}, Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;-><init>(Lcom/google/android/location/os/real/CallbackRunner;Lcom/google/android/location/os/real/CallbackRunner$1;)V

    iput-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner;->phoneStateListener:Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;

    .line 348
    new-instance v1, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;

    invoke-direct {v1, p0, v4}, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;-><init>(Lcom/google/android/location/os/real/CallbackRunner;Lcom/google/android/location/os/real/CallbackRunner$1;)V

    iput-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner;->runnable:Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;

    .line 349
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/google/android/location/os/real/CallbackRunner;->runnable:Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;

    const-string v3, "NetworkLocationCallbackRunner"

    invoke-direct {v1, v4, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner;->thread:Ljava/lang/Thread;

    .line 351
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 352
    .local v0, powerManager:Landroid/os/PowerManager;
    const-string v1, "NetworkLocationCallbackRunner"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner;->alarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 356
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner;->alarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->phoneStateListener:Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/location/os/real/CallbackRunner;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/location/os/real/CallbackRunner;->handler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/location/os/real/CallbackRunner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->quitCalled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->broadcastReceiver:Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/android/location/os/real/CallbackRunner;Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;)Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/location/os/real/CallbackRunner;->broadcastReceiver:Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/EventLog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->eventLog:Lcom/google/android/location/os/EventLog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->alarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/location/os/real/CallbackRunner;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/os/real/CallbackRunner;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/location/os/real/CallbackRunner;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/os/real/CallbackRunner;->sendMessage(III)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/location/os/real/CallbackRunner;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/CallbackRunner;->sendMessage(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/android/location/os/real/CallbackRunner;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/location/os/real/CallbackRunner;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private static isAirplaneModeEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 442
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private sendMessage(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 451
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 452
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->quitCalled:Z

    if-eqz v0, :cond_0

    .line 453
    monitor-exit v1

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->handler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 456
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendMessage(III)V
    .locals 2
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 460
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->quitCalled:Z

    if-eqz v0, :cond_0

    .line 462
    monitor-exit v1

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->handler:Landroid/os/Handler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 465
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "obj"

    .prologue
    .line 469
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->quitCalled:Z

    if-eqz v0, :cond_0

    .line 471
    monitor-exit v1

    .line 475
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->handler:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 474
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cellRequestScan()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/location/os/real/CallbackRunner;->sendMessage(III)V

    .line 429
    return-void
.end method

.method public glsQueryResponse(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 437
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/os/real/CallbackRunner;->sendMessage(ILjava/lang/Object;)V

    .line 438
    return-void
.end method

.method public join()V
    .locals 1

    .prologue
    .line 413
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->alarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->alarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 422
    :cond_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public quit()V
    .locals 3

    .prologue
    .line 394
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 395
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->quitCalled:Z

    if-eqz v0, :cond_0

    .line 396
    monitor-exit v1

    .line 405
    :goto_0
    return-void

    .line 398
    :cond_0
    const-string v0, "NetworkLocationCallbackRunner"

    const-string v2, "quit"

    invoke-static {v0, v2}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->quitCalled:Z

    .line 400
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->broadcastReceiver:Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/os/real/CallbackRunner;->broadcastReceiver:Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 404
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPeriod(IZ)V
    .locals 2
    .parameter "periodSecs"
    .parameter "trigger"

    .prologue
    .line 386
    const/4 v1, 0x3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/location/os/real/CallbackRunner;->sendMessage(III)V

    .line 387
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start(Lcom/google/android/location/os/Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;

    .line 364
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 368
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner;->runnable:Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;

    monitor-enter v1

    .line 369
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->runnable:Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;

    iget-boolean v0, v0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->monitoringEvents:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 371
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner;->runnable:Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    goto :goto_0

    .line 376
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
