.class public Lcom/htc/album/addons/photoenhancer/TaskThread;
.super Ljava/lang/Thread;
.source "TaskThread.java"


# instance fields
.field private hasResumeRequest:Z

.field private modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private name:Ljava/lang/String;

.field private needEnd:Z

.field protected needPause:Z

.field private onPauseMode:Z

.field private threadBegin:Z

.field private threadEnd:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "threadName"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9
    const-string v0, "TASK_THREAD"

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    iput-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->threadBegin:Z

    .line 14
    iput-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->threadEnd:Z

    .line 15
    iput-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->onPauseMode:Z

    .line 18
    iput-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->needPause:Z

    .line 19
    iput-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->needEnd:Z

    .line 22
    iput-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->hasResumeRequest:Z

    .line 26
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 27
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TaskThread;->start()V

    .line 31
    return-void
.end method


# virtual methods
.method public endThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v1, "endThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TaskThread;->pauseThread()V

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TaskThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v1, "wait for Thread.State.WAITING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->needEnd:Z

    .line 47
    monitor-enter p0

    .line 48
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 49
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_1
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->threadEnd:Z

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v1, "wait for thread end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-wide/16 v0, 0xa

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 56
    :catch_1
    move-exception v0

    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 60
    :cond_1
    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 61
    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public pauseThread()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v1, "pauseThread request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->hasResumeRequest:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v1, "wait for hasResumeRequest false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->needPause:Z

    .line 85
    :goto_1
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->onPauseMode:Z

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v1, "wait for pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-wide/16 v0, 0xa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 90
    :catch_1
    move-exception v0

    goto :goto_1

    .line 94
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->needPause:Z

    .line 95
    return-void
.end method

.method public resumeThread()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v2, "resumeThread request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->hasResumeRequest:Z

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v2, "already has request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->hasResumeRequest:Z

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, needNotify:Z
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 111
    iget-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->hasResumeRequest:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->onPauseMode:Z

    if-eqz v1, :cond_2

    .line 112
    const/4 v0, 0x1

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    if-eqz v0, :cond_0

    .line 118
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TaskThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v1, v2, :cond_3

    .line 119
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v2, "wait for Thread.State.WAITING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-wide/16 v1, 0x3

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 123
    :catch_0
    move-exception v1

    goto :goto_1

    .line 126
    :cond_3
    monitor-enter p0

    .line 127
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 128
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 134
    iput-boolean v3, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->threadBegin:Z

    .line 135
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v2, "run begin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->hasResumeRequest:Z

    .line 139
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TaskThread;->taskFunction()Z

    move-result v0

    .line 141
    .local v0, continueToRunTaskFunction:Z
    iget-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->needPause:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 146
    iget-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->hasResumeRequest:Z

    if-eqz v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 151
    :cond_2
    iput-boolean v3, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->onPauseMode:Z

    .line 152
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v2, "pause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 157
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 159
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :goto_1
    iget-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->needEnd:Z

    if-eqz v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v2, "run end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iput-boolean v3, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->threadEnd:Z

    .line 174
    return-void

    .line 159
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 160
    :catch_0
    move-exception v1

    goto :goto_1

    .line 167
    :cond_3
    iput-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->onPauseMode:Z

    .line 168
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public taskFunction()Z
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->name:Ljava/lang/String;

    const-string v1, "default taskFunction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    return v0
.end method
