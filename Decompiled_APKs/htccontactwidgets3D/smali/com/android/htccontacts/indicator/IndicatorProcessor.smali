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
    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isDestroy:Z

    .line 32
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
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isDestroy:Z

    .line 49
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->interrupt()V

    .line 50
    return-void
.end method

.method protected abstract getRequest()Lcom/android/htccontacts/indicator/IndicatorRequest;
.end method

.method public abstract isInQueue(Lcom/android/htccontacts/indicator/IndicatorRequest;)Z
.end method

.method public pauseProcess()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isRunning:Z

    .line 45
    return-void
.end method

.method public abstract run()V
.end method

.method public startProcess()V
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isRunning:Z

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isRunning:Z

    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 39
    monitor-exit p0

    .line 41
    :cond_0
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
