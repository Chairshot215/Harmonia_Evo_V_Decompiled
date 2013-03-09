.class public Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;
.super Ljava/lang/Object;
.source "TaskRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field private defaultPriority:I

.field protected factory:Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;

.field private maxPriority:I

.field private minPriority:I

.field protected mutex:Ljava/lang/Object;

.field protected name:Ljava/lang/String;

.field protected priorityTaskQueue:Ljava/util/Vector;

.field protected running:Z

.field private final runningTaskMap:Ljava/util/Hashtable;

.field private final taskMap:Ljava/util/Hashtable;

.field protected timerTaskQueue:Ljava/util/Vector;

.field protected workers:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;)V
    .locals 2

    const-string v0, "TaskRunner"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;-><init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    const/16 v0, 0x7f

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->defaultPriority:I

    const/16 v0, 0xff

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->maxPriority:I

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->minPriority:I

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->running:Z

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->factory:Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;

    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->name:Ljava/lang/String;

    new-array v0, p3, [Ljava/lang/Thread;

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->taskMap:Ljava/util/Hashtable;

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->runningTaskMap:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public cancelTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)I
    .locals 2

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->cancelInternal()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method cancelTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->setState(I)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->setState(I)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->setState(I)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method getDefaultPriority()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->defaultPriority:I

    return v0
.end method

.method protected getNextTaskToRun()Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v4

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4, v8}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p0, v3}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->schedulePriorityTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/Task;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/common/task/Task;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setState(I)V

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4, v8}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_1
    return-object v2
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->getState()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setState(I)V

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->scheduleInternal()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->waitForSomethingToDo()Z

    move-result v2

    if-nez v2, :cond_4

    monitor-exit v3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->getState()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setState(I)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->getNextTaskToRun()Landroid_maps_conflict_avoidance/com/google/common/task/Task;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->updateStartTimestamp()V

    :try_start_2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->runInternal()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->updateFinishTimestamp()V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runtime exception thrown by task ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid_maps_conflict_avoidance/com/google/debug/Log;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method schedulePriorityTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/Task;)V
    .locals 6

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->getPriority()I

    move-result v2

    const/4 v0, 0x0

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_1

    add-int v4, v0, v3

    div-int/lit8 v1, v4, 0x2

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid_maps_conflict_avoidance/com/google/common/task/Task;

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->getPriority()I

    move-result v4

    if-gt v2, v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->updateRunnableTimestamp()V

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setState(I)V

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method scheduleTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)V
    .locals 2

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->updateScheduleTimestamp()V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit v1

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->scheduleInternal()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_2
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method scheduleTimerTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;)V
    .locals 9

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v2

    const/4 v0, 0x0

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    :goto_0
    if-ge v0, v4, :cond_1

    add-int v5, v0, v4

    div-int/lit8 v1, v5, 0x2

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v7

    cmp-long v5, v2, v7

    if-ltz v5, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v5, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->setState(I)V

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method protected waitForSomethingToDo()Z
    .locals 7

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->running:Z

    return v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v3

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v5}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method
