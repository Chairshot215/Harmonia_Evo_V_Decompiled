.class public Lcom/htc/sunny2/IterationThread;
.super Ljava/lang/Thread;
.source "IterationThread.java"


# instance fields
.field private hasResumeRequest:Z

.field private hasThreadBegun:Z

.field private hasThreadEnded:Z

.field private isOnPauseMode:Z

.field private final modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private name:Ljava/lang/String;

.field private needEnd:Z

.field protected needPause:Z

.field private resumeRequestBeginTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "ITERATION_THREAD"

    iput-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->hasThreadBegun:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->hasThreadEnded:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->isOnPauseMode:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->needPause:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->needEnd:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->hasResumeRequest:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/IterationThread;->resumeRequestBeginTime:J

    iput-object p1, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public beginThread()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v1, "beginThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->start()V

    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v1, "Wait for thread begin. +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v0, p0, Lcom/htc/sunny2/IterationThread;->hasThreadBegun:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v1, "Wait for thread begin. -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endThread()V
    .locals 6

    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "endThread +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->pauseThread()V

    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Wait for thread enter WAITING mode. +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Wait for thread enter WAITING mode. -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Send end thread request."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/sunny2/IterationThread;->needEnd:Z

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/htc/sunny2/IterationThread;->hasThreadEnded:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Wait for thread end. +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunny2/IterationThread;->hasThreadEnded:Z

    if-nez v2, :cond_3

    const-wide/16 v2, 0xa

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Re-notify thread in endThread()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Wait for thread end. -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "endThread -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public iterate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onThreadBegin()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onThreadEnd()V
    .locals 0

    return-void
.end method

.method public pauseThread()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/IterationThread;->pauseThread(I)V

    return-void
.end method

.method public pauseThread(I)V
    .locals 8

    iget-boolean v4, p0, Lcom/htc/sunny2/IterationThread;->hasResumeRequest:Z

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/htc/sunny2/IterationThread;->hasResumeRequest:Z

    if-eqz v4, :cond_1

    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v6, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/IterationThread;->needPause:Z

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-lez p1, :cond_4

    int-to-long v4, p1

    add-long/2addr v0, v4

    :cond_4
    iget-boolean v4, p0, Lcom/htc/sunny2/IterationThread;->isOnPauseMode:Z

    if-nez v4, :cond_5

    const-wide/16 v4, 0xa

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    if-lez p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_4

    :cond_5
    iget-boolean v4, p0, Lcom/htc/sunny2/IterationThread;->isOnPauseMode:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/IterationThread;->needPause:Z

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public requestPauseThread_CallInThread()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/IterationThread;->needPause:Z

    return-void
.end method

.method public resumeThread()V
    .locals 7

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->needPause:Z

    iget-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->hasResumeRequest:Z

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/sunny2/IterationThread;->resumeRequestBeginTime:J

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v2, "Resume time over time limit, request re-resume thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->hasResumeRequest:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/sunny2/IterationThread;->resumeRequestBeginTime:J

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->hasResumeRequest:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->isOnPauseMode:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v1, v2, :cond_4

    :goto_1
    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v1, v2, :cond_4

    const-wide/16 v1, 0x3

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

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
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/htc/sunny2/IterationThread;->hasThreadBegun:Z

    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run begin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->onThreadBegin()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v2, "run end due to cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/htc/sunny2/IterationThread;->hasThreadEnded:Z

    :goto_0
    return-void

    :cond_0
    :goto_1
    iput-boolean v4, p0, Lcom/htc/sunny2/IterationThread;->hasResumeRequest:Z

    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->iterate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->needPause:Z

    if-eqz v1, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->hasResumeRequest:Z

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/htc/sunny2/IterationThread;->isOnPauseMode:Z

    iput-boolean v4, p0, Lcom/htc/sunny2/IterationThread;->needPause:Z

    :goto_2
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->isOnPauseMode:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/htc/sunny2/IterationThread;->needPause:Z

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    iget-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->needEnd:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->onThreadEnd()V

    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/htc/sunny2/IterationThread;->hasThreadEnded:Z

    goto :goto_0

    :cond_2
    iput-boolean v5, p0, Lcom/htc/sunny2/IterationThread;->isOnPauseMode:Z

    goto :goto_2

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

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_3
    iput-boolean v4, p0, Lcom/htc/sunny2/IterationThread;->isOnPauseMode:Z

    goto :goto_1
.end method
