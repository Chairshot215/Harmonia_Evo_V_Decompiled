.class public Ljava/util/concurrent/ThreadPoolExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x1fffffff

.field private static final COUNT_BITS:I = 0x1d

.field private static final ONLY_ONE:Z = true

.field private static final RUNNING:I = -0x20000000

.field private static final SHUTDOWN:I = 0x0

.field private static final STOP:I = 0x20000000

.field private static final TERMINATED:I = 0x60000000

.field private static final TIDYING:I = 0x40000000

.field private static final defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static final shutdownPerm:Ljava/lang/RuntimePermission;


# instance fields
.field private volatile allowCoreThreadTimeOut:Z

.field private completedTaskCount:J

.field private volatile corePoolSize:I

.field private final ctl:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile handler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private volatile keepAliveTime:J

.field private largestPoolSize:I

.field private final mainLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile maximumPoolSize:I

.field private final termination:Ljava/util/concurrent/locks/Condition;

.field private volatile threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private final workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final workers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/concurrent/ThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    sget-object v8, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x2000

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    if-lt p2, p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    if-nez p8, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    iput p2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    iput-object p6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    iput-object p7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    iput-object p8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-void
.end method

.method private addWorker(Ljava/lang/Runnable;Z)Z
    .locals 9

    const/4 v7, 0x0

    :goto_0
    iget-object v8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    iget-object v8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    return v7

    :cond_1
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v6

    const v8, 0x1fffffff

    if-ge v6, v8, :cond_0

    if-eqz p2, :cond_3

    iget v8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    :goto_2
    if-ge v6, v8, :cond_0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndIncrementWorkerCount(I)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    invoke-direct {v5, p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V

    iget-object v4, v5, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    if-eqz v4, :cond_2

    if-ltz v2, :cond_5

    if-nez v2, :cond_2

    if-eqz p1, :cond_5

    :cond_2
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :cond_3
    iget v8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    goto :goto_2

    :cond_4
    iget-object v8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v8

    if-eq v8, v2, :cond_1

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v3

    iget v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I

    if-le v3, v7, :cond_6

    iput v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-static {v7}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v7

    const/high16 v8, 0x2000

    if-ne v7, v8, :cond_7

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    const/4 v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
.end method

.method private advanceRunState(I)V
    .locals 3

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method private checkShutdownAccess()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v4, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    iget-object v4, v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return-void
.end method

.method private clearInterruptsForTaskRun()V
    .locals 2

    const/high16 v1, 0x2000

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method private compareAndDecrementWorkerCount(I)Z
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private compareAndIncrementWorkerCount(I)Z
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private static ctlOf(II)I
    .locals 1

    or-int v0, p0, p1

    return v0
.end method

.method private decrementWorkerCount()V
    .locals 1

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private drainQueue()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Runnable;

    invoke-interface {v3, v6}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Runnable;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method private getTask()Ljava/lang/Runnable;
    .locals 12

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    const/high16 v7, 0x2000

    if-ge v3, v7, :cond_0

    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    move-object v1, v8

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v6

    iget-boolean v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-nez v7, :cond_3

    iget v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-le v6, v7, :cond_5

    :cond_3
    const/4 v4, 0x1

    :goto_2
    iget v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    if-gt v6, v7, :cond_6

    if-eqz v5, :cond_4

    if-nez v4, :cond_6

    :cond_4
    if-eqz v4, :cond_8

    :try_start_0
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    iget-wide v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v9, v10, v11}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v7

    :goto_3
    if-nez v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v1, v8

    goto :goto_1

    :cond_7
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v7

    if-eq v7, v3, :cond_2

    goto :goto_0

    :cond_8
    :try_start_1
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v7

    goto :goto_3

    :catch_0
    move-exception v2

    const/4 v5, 0x0

    goto :goto_0
.end method

.method private interruptIdleWorkers()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    return-void
.end method

.method private interruptIdleWorkers(Z)V
    .locals 5

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    iget-object v2, v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->tryLock()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private interruptWorkers()V
    .locals 4

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private static isRunning(I)Z
    .locals 1

    if-gez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V
    .locals 8

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    iget-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/high16 v4, 0x2000

    invoke-static {v0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p2, :cond_4

    iget-boolean v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-eqz v4, :cond_3

    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v4

    if-lt v4, v2, :cond_4

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :cond_3
    iget v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v4, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    goto :goto_1
.end method

.method private static runStateAtLeast(II)Z
    .locals 1

    if-lt p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static runStateLessThan(II)Z
    .locals 1

    if-ge p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static runStateOf(I)I
    .locals 1

    const/high16 v0, -0x2000

    and-int/2addr v0, p0

    return v0
.end method

.method private static workerCountOf(I)I
    .locals 1

    const v0, 0x1fffffff

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public allowCoreThreadTimeOut(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Core threads must have nonzero keep alive times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    :cond_1
    return-void
.end method

.method public allowsCoreThreadTimeOut()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    return v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/high16 v4, 0x6000

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return v3

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v2, v3, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :cond_3
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method

.method public getActiveCount()I
    .locals 5

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public getCompletedTaskCount()J
    .locals 7

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    iget-wide v5, v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v2, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v2

    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public getCorePoolSize()I
    .locals 1

    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    return v0
.end method

.method public getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestPoolSize()I
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getMaximumPoolSize()I
    .locals 1

    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    return v0
.end method

.method public getPoolSize()I
    .locals 3

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
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

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-object v0
.end method

.method public getTaskCount()J
    .locals 7

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    iget-wide v5, v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v2, v5

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    goto :goto_0

    :cond_1
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v5

    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method final isRunningOrShutdown(Z)Z
    .locals 2

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v0

    const/high16 v1, -0x2000

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTerminated()Z
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/high16 v1, 0x6000

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v0

    return v0
.end method

.method public isTerminating()Z
    .locals 2

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x6000

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onShutdown()V
    .locals 0

    return-void
.end method

.method public prestartAllCoreThreads()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public prestartCoreThread()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v1

    iget v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public purge()V
    .locals 8

    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    :try_start_0
    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    instance-of v7, v6, Ljava/util/concurrent/Future;

    if-eqz v7, :cond_0

    check-cast v6, Ljava/util/concurrent/Future;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v6, v0, v2

    instance-of v7, v6, Ljava/util/concurrent/Future;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Ljava/util/concurrent/Future;

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5, v6}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    return-void
.end method

.method final reject(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    return v0
.end method

.method final runWorker(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V
    .locals 9

    const-wide/16 v7, 0x1

    iget-object v1, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    const/4 v4, 0x0

    iput-object v4, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    const/4 v0, 0x1

    :goto_0
    if-nez v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTask()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->lock()V

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->clearInterruptsForTaskRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {p0, v4, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v1, 0x0

    :try_start_4
    iget-wide v4, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v4, v7

    iput-wide v4, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    throw v4

    :catch_0
    move-exception v3

    move-object v2, v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v4

    const/4 v1, 0x0

    :try_start_7
    iget-wide v5, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v5, v7

    iput-wide v5, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_1
    move-exception v3

    move-object v2, v3

    :try_start_8
    throw v3

    :catch_2
    move-exception v3

    move-object v2, v3

    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    return-void
.end method

.method public setCorePoolSize(I)V
    .locals 5

    if-gez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    sub-int v0, p1, v3

    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v3

    if-le v3, p1, :cond_2

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    :cond_1
    return-void

    :cond_2
    if-lez v0, :cond_1

    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v1

    goto :goto_0
.end method

.method public setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    const-wide/16 v6, 0x0

    cmp-long v4, p1, v6

    if-gez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    cmp-long v4, p1, v6

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowsCoreThreadTimeOut()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Core threads must have nonzero keep alive times"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sub-long v0, v2, v4

    iput-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    cmp-long v4, v0, v6

    if-gez v4, :cond_2

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    :cond_2
    return-void
.end method

.method public setMaximumPoolSize(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v0

    if-le v0, p1, :cond_2

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    :cond_2
    return-void
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-void
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->onShutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    const/high16 v2, 0x2000

    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptWorkers()V

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->drainQueue()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    return-object v1

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method protected terminated()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    const/4 v3, 0x0

    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v6

    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    iget-wide v9, v8, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v4, v9

    invoke-virtual {v8}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v9, 0x0

    invoke-static {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v7, "Running"

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pool size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", active threads = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", queued tasks = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", completed tasks = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :catchall_0
    move-exception v9

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9

    :cond_2
    const/high16 v9, 0x6000

    invoke-static {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v7, "Terminated"

    goto :goto_1

    :cond_3
    const-string v7, "Shutting down"

    goto :goto_1
.end method

.method final tryTerminate()V
    .locals 6

    const/high16 v5, 0x4000

    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v3, 0x4000

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v3, 0x6000

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v4, 0x6000

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method
