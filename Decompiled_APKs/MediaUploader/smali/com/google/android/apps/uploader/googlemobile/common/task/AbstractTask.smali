.class public abstract Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;
.super Ljava/lang/Object;


# static fields
.field private static final EMPTY_TASK_ARRAY:[Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask; = null

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PENDING:I = 0x4

.field public static final STATE_RUNNABLE:I = 0x2

.field public static final STATE_RUNNING:I = 0x3

.field public static final STATE_SLEEPING:I = 0x1


# instance fields
.field protected runnable:Ljava/lang/Runnable;

.field protected runner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

.field private state:I

.field protected tasks:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->EMPTY_TASK_ARRAY:[Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->runner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    iput-object p2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public declared-synchronized addTask(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancel()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->runner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->cancelTask(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)I

    move-result v0

    return v0
.end method

.method protected abstract cancelInternal()I
.end method

.method protected getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->state:I

    return v0
.end method

.method public getTaskRunner()Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->runner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    return-object v0
.end method

.method protected getTasks()[Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->EMPTY_TASK_ARRAY:[Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeTask(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

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

.method protected run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected runInternal()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->getTasks()[Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->schedule()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public schedule()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->runner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->scheduleTask(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)V

    return-void
.end method

.method protected abstract scheduleInternal()V
.end method

.method protected setState(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->state:I

    return-void
.end method

.method public declared-synchronized wrappedEqualsRunnable(Ljava/lang/Runnable;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

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
