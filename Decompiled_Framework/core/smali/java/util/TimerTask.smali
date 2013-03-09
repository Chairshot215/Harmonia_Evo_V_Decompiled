.class public abstract Ljava/util/TimerTask;
.super Ljava/lang/Object;
.source "TimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field cancelled:Z

.field fixedRate:Z

.field final lock:Ljava/lang/Object;

.field period:J

.field private scheduledTime:J

.field when:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 7

    const/4 v0, 0x1

    iget-object v2, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Ljava/util/TimerTask;->cancelled:Z

    if-nez v1, :cond_0

    iget-wide v3, p0, Ljava/util/TimerTask;->when:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/TimerTask;->cancelled:Z

    monitor-exit v2

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getWhen()J
    .locals 4

    iget-object v1, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Ljava/util/TimerTask;->when:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isScheduled()Z
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v1, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Ljava/util/TimerTask;->when:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-wide v2, p0, Ljava/util/TimerTask;->scheduledTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract run()V
.end method

.method public scheduledExecutionTime()J
    .locals 4

    iget-object v1, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Ljava/util/TimerTask;->scheduledTime:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setScheduledTime(J)V
    .locals 2

    iget-object v1, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Ljava/util/TimerTask;->scheduledTime:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
