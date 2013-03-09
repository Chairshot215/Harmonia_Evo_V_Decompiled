.class public Ljava/util/concurrent/Semaphore;
.super Ljava/lang/Object;
.source "Semaphore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Semaphore$FairSync;,
        Ljava/util/concurrent/Semaphore$NonfairSync;,
        Ljava/util/concurrent/Semaphore$Sync;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2cb8e63801765912L


# instance fields
.field private final sync:Ljava/util/concurrent/Semaphore$Sync;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore$NonfairSync;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore$NonfairSync;-><init>(I)V

    iput-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/concurrent/Semaphore$FairSync;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore$FairSync;-><init>(I)V

    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore$NonfairSync;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore$NonfairSync;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public acquire()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->acquireSharedInterruptibly(I)V

    return-void
.end method

.method public acquire(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->acquireSharedInterruptibly(I)V

    return-void
.end method

.method public acquireUninterruptibly()V
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->acquireShared(I)V

    return-void
.end method

.method public acquireUninterruptibly(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->acquireShared(I)V

    return-void
.end method

.method public availablePermits()I
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->getPermits()I

    move-result v0

    return v0
.end method

.method public drainPermits()I
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->drainPermits()I

    move-result v0

    return v0
.end method

.method public final getQueueLength()I
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->getQueueLength()I

    move-result v0

    return v0
.end method

.method protected getQueuedThreads()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->getQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final hasQueuedThreads()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public isFair()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    instance-of v0, v0, Ljava/util/concurrent/Semaphore$FairSync;

    return v0
.end method

.method protected reducePermits(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->reducePermits(I)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->releaseShared(I)Z

    return-void
.end method

.method public release(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->releaseShared(I)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[Permits = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore$Sync;->getPermits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAcquire()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/Semaphore$Sync;->nonfairTryAcquireShared(I)I

    move-result v1

    if-ltz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryAcquire(I)Z
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->nonfairTryAcquireShared(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/Semaphore$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    return v0
.end method
