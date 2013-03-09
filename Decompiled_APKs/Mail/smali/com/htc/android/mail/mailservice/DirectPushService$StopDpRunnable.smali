.class Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;
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
    name = "StopDpRunnable"
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
    .line 280
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mContext:Landroid/content/Context;

    .line 277
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mStartId:I

    .line 278
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mAccountId:J

    .line 281
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    .line 282
    invoke-virtual {p2}, Lcom/htc/android/mail/mailservice/DirectPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mContext:Landroid/content/Context;

    .line 283
    iput-object p3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    .line 284
    iput p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mStartId:I

    .line 285
    iput-wide p4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mAccountId:J

    .line 286
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 289
    const/4 v3, 0x0

    .line 291
    .local v3, wakelock:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mContext:Landroid/content/Context;

    const-string v5, "StopDpRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v4, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 293
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "DirectPushService"

    const-string v5, "StopDpRunnable"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    iget-object v5, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mAccountId:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->getFsm(Landroid/content/Context;J)Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;

    move-result-object v0

    .line 295
    .local v0, fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getCurrentState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v2

    .line 296
    .local v2, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {v2, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->onStopDp(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 298
    iget-object v4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    invoke-virtual {v4}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->isStopped()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 299
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "DirectPushService"

    const-string v5, "store is empty, stop service"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/mailservice/DirectPushService;

    .line 301
    .local v1, service:Lcom/htc/android/mail/mailservice/DirectPushService;
    if-eqz v1, :cond_3

    .line 302
    #getter for: Lcom/htc/android/mail/mailservice/DirectPushService;->mConnectivityChangedBroadcastReceiver:Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$400(Lcom/htc/android/mail/mailservice/DirectPushService;)Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 303
    iget-object v4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mContext:Landroid/content/Context;

    #getter for: Lcom/htc/android/mail/mailservice/DirectPushService;->mConnectivityChangedBroadcastReceiver:Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$400(Lcom/htc/android/mail/mailservice/DirectPushService;)Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    const/4 v4, 0x0

    #setter for: Lcom/htc/android/mail/mailservice/DirectPushService;->mConnectivityChangedBroadcastReceiver:Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;
    invoke-static {v1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$402(Lcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;)Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;

    .line 306
    :cond_2
    iget v4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;->mStartId:I

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->stopSelf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .end local v1           #service:Lcom/htc/android/mail/mailservice/DirectPushService;
    :cond_3
    :goto_0
    const-string v4, "StopDpRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 314
    return-void

    .line 309
    :cond_4
    :try_start_1
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "DirectPushService"

    const-string v5, "store is not empty"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    .end local v0           #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .end local v2           #state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    :catchall_0
    move-exception v4

    const-string v5, "StopDpRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    throw v4
.end method
