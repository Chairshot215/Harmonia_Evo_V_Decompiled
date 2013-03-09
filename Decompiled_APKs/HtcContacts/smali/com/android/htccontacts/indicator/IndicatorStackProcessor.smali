.class public Lcom/android/htccontacts/indicator/IndicatorStackProcessor;
.super Lcom/android/htccontacts/indicator/IndicatorProcessor;
.source "IndicatorStackProcessor.java"


# instance fields
.field protected mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/htccontacts/indicator/IndicatorRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->mStack:Ljava/util/Stack;

    .line 31
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->startProcess()V

    .line 32
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->start()V

    .line 33
    return-void
.end method


# virtual methods
.method public declared-synchronized addRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->setProcessor(Lcom/android/htccontacts/indicator/IndicatorProcessor;)V

    .line 47
    iget-object v1, p0, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->mStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->mStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->mStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/indicator/IndicatorRequest;

    .line 51
    .local v0, r:Lcom/android/htccontacts/indicator/IndicatorRequest;
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 46
    .end local v0           #r:Lcom/android/htccontacts/indicator/IndicatorRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clearQueue()V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroyProcess()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->destroyProcess()V

    .line 38
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 39
    return-void
.end method

.method protected declared-synchronized getRequest()Lcom/android/htccontacts/indicator/IndicatorRequest;
    .locals 3

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 70
    :goto_0
    monitor-exit p0

    return-object v1

    .line 64
    :cond_0
    const/4 v1, 0x0

    .line 66
    .local v1, req:Lcom/android/htccontacts/indicator/IndicatorRequest;
    :try_start_1
    iget-object v2, p0, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/htccontacts/indicator/IndicatorRequest;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 59
    .end local v1           #req:Lcom/android/htccontacts/indicator/IndicatorRequest;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 68
    .restart local v1       #req:Lcom/android/htccontacts/indicator/IndicatorRequest;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public declared-synchronized isInQueue(Lcom/android/htccontacts/indicator/IndicatorRequest;)Z
    .locals 1
    .parameter "request"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, request:Lcom/android/htccontacts/indicator/IndicatorRequest;
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 77
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isRunning:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isDestroy:Z

    if-nez v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->getRequest()Lcom/android/htccontacts/indicator/IndicatorRequest;

    move-result-object v0

    .line 79
    if-nez v0, :cond_2

    .line 86
    :cond_1
    iget-boolean v1, p0, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isDestroy:Z

    if-eqz v1, :cond_3

    .line 97
    return-void

    .line 82
    :cond_2
    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->shouldQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->query()V

    goto :goto_0

    .line 89
    :cond_3
    monitor-enter p0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 92
    :catch_0
    move-exception v1

    goto :goto_1
.end method
