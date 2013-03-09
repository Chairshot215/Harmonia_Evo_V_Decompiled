.class abstract Lcom/google/android/gsf/login/CancelableCallbackThread;
.super Ljava/lang/Thread;
.source "BackendStub.java"


# instance fields
.field protected mCallbackMessage:Landroid/os/Message;

.field protected mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Landroid/os/Message;)V
    .locals 2
    .parameter "callbackMessage"

    .prologue
    .line 603
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 596
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 604
    iget-object v0, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 605
    iput-object p1, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mCallbackMessage:Landroid/os/Message;

    .line 606
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 634
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    monitor-exit p0

    return-void

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 612
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CancelableCallbackThread;->runInBackground()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_0
    monitor-enter p0

    .line 617
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mCallbackMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 624
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "GLSActivity"

    const-string v2, "Error in GLS BackendStub "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 622
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mCallbackMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    goto :goto_1

    .line 624
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected abstract runInBackground()V
.end method
