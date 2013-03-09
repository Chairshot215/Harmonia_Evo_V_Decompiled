.class public Lcom/htc/dlnamiddlelayer/RequestExecutor;
.super Ljava/lang/Thread;
.source "RequestExecutor.java"


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

    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->tasks:Ljava/util/Vector;

    .line 11
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->bStop:Z

    .line 13
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->bStart:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public addRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "aRunnable"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public clearRunnableQueue()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 30
    return-void
.end method

.method public getCurrentRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public hasRunnableQueue()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->bStop:Z

    if-nez v1, :cond_3

    .line 44
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->tasks:Ljava/util/Vector;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    .line 47
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 49
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "RequestExecutor run"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    .line 64
    :cond_2
    monitor-enter p0

    .line 67
    :try_start_1
    iget-boolean v1, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->bStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    :cond_3
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    .line 78
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 79
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Request executor exit"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 57
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->tasks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->mCurrentRunnable:Ljava/lang/Runnable;

    throw v1

    .line 68
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 74
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

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, ex:Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->bStop:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method public startThread()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->bStart:Z

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->bStart:Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->bStop:Z

    .line 100
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->start()V

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    monitor-enter p0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 107
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
    .line 84
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->bStop:Z

    if-nez v0, :cond_0

    .line 86
    monitor-enter p0

    .line 88
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/RequestExecutor;->bStop:Z

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 90
    monitor-exit p0

    .line 92
    :cond_0
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
