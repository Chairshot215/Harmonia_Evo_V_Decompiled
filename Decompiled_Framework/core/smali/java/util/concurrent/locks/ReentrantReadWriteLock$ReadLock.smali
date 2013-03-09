.class public Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadLock"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5329744b67e697b4L


# instance fields
.field private final sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    return-void
.end method


# virtual methods
.method public lock()V
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->acquireShared(I)V

    return-void
.end method

.method public lockInterruptibly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->acquireSharedInterruptibly(I)V

    return-void
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadLockCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[Read locks = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public tryLock()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->tryReadLock()Z

    move-result v0

    return v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->releaseShared(I)Z

    return-void
.end method
