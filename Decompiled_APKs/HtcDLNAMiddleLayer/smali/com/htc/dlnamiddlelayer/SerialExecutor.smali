.class public Lcom/htc/dlnamiddlelayer/SerialExecutor;
.super Ljava/lang/Thread;
.source "SerialExecutor.java"


# instance fields
.field private bStart:Z

.field private bStop:Z

.field private mCurrentRunnable:Ljava/lang/Runnable;

.field final tasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->tasks:Ljava/util/Vector;

    .line 10
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->bStop:Z

    .line 12
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->bStart:Z

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public addRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "aRunnable"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public getCurrentRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->bStop:Z

    if-nez v1, :cond_3

    .line 30
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 32
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->tasks:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    .line 45
    :cond_2
    monitor-enter p0

    .line 48
    :try_start_1
    iget-boolean v1, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->bStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    :cond_3
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    .line 59
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 60
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Serial executor exit"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 39
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    throw v1

    .line 49
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 55
    :goto_1
    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, ex:Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->bStop:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method public startThread()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->bStart:Z

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->bStart:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->bStop:Z

    .line 82
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/SerialExecutor;->start()V

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    monitor-enter p0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 89
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->bStop:Z

    if-nez v0, :cond_0

    .line 68
    monitor-enter p0

    .line 70
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/SerialExecutor;->bStop:Z

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 72
    monitor-exit p0

    .line 74
    :cond_0
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
