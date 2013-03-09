.class public Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;
.super Lcom/google/android/apps/uploader/googlemobile/common/task/Task;


# static fields
.field public static final REPEAT_FOREVER:I = -0x1

.field public static final UNSET_VALUE:J = -0x1L


# instance fields
.field private count:I

.field private deadline:J

.field private delay:J

.field private isFixedRate:Z

.field private period:J

.field private scheduled:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Ljava/lang/Runnable;)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->delay:J

    iput-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->deadline:J

    iput-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->period:J

    iput-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->isFixedRate:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelInternal()I
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->runner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->cancelTaskInternal(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I
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

.method public declared-synchronized getRepeatCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScheduledTime()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected runInternal()V
    .locals 6

    const-wide/16 v4, -0x1

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->period:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;->runInternal()V

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->runner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->scheduleTask(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    :cond_2
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->isFixedRate:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    iget-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->period:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getClock()Lcom/google/android/apps/uploader/googlemobile/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->period:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public declared-synchronized schedule()V
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->deadline:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getClock()Lcom/google/android/apps/uploader/googlemobile/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->delay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->runner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->scheduleTask(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->deadline:J

    iget-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->delay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected scheduleInternal()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->runner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->scheduleTimerTaskInternal(Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;)V

    return-void
.end method

.method public declared-synchronized setDeadline(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->deadline:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    iput-wide p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->delay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPeriod(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->period:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRepeatCount(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRepeatFixedRate(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->isFixedRate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
