.class abstract Ljava/util/concurrent/locks/ReentrantLock$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x47e15d6b55bba584L


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    return-void
.end method


# virtual methods
.method final getHoldCount()I
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getOwner()Ljava/lang/Thread;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0
.end method

.method protected final isHeldExclusively()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isLocked()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract lock()V
.end method

.method final newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;-><init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V

    return-object v0
.end method

.method final nonfairTryAcquire(I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v4, p1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->compareAndSetState(II)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v1, v5, :cond_2

    add-int v2, v0, p1

    if-gez v2, :cond_1

    new-instance v3, Ljava/lang/Error;

    const-string v4, "Maximum lock count exceeded"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method protected final tryRelease(I)Z
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v2

    sub-int v0, v2, p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    return v1
.end method
