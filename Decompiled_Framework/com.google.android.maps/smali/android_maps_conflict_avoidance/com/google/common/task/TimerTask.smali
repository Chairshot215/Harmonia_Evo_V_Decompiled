.class public Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;
.super Landroid_maps_conflict_avoidance/com/google/common/task/Task;
.source "TimerTask.java"


# instance fields
.field private count:I

.field private deadline:J

.field private delay:J

.field private isFixedRate:Z

.field private period:J

.field private scheduled:J


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->delay:J

    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->deadline:J

    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->period:J

    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    const/4 v0, -0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->isFixedRate:Z

    return-void
.end method


# virtual methods
.method declared-synchronized cancelInternal()I
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->cancelTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScheduledTime()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUnscheduled()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method runInternal()V
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->period:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->runInternal()V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->scheduleTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    :cond_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :try_start_2
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->isFixedRate:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->period:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->period:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public schedule()V
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->deadline:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->delay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->scheduleTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)V

    return-void

    :cond_2
    :try_start_1
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->deadline:J

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->delay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized scheduleInternal()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->scheduleTimerTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDelay(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->delay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
