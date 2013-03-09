.class public abstract Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
.super Ljava/lang/Object;
.source "AbstractTask.java"


# static fields
.field private static final EMPTY_TASK_ARRAY:[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;


# instance fields
.field private final name:Ljava/lang/String;

.field private runCounter:I

.field private runCounterLock:Ljava/lang/Object;

.field protected runnable:Ljava/lang/Runnable;

.field protected runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

.field private state:I

.field protected tasks:Ljava/util/Vector;

.field private final varzInsideQueue:Ljava/lang/String;

.field private final varzOutsideQueue:Ljava/lang/String;

.field private final varzTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->EMPTY_TASK_ARRAY:[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->varzOutsideQueue:Ljava/lang/String;

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->varzInsideQueue:Ljava/lang/String;

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->varzTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract cancelInternal()I
.end method

.method protected getState()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->state:I

    return v0
.end method

.method protected getTasks()[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->EMPTY_TASK_ARRAY:[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected run()V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method runInternal()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounter:I

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->getTasks()[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->schedule()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_0
    return-void
.end method

.method public schedule()V
    .locals 2

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounter:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->scheduleTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method abstract scheduleInternal()V
.end method

.method protected setState(I)V
    .locals 0

    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->state:I

    return-void
.end method

.method updateFinishTimestamp()V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method updateRunnableTimestamp()V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method updateScheduleTimestamp()V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method updateStartTimestamp()V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
