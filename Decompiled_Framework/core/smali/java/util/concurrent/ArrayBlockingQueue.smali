.class public Ljava/util/concurrent/ArrayBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ArrayBlockingQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xb59ce4be1ef907aL


# instance fields
.field count:I

.field final items:[Ljava/lang/Object;

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field putIndex:I

.field takeIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method public constructor <init>(IZLjava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move v3, v2

    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v3, 0x1

    :try_start_2
    aput-object v0, v6, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v6

    :goto_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    :cond_0
    :try_start_4
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-ne v3, p1, :cond_1

    const/4 v6, 0x0

    :goto_3
    iput v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    move v6, v3

    goto :goto_3

    :catchall_1
    move-exception v6

    move v2, v3

    goto :goto_2

    :catch_1
    move-exception v1

    move v2, v3

    goto :goto_1
.end method

.method static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    return-object p0
.end method

.method private static checkNotNull(Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private extract()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v2

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    return-object v1
.end method

.method private insert(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    aput-object p1, v0, v1

    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 5

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    :goto_0
    if-lez v2, :cond_0

    const/4 v4, 0x0

    aput-object v4, v1, v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    const/4 v4, 0x0

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    const/4 v4, 0x0

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    :goto_1
    if-lez v2, :cond_2

    aget-object v5, v1, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method final dec(I)I
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length p1, v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->checkNotNull(Ljava/lang/Object;)V

    if-ne p1, p0, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    const/4 v4, 0x0

    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    aput-object v5, v1, v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v4, :cond_2

    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->checkNotNull(Ljava/lang/Object;)V

    if-ne p1, p0, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_0
    if-gtz p2, :cond_1

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    const/4 v4, 0x0

    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-ge p2, v5, :cond_2

    move v3, p2

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    aput-object v5, v1, v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    goto :goto_1

    :cond_3
    if-lez v4, :cond_4

    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    sub-int/2addr v5, v4

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method final inc(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method final itemAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->insert(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->insert(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->extract()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
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

    move-result-wide v1

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->extract()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public put(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->insert(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public remainingCapacity()I
    .locals 3

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    :goto_1
    if-lez v2, :cond_2

    aget-object v5, v1, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method removeAt(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aput-object v3, v0, v2

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v2

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    :goto_0
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    return-void

    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v1

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-eq v1, v2, :cond_1

    aget-object v2, v0, v1

    aput-object v2, v0, p1

    move p1, v1

    goto :goto_1

    :cond_1
    aput-object v3, v0, p1

    iput p1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    goto :goto_0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public take()Ljava/lang/Object;
    .locals 2
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

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->extract()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 7

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    new-array v0, v1, [Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v6, v3, v2

    aput-object v6, v0, v4

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    array-length v5, p1

    if-ge v5, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    :cond_0
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v7, v3, v2

    aput-object v7, p1, v4

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-le v5, v1, :cond_2

    const/4 v7, 0x0

    aput-object v7, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v2, :cond_0

    const-string v5, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v5

    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    :goto_1
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    aget-object v0, v5, v1

    if-ne v0, p0, :cond_1

    const-string v0, "(this Collection)"

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_2

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_2
    const/16 v5, 0x2c

    :try_start_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method
