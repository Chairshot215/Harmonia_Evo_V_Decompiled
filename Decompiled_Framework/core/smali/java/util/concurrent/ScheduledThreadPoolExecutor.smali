.class public Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;,
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;
    }
.end annotation


# static fields
.field private static final sequencer:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private volatile continueExistingPeriodicTasksAfterShutdown:Z

.field private volatile executeExistingDelayedTasksAfterShutdown:Z

.field private volatile removeOnCancel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    const v2, 0x7fffffff

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/RejectedExecutionHandler;)V
    .locals 8

    const v2, 0x7fffffff

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 8

    const v2, 0x7fffffff

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 9

    const v2, 0x7fffffff

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    sget-object v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    return v0
.end method

.method private delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->prestartCoreThread()Z

    goto :goto_0
.end method

.method private overflowFree(J)J
    .locals 7

    const-wide/16 v5, 0x0

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;

    if-eqz v0, :cond_0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-gez v3, :cond_0

    sub-long v3, p1, v1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const-wide v3, 0x7fffffffffffffffL

    add-long p1, v3, v1

    :cond_0
    return-wide p1
.end method

.method private triggerTime(JLjava/util/concurrent/TimeUnit;)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method canRunInCurrentRunState(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isRunningOrShutdown(Z)Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    goto :goto_0
.end method

.method protected decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    return-object p2
.end method

.method protected decorateTask(Ljava/util/concurrent/Callable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    return-object p2
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public getContinueExistingPeriodicTasksAfterShutdownPolicy()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    return v0
.end method

.method public getExecuteExistingDelayedTasksAfterShutdownPolicy()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    return v0
.end method

.method public getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method getRemoveOnCancelPolicy()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    return v0
.end method

.method final now()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method onShutdown()V
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getExecuteExistingDelayedTasksAfterShutdownPolicy()Z

    move-result v3

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getContinueExistingPeriodicTasksAfterShutdownPolicy()Z

    move-result v4

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v5, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v0, v2

    instance-of v8, v1, Ljava/util/concurrent/RunnableScheduledFuture;

    if-eqz v8, :cond_0

    check-cast v1, Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-interface {v1, v9}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->tryTerminate()V

    return-void

    :cond_3
    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v5, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v1, v0, v2

    instance-of v8, v1, Ljava/util/concurrent/RunnableScheduledFuture;

    if-eqz v8, :cond_5

    move-object v7, v1

    check-cast v7, Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-interface {v7}, Ljava/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v4, :cond_7

    :cond_4
    :goto_2
    invoke-interface {v6, v7}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7, v9}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_4

    :cond_7
    invoke-interface {v7}, Ljava/util/concurrent/RunnableScheduledFuture;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2
.end method

.method reExecutePeriodic(Ljava/util/concurrent/RunnableScheduledFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->prestartCoreThread()Z

    goto :goto_0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    const/4 v3, 0x0

    invoke-direct {p0, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;J)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v6

    invoke-direct {p0, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    return-object v6
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-direct {v1, p0, p1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/Callable;J)V

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/util/concurrent/Callable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p6, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-gtz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    const/4 v3, 0x0

    invoke-direct {p0, p2, p3, p6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v8

    iput-object v8, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-direct {p0, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    return-object v8
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p6, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-gtz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    const/4 v3, 0x0

    invoke-direct {p0, p2, p3, p6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    neg-long v1, p4

    invoke-virtual {p6, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v8

    iput-object v8, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-direct {p0, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    return-object v8
.end method

.method public setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V
    .locals 1

    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->onShutdown()V

    :cond_0
    return-void
.end method

.method public setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V
    .locals 1

    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->onShutdown()V

    :cond_0
    return-void
.end method

.method setRemoveOnCancelPolicy(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    return-void
.end method

.method public shutdown()V
    .locals 0

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method triggerTime(J)J
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v0

    const-wide v2, 0x3fffffffffffffffL

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    :goto_0
    add-long/2addr v0, p1

    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->overflowFree(J)J

    move-result-wide p1

    goto :goto_0
.end method
