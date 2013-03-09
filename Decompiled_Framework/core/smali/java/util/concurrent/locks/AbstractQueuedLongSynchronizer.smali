.class public abstract Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;,
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final headOffset:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final nextOffset:J = 0x0L

.field private static final serialVersionUID:J = 0x6655a843753f52e4L

.field static final spinForTimeoutThreshold:J = 0x3e8L

.field private static final stateOffset:J

.field private static final tailOffset:J

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final waitStatusOffset:J


# instance fields
.field private volatile transient head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field private volatile state:J

.field private volatile transient tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string v3, "state"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->stateOffset:J

    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string v3, "head"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->headOffset:J

    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string v3, "tail"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tailOffset:J

    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    const-string v3, "waitStatus"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->waitStatusOffset:J

    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    const-string v3, "next"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->nextOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    return-void
.end method

.method private addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .locals 3

    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>(Ljava/lang/Thread;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v1, :cond_0

    iput-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0
.end method

.method private cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v6, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    :goto_1
    iget v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-lez v4, :cond_1

    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_1

    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    const/4 v4, 0x1

    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne p1, v4, :cond_2

    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1, v2, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v1, v4, :cond_5

    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-eq v3, v5, :cond_3

    if-gtz v3, :cond_5

    invoke-static {v1, v3, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v4, :cond_5

    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v0, :cond_4

    iget v4, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gtz v4, :cond_4

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    :cond_4
    :goto_2
    iput-object p1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    goto :goto_2
.end method

.method private final compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->headOffset:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->nextOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z
    .locals 6

    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->waitStatusOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private doAcquireInterruptibly(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sget-object v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v1

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    const/4 v3, 0x0

    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_3
    throw v3
.end method

.method private doAcquireNanos(JJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v7, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v6

    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v6, v7, :cond_2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    const/4 v7, 0x0

    iput-object v7, v6, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_1
    :goto_0
    return v7

    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v7, p3, v7

    if-gtz v7, :cond_3

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-wide/16 v7, 0x3e8

    cmp-long v7, p3, v7

    if-lez v7, :cond_4

    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v7, v4, v1

    sub-long/2addr p3, v7

    move-wide v1, v4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v7

    if-eqz v0, :cond_5

    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_5
    throw v7
.end method

.method private doAcquireShared(J)V
    .locals 8

    sget-object v6, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v3, v6, :cond_3

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V

    const/4 v6, 0x0

    iput-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    invoke-static {v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_4
    throw v6
.end method

.method private doAcquireSharedInterruptibly(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v1

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v2

    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v2, v5, :cond_2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    invoke-direct {p0, v1, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V

    const/4 v5, 0x0

    iput-object v5, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_3
    throw v5
.end method

.method private doAcquireSharedNanos(JJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v9, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v9}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v6

    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v6, v9, :cond_2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_2

    invoke-direct {p0, v3, v7, v8}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V

    const/4 v9, 0x0

    iput-object v9, v6, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_1
    :goto_0
    return v9

    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v9, p3, v9

    if-gtz v9, :cond_3

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-wide/16 v9, 0x3e8

    cmp-long v9, p3, v9

    if-lez v9, :cond_4

    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v9, v4, v1

    sub-long/2addr p3, v9

    move-wide v1, v4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v9

    if-eqz v0, :cond_5

    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_5
    throw v9
.end method

.method private doReleaseShared()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v0, :cond_1

    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v0, v2, :cond_1

    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-ne v1, v3, :cond_2

    invoke-static {v0, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v0, v2, :cond_0

    return-void

    :cond_2
    if-nez v1, :cond_1

    const/4 v2, -0x3

    invoke-static {v0, v4, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method private enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>()V

    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    :cond_1
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    return-object v0
.end method

.method private findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    :goto_0
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0
.end method

.method private fullGetFirstQueuedThread()Ljava/lang/Thread;
    .locals 8

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v1, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v2, :cond_0

    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v6, v7, :cond_0

    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_1

    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v1, :cond_3

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v2, :cond_3

    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v6, v7, :cond_3

    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_3

    :cond_1
    move-object v0, v3

    :cond_2
    return-object v0

    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    const/4 v0, 0x0

    :goto_0
    if-eqz v4, :cond_2

    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v4, v6, :cond_2

    iget-object v5, v4, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v5, :cond_4

    move-object v0, v5

    :cond_4
    iget-object v4, v4, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0
.end method

.method private final parkAndCheckInterrupt()Z
    .locals 1

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    return v0
.end method

.method private static selfInterrupt()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method private setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    return-void
.end method

.method private setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V
    .locals 4

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    if-eqz v0, :cond_0

    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gez v2, :cond_2

    :cond_0
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doReleaseShared()V

    :cond_2
    return-void
.end method

.method private static shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    if-lez v0, :cond_2

    :cond_1
    iget-object p0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object p0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gtz v1, :cond_1

    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    goto :goto_1
.end method

.method private unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 4

    iget v2, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gez v2, :cond_0

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v0, :cond_1

    iget v3, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-lez v3, :cond_3

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    :goto_0
    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gtz v3, :cond_2

    move-object v0, v1

    :cond_2
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final acquire(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    :cond_0
    return-void
.end method

.method public final acquireInterruptibly(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireInterruptibly(J)V

    :cond_1
    return-void
.end method

.method final acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    const/4 v3, 0x0

    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_1
    return v1

    :cond_2
    :try_start_1
    invoke-static {v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_3
    throw v3
.end method

.method public final acquireShared(J)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireShared(J)V

    :cond_0
    return-void
.end method

.method public final acquireSharedInterruptibly(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireSharedInterruptibly(J)V

    :cond_1
    return-void
.end method

.method final apparentlyFirstQueuedIsExclusive()Z
    .locals 3

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final compareAndSetState(JJ)Z
    .locals 8

    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->stateOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->release(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    :cond_0
    return-wide v1

    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    :cond_2
    throw v3
.end method

.method public final getExclusiveQueuedThreads()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getFirstQueuedThread()Ljava/lang/Thread;
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullGetFirstQueuedThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0
.end method

.method public final getQueueLength()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getQueuedThreads()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getSharedQueuedThreads()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected final getState()J
    .locals 2

    iget-wide v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->state:J

    return-wide v0
.end method

.method public final getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)I
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->getWaitQueueLength()I

    move-result v0

    return v0
.end method

.method public final getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->getWaitingThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final hasContended()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final hasQueuedPredecessors()Z
    .locals 5

    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v0, v2, :cond_1

    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v1, :cond_0

    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hasQueuedThreads()Z
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->hasWaiters()Z

    move-result v0

    return v0
.end method

.method protected isHeldExclusively()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 2

    iget v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isQueued(Ljava/lang/Thread;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Z

    move-result v0

    return v0
.end method

.method public final release(J)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryRelease(J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v0, :cond_0

    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final releaseShared(J)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryReleaseShared(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doReleaseShared()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setState(J)V
    .locals 0

    iput-wide p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->state:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->hasQueuedThreads()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "non"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "empty queue]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method final transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-static {p1, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method final transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p1, v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v0

    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gtz v1, :cond_1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected tryAcquire(J)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final tryAcquireNanos(JJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireNanos(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected tryAcquireShared(J)J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final tryAcquireSharedNanos(JJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireSharedNanos(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected tryRelease(J)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected tryReleaseShared(J)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
