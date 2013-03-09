.class public Ljava/util/concurrent/DelayQueue;
.super Ljava/util/AbstractQueue;
.source "DelayQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/DelayQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljava/util/concurrent/Delayed;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final available:Ljava/util/concurrent/locks/Condition;

.field private leader:Ljava/lang/Thread;

.field private final transient lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final q:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/DelayQueue;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/concurrent/DelayQueue;)Ljava/util/PriorityQueue;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->add(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/util/concurrent/Delayed;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
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
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;

    if-eqz v0, :cond_2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :cond_3
    :try_start_1
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
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
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_3

    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;

    if-eqz v0, :cond_3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/DelayQueue$Itr;

    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/DelayQueue$Itr;-><init>(Ljava/util/concurrent/DelayQueue;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

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

    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/util/concurrent/Delayed;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public offer(Ljava/util/concurrent/Delayed;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->peek()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public peek()Ljava/util/concurrent/Delayed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Delayed;
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

    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->poll()Ljava/util/concurrent/Delayed;

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

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/DelayQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/util/concurrent/Delayed;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;

    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J
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
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Delayed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Delayed;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v9, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v9}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Delayed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-gtz v9, :cond_2

    const/4 v9, 0x0

    iget-object v10, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v10, :cond_1

    iget-object v10, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v10}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v9

    :cond_2
    :try_start_1
    iget-object v9, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4

    goto :goto_0

    :cond_3
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v9}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-gtz v9, :cond_5

    iget-object v9, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v9}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/Delayed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v10, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v10, :cond_4

    iget-object v10, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v10}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_4
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :cond_5
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-gtz v9, :cond_7

    const/4 v9, 0x0

    iget-object v10, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v10, :cond_6

    iget-object v10, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v10}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_6
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :cond_7
    cmp-long v9, v4, v0

    if-ltz v9, :cond_8

    :try_start_2
    iget-object v9, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-eqz v9, :cond_9

    :cond_8
    iget-object v9, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4

    goto :goto_0

    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v9, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v7

    sub-long v9, v0, v7

    sub-long/2addr v4, v9

    :try_start_4
    iget-object v9, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-ne v9, v6, :cond_0

    const/4 v9, 0x0

    iput-object v9, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    iget-object v10, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v10, :cond_a

    iget-object v10, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v10}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_a
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9

    :catchall_1
    move-exception v9

    :try_start_5
    iget-object v10, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-ne v10, v6, :cond_b

    const/4 v10, 0x0

    iput-object v10, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

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

    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->put(Ljava/util/concurrent/Delayed;)V

    return-void
.end method

.method public put(Ljava/util/concurrent/Delayed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

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

    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->take()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public take()Ljava/util/concurrent/Delayed;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Delayed;

    if-nez v2, :cond_2

    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v6, :cond_1

    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    :cond_2
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gtz v5, :cond_4

    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Delayed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v6, :cond_3

    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    :cond_4
    :try_start_2
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-eqz v5, :cond_5

    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-ne v5, v4, :cond_0

    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    goto :goto_0

    :catchall_1
    move-exception v5

    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-ne v6, v4, :cond_6

    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    :cond_6
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->toArray()[Ljava/lang/Object;
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
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
