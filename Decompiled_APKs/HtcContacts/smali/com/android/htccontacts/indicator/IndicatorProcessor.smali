.class public abstract Lcom/android/htccontacts/indicator/IndicatorProcessor;
.super Ljava/lang/Thread;
.source "IndicatorProcessor.java"


# instance fields
.field protected isDestroy:Z

.field protected isRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isDestroy:Z

    .line 30
    return-void
.end method


# virtual methods
.method public abstract addRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V
.end method

.method public abstract clearQueue()V
.end method

.method public destroyProcess()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isDestroy:Z

    .line 47
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->interrupt()V

    .line 48
    return-void
.end method

.method protected abstract getRequest()Lcom/android/htccontacts/indicator/IndicatorRequest;
.end method

.method public abstract isInQueue(Lcom/android/htccontacts/indicator/IndicatorRequest;)Z
.end method

.method public pauseProcess()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isRunning:Z

    .line 43
    return-void
.end method

.method public abstract run()V
.end method

.method public startProcess()V
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isRunning:Z

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isRunning:Z

    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 37
    monitor-exit p0

    .line 39
    :cond_0
    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
