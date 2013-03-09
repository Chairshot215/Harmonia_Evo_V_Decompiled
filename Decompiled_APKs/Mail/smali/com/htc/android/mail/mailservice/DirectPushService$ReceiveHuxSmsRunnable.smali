.class Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;
.super Ljava/lang/Object;
.source "DirectPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiveHuxSmsRunnable"
.end annotation


# instance fields
.field private mAccountId:J

.field private mContext:Landroid/content/Context;

.field private mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

.field private mStartId:I

.field private mWeakDirectPushService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/mailservice/DirectPushService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;J)V
    .locals 2
    .parameter "startId"
    .parameter "directPushService"
    .parameter "directPushFsmStore"
    .parameter "accountId"

    .prologue
    .line 480
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 477
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mStartId:I

    .line 478
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mAccountId:J

    .line 481
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    .line 482
    invoke-virtual {p2}, Lcom/htc/android/mail/mailservice/DirectPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mContext:Landroid/content/Context;

    .line 483
    iput-object p3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    .line 484
    iput p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mStartId:I

    .line 485
    iput-wide p4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mAccountId:J

    .line 486
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 489
    const/4 v4, 0x0

    .line 491
    .local v4, wakelock:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mContext:Landroid/content/Context;

    const-string v6, "ReceiveHuxSmsRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v5, v6}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 493
    iget-object v5, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    invoke-virtual {v5}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 494
    iget-object v5, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/mailservice/DirectPushService;

    .line 495
    .local v2, service:Lcom/htc/android/mail/mailservice/DirectPushService;
    if-eqz v2, :cond_0

    .line 496
    new-instance v5, Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    #setter for: Lcom/htc/android/mail/mailservice/DirectPushService;->mConnectivityChangedBroadcastReceiver:Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;
    invoke-static {v2, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$402(Lcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;)Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;

    .line 497
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 498
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    iget-object v5, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mContext:Landroid/content/Context;

    #getter for: Lcom/htc/android/mail/mailservice/DirectPushService;->mConnectivityChangedBroadcastReceiver:Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$400(Lcom/htc/android/mail/mailservice/DirectPushService;)Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 502
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v2           #service:Lcom/htc/android/mail/mailservice/DirectPushService;
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    iget-object v6, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;->mAccountId:J

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->getFsm(Landroid/content/Context;J)Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;

    move-result-object v1

    .line 503
    .local v1, fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    invoke-virtual {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getCurrentState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v3

    .line 504
    .local v3, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {v3, v1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->onReceiveHuxSms(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    const-string v5, "ReceiveHuxSmsRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 508
    return-void

    .line 506
    .end local v1           #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .end local v3           #state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    :catchall_0
    move-exception v5

    const-string v6, "ReceiveHuxSmsRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    throw v5
.end method
