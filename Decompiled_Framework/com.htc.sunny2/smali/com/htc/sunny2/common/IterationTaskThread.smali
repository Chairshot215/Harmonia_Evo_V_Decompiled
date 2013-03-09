.class public Lcom/htc/sunny2/common/IterationTaskThread;
.super Lcom/htc/sunny2/IterationThread;
.source "IterationTaskThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final TASK_CANCEL:I = 0x4

.field public static final TASK_END:I = 0x3

.field public static final TASK_ITERATE:I = 0x2

.field public static final TASK_RESET:I = 0x5

.field public static final TASK_SETUP:I = 0x1

.field public static final TASK_UNSET:I


# instance fields
.field private final lock:Ljava/lang/Object;

.field private mStatus:I

.field private mStop:Z

.field private mTask:Lcom/htc/sunny2/common/IterationTask;

.field private mTaskList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/sunny2/common/IterationTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/IterationTaskThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/IterationThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    iput-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    iput v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->lock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStop:Z

    return-void
.end method


# virtual methods
.method public addTask(Lcom/htc/sunny2/common/IterationTask;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelAllTask()V
    .locals 6

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/sunny2/common/IterationTaskThread;->TAG:Ljava/lang/String;

    const-string v4, "[IterationTaskThread][cancelAllTask]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/common/IterationTask;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/htc/sunny2/common/IterationTaskThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IterationTaskThread][cancel] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTask;->onCancel()V

    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTask;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    iput-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public cancelTask(Lcom/htc/sunny2/common/IterationTask;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iterate()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/common/IterationTask;

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    iput-object v4, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    :cond_3
    iget v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->onTaskSetup()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->onTaskIterate()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->onTaskEnd()V

    iput v3, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/htc/sunny2/common/IterationTaskThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IterationTaskThread][iterate] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->onTaskCancel()V

    iput v3, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onThreadBegin()Z
    .locals 2

    sget-object v0, Lcom/htc/sunny2/common/IterationTaskThread;->TAG:Ljava/lang/String;

    const-string v1, "[IterationTaskThread][onTreadBegin]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/htc/sunny2/common/IterationTaskThread;->TAG:Ljava/lang/String;

    const-string v1, "[IterationTaskThread][onTreadBegin]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onThreadEnd()V
    .locals 6

    const/4 v5, 0x0

    sget-object v2, Lcom/htc/sunny2/common/IterationTaskThread;->TAG:Ljava/lang/String;

    const-string v3, "[IterationTaskThread][onTreadEnd]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTask;->onCancel()V

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTask;->release()V

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/common/IterationTask;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/htc/sunny2/common/IterationTaskThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IterationTaskThread][cancel] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTask;->onCancel()V

    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTask;->release()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    sget-object v2, Lcom/htc/sunny2/common/IterationTaskThread;->TAG:Ljava/lang/String;

    const-string v3, "[IterationTaskThread][onTreadEnd]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/htc/sunny2/common/IterationTaskThread;->TAG:Ljava/lang/String;

    const-string v1, "[IterationTaskThread][release]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/IterationTaskThread;->endThread()V

    return-void
.end method
