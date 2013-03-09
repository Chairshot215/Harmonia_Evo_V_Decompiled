.class Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
.super Ljava/util/AbstractQueue;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayedWorkQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue",
        "<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/util/concurrent/BlockingQueue",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private final available:Ljava/util/concurrent/locks/Condition;

.field private leader:Ljava/lang/Thread;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private queue:[Ljava/util/concurrent/RunnableScheduledFuture;

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/util/concurrent/RunnableScheduledFuture;

    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 4

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v2, v0

    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftDown(ILjava/util/concurrent/RunnableScheduledFuture;)V

    :cond_0
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    return-object p1
.end method

.method private grow()V
    .locals 3

    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    array-length v1, v2

    shr-int/lit8 v2, v1, 0x1

    add-int v0, v1, v2

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/concurrent/RunnableScheduledFuture;

    iput-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    return-void
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 2

    if-eqz p1, :cond_2

    instance-of v1, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    iget v0, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    if-ltz v0, :cond_2

    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private pollExpired()Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 5

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v1

    goto :goto_0
.end method

.method private setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V
    .locals 1

    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    iput p2, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    :cond_0
    return-void
.end method

.method private siftDown(ILjava/util/concurrent/RunnableScheduledFuture;)V
    .locals 5

    iget v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    ushr-int/lit8 v2, v4, 0x1

    :goto_0
    if-ge p1, v2, :cond_1

    shl-int/lit8 v4, p1, 0x1

    add-int/lit8 v1, v4, 0x1

    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v0, v4, v1

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v4, v4, v3

    invoke-interface {v0, v4}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    move v1, v3

    aget-object v0, v4, v3

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_2

    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aput-object p2, v4, p1

    invoke-direct {p0, p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    return-void

    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aput-object v0, v4, p1

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    move p1, v1

    goto :goto_0
.end method

.method private siftUp(ILjava/util/concurrent/RunnableScheduledFuture;)V
    .locals 3

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v2, p1, -0x1

    ushr-int/lit8 v1, v2, 0x1

    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v0, v2, v1

    invoke-interface {p2, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aput-object p2, v2, p1

    invoke-direct {p0, p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    return-void

    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aput-object v0, v2, p1

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    move p1, v1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->add(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Runnable;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 5

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v2, v3, v0

    if-eqz v2, :cond_0

    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/lang/Runnable;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->pollExpired()Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/lang/Runnable;",
            ">;I)I"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_1
    if-gtz p2, :cond_2

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_3

    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->pollExpired()Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;

    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-direct {v1, p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;[Ljava/util/concurrent/RunnableScheduledFuture;)V

    return-object v1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Runnable;)Z
    .locals 5

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/RunnableScheduledFuture;

    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->grow()V

    :cond_1
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-nez v1, :cond_3

    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    :goto_0
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-ne v3, v0, :cond_2

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v3, 0x1

    return v3

    :cond_3
    :try_start_1
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftUp(ILjava/util/concurrent/RunnableScheduledFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public offer(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->peek()Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public peek()Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 3

    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->poll()Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 6

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v2

    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v9, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v10, 0x0

    aget-object v2, v9, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-gtz v9, :cond_2

    const/4 v9, 0x0

    iget-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v10, :cond_1

    iget-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-eqz v10, :cond_1

    iget-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v9

    :cond_2
    :try_start_1
    iget-object v9, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4

    goto :goto_0

    :cond_3
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v9}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-gtz v9, :cond_5

    invoke-direct {p0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    iget-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v10, :cond_4

    iget-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-eqz v10, :cond_4

    iget-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_4
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :cond_5
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-gtz v9, :cond_7

    const/4 v9, 0x0

    iget-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v10, :cond_6

    iget-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-eqz v10, :cond_6

    iget-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_6
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :cond_7
    cmp-long v9, v4, v0

    if-ltz v9, :cond_8

    :try_start_2
    iget-object v9, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-eqz v9, :cond_9

    :cond_8
    iget-object v9, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4

    goto :goto_0

    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v9, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v7

    sub-long v9, v0, v7

    sub-long/2addr v4, v9

    :try_start_4
    iget-object v9, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-ne v9, v6, :cond_0

    const/4 v9, 0x0

    iput-object v9, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    iget-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v10, :cond_a

    iget-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-eqz v10, :cond_a

    iget-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_a
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9

    :catchall_1
    move-exception v9

    :try_start_5
    iget-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-ne v10, v6, :cond_b

    const/4 v10, 0x0

    iput-object v10, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    :cond_b
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->put(Ljava/lang/Runnable;)V

    return-void
.end method

.method public put(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v4

    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v4, v4, v0

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    iget v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    add-int/lit8 v3, v4, -0x1

    iput v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v2, v4, v3

    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    if-eq v3, v0, :cond_1

    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftDown(ILjava/util/concurrent/RunnableScheduledFuture;)V

    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v4, v4, v0

    if-ne v4, v2, :cond_1

    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftUp(ILjava/util/concurrent/RunnableScheduledFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->take()Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public take()Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v6, 0x0

    aget-object v2, v5, v6

    if-nez v2, :cond_2

    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v6, :cond_1

    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v6, v6, v7

    if-eqz v6, :cond_1

    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    :cond_2
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gtz v5, :cond_4

    invoke-direct {p0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v6, :cond_3

    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v6, v6, v7

    if-eqz v6, :cond_3

    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    :cond_4
    :try_start_2
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-eqz v5, :cond_5

    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-ne v5, v4, :cond_0

    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    goto :goto_0

    :catchall_1
    move-exception v5

    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-ne v6, v4, :cond_6

    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    :cond_6
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    const-class v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    array-length v1, p1

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-le v1, v2, :cond_1

    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
