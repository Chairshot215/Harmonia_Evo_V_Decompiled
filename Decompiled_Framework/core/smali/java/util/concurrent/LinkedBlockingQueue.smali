.class public Ljava/util/concurrent/LinkedBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedBlockingQueue$Itr;,
        Ljava/util/concurrent/LinkedBlockingQueue$Node;
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
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field private transient head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient last:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    const v4, 0x7fffffff

    invoke-direct {p0, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    :cond_0
    :try_start_1
    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v2, v4, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Queue full"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    return-object v0
.end method

.method private dequeue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    return-object v2
.end method

.method private enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object p1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private signalNotEmpty()V
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private signalNotFull()V
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v1, :cond_0

    iput-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    iget v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_1
    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v8, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-static {p2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    :try_start_1
    iget-object v3, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v8, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    iput-object v8, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    iput-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    :try_start_2
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v8, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v9, v1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v8

    iget v9, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v8, v9, :cond_5

    move v4, v6

    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v4, :cond_4

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    :cond_4
    return v2

    :cond_5
    move v4, v7

    goto :goto_1

    :catchall_0
    move-exception v8

    if-lez v1, :cond_6

    :try_start_3
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v9, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v10, v1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v9

    iget v10, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v9, v10, :cond_8

    move v4, v6

    :cond_6
    :goto_2
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v4, :cond_7

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    :cond_7
    throw v6

    :cond_8
    move v4, v7

    goto :goto_2
.end method

.method fullyLock()V
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method fullyUnlock()V
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
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

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue$Itr;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v5, v6, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v0, -0x1

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_3

    invoke-direct {p0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_4

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    :cond_4
    if-ltz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 7
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

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    const/4 v0, -0x1

    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v6, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return v5

    :cond_1
    :try_start_1
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v5, p1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_4

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public peek()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_2

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_2

    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 8
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

    const/4 v5, 0x0

    const/4 v0, -0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    :goto_1
    return-object v5

    :cond_1
    :try_start_1
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_3

    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v6, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6
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

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    const/4 v0, -0x1

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_3

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    :cond_3
    return-void
.end method

.method public remainingCapacity()I
    .locals 2

    iget v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->unlink(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :try_start_1
    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v2
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 5
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

    const/4 v0, -0x1

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v4, :cond_2

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    :cond_2
    return-object v3
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move v2, v1

    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    iget-object v5, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v5, v0, v2

    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    return-object v0

    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    array-length v5, p1

    if-ge v5, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    :cond_0
    const/4 v1, 0x0

    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move v2, v1

    :goto_0
    if-eqz v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    iget-object v5, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v5, p1, v2

    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v5, p1

    if-le v5, v2, :cond_2

    const/4 v5, 0x0

    aput-object v5, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    return-object p1

    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v1, :cond_0

    const-string v3, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    :goto_0
    return-object v3

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    if-ne v0, p0, :cond_1

    const-string v0, "(this Collection)"

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v1, :cond_2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    goto :goto_0

    :cond_2
    const/16 v3, 0x2c

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v3
.end method

.method unlink(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    return-void
.end method
