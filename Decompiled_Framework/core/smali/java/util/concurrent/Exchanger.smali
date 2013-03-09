.class public Ljava/util/concurrent/Exchanger;
.super Ljava/lang/Object;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Exchanger$1;,
        Ljava/util/concurrent/Exchanger$Slot;,
        Ljava/util/concurrent/Exchanger$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CANCEL:Ljava/lang/Object; = null

.field private static final CAPACITY:I = 0x20

.field private static final FULL:I

.field private static final NCPU:I

.field private static final NULL_ITEM:Ljava/lang/Object;

.field private static final SPINS:I

.field private static final TIMED_SPINS:I


# instance fields
.field private volatile arena:[Ljava/util/concurrent/Exchanger$Slot;

.field private final max:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/16 v1, 0x20

    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Ljava/util/concurrent/Exchanger;->FULL:I

    sget v1, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    sput v0, Ljava/util/concurrent/Exchanger;->SPINS:I

    sget v0, Ljava/util/concurrent/Exchanger;->SPINS:I

    div-int/lit8 v0, v0, 0x14

    sput v0, Ljava/util/concurrent/Exchanger;->TIMED_SPINS:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    return-void

    :cond_0
    const/16 v0, 0x7d0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/util/concurrent/Exchanger$Slot;

    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private static await(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget v0, Ljava/util/concurrent/Exchanger;->SPINS:I

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/Exchanger$Node;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    if-nez v3, :cond_2

    iput-object v2, p0, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0, p1}, Ljava/util/concurrent/Exchanger;->tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z

    goto :goto_0

    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private awaitNanos(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;J)Ljava/lang/Object;
    .locals 9

    sget v4, Ljava/util/concurrent/Exchanger;->TIMED_SPINS:I

    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/Exchanger$Node;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    :goto_1
    return-object v5

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    if-nez v6, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    :goto_2
    move-wide v0, v2

    const-wide/16 v7, 0x0

    cmp-long v7, p3, v7

    if-lez v7, :cond_6

    if-lez v4, :cond_3

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    sub-long v7, v2, v0

    sub-long/2addr p3, v7

    goto :goto_2

    :cond_3
    iget-object v7, p1, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    if-nez v7, :cond_4

    iput-object v6, p1, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {p1, p2}, Ljava/util/concurrent/Exchanger;->tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z

    goto :goto_0

    :cond_5
    invoke-static {p1, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_6
    invoke-static {p1, p2}, Ljava/util/concurrent/Exchanger;->tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0, p1}, Ljava/util/concurrent/Exchanger;->scanOnTimeout(Ljava/util/concurrent/Exchanger$Node;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method

.method private createSlot(I)V
    .locals 3

    new-instance v1, Ljava/util/concurrent/Exchanger$Slot;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Exchanger$Slot;-><init>(Ljava/util/concurrent/Exchanger$1;)V

    iget-object v0, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    monitor-enter v0

    :try_start_0
    aget-object v2, v0, p1

    if-nez v2, :cond_0

    aput-object v1, v0, p1

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 11

    const/4 v10, 0x0

    new-instance v3, Ljava/util/concurrent/Exchanger$Node;

    invoke-direct {v3, p1}, Ljava/util/concurrent/Exchanger$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/util/concurrent/Exchanger;->hashIndex()I

    move-result v1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v8, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    aget-object v4, v8, v1

    if-nez v4, :cond_1

    invoke-direct {p0, v1}, Ljava/util/concurrent/Exchanger;->createSlot(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/Exchanger$Slot;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v6, v10}, Ljava/util/concurrent/Exchanger$Slot;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v7, v6

    check-cast v7, Ljava/util/concurrent/Exchanger$Node;

    invoke-virtual {v7, v10, p1}, Ljava/util/concurrent/Exchanger$Node;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v7, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v8}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    iget-object v8, v7, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    :goto_1
    return-object v8

    :cond_2
    if-nez v6, :cond_6

    invoke-virtual {v4, v10, v3}, Ljava/util/concurrent/Exchanger$Slot;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    invoke-direct {p0, v3, v4, p3, p4}, Ljava/util/concurrent/Exchanger;->awaitNanos(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;J)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    :cond_3
    invoke-static {v3, v4}, Ljava/util/concurrent/Exchanger;->await(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    :cond_4
    invoke-static {v3, v4}, Ljava/util/concurrent/Exchanger;->spinWait(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    if-eq v5, v8, :cond_5

    move-object v8, v5

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/util/concurrent/Exchanger$Node;

    invoke-direct {v3, p1}, Ljava/util/concurrent/Exchanger$Node;-><init>(Ljava/lang/Object;)V

    iget-object v8, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    ushr-int/lit8 v1, v1, 0x1

    if-le v2, v1, :cond_0

    iget-object v8, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v8, v2, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x1

    if-le v0, v8, :cond_0

    iget-object v8, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v8, 0x3

    if-le v0, v8, :cond_7

    sget v8, Ljava/util/concurrent/Exchanger;->FULL:I

    if-ge v2, v8, :cond_7

    iget-object v8, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v2, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    move v1, v2

    goto/16 :goto_0
.end method

.method private final hashIndex()I
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    const/16 v6, 0x20

    ushr-long v6, v1, v6

    xor-long/2addr v6, v1

    long-to-int v6, v6

    const v7, -0x7ee3623b

    xor-int/2addr v6, v7

    const v7, 0x1000193

    mul-int v0, v6, v7

    iget-object v6, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/16 v6, -0x400

    shr-int/2addr v6, v4

    and-int/lit8 v6, v6, 0x4

    const/16 v7, 0x1f8

    ushr-int/2addr v7, v4

    and-int/lit8 v7, v7, 0x2

    or-int/2addr v6, v7

    const v7, -0xff0e

    ushr-int/2addr v7, v4

    and-int/lit8 v7, v7, 0x1

    or-int v5, v6, v7

    :goto_0
    const/4 v6, 0x1

    shl-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v3, v0, v6

    if-le v3, v4, :cond_0

    ushr-int v6, v0, v5

    rsub-int/lit8 v7, v5, 0x21

    shl-int v7, v0, v7

    or-int v0, v6, v7

    goto :goto_0

    :cond_0
    return v3
.end method

.method private scanOnTimeout(Ljava/util/concurrent/Exchanger$Node;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v4, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    aget-object v1, v4, v0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/Exchanger$Slot;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/Exchanger$Slot;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/util/concurrent/Exchanger$Node;

    iget-object v4, p1, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/Exchanger$Node;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v4}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    iget-object v4, v3, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    :goto_1
    return-object v4

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    sget-object v4, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    goto :goto_1
.end method

.method private static spinWait(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Ljava/lang/Object;
    .locals 2

    sget v0, Ljava/util/concurrent/Exchanger;->SPINS:I

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/Exchanger$Node;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Ljava/util/concurrent/Exchanger;->tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z

    goto :goto_0
.end method

.method private static tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/Exchanger$Node;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/Exchanger$Slot;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/Exchanger$Slot;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public exchange(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Ljava/util/concurrent/Exchanger;->doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    sget-object v1, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    :cond_3
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public exchange(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, p1, v1, v2, v3}, Ljava/util/concurrent/Exchanger;->doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    sget-object v1, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method
