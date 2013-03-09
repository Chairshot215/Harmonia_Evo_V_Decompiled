.class abstract Ljava/util/concurrent/Semaphore$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "Semaphore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Semaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x108c7583c161b715L


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/Semaphore$Sync;->setState(I)V

    return-void
.end method


# virtual methods
.method final drainPermits()I
    .locals 2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return v0
.end method

.method final getPermits()I
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    return v0
.end method

.method final nonfairTryAcquireShared(I)I
    .locals 3

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    sub-int v1, v0, p1

    if-ltz v1, :cond_1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return v1
.end method

.method final reducePermits(I)V
    .locals 4

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    sub-int v1, v0, p1

    if-le v1, v0, :cond_1

    new-instance v2, Ljava/lang/Error;

    const-string v3, "Permit count underflow"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void
.end method

.method protected final tryReleaseShared(I)Z
    .locals 4

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    add-int v1, v0, p1

    if-ge v1, v0, :cond_1

    new-instance v2, Ljava/lang/Error;

    const-string v3, "Maximum permit count exceeded"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2
.end method
