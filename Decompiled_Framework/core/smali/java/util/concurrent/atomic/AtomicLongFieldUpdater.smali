.class public abstract Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.super Ljava/lang/Object;
.source "AtomicLongFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;,
        Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<TU;>;"
        }
    .end annotation

    sget-boolean v0, Ljava/util/concurrent/atomic/AtomicLong;->VM_SUPPORTS_LONG_CAS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addAndGet(Ljava/lang/Object;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    add-long v4, v2, p2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v4
.end method

.method public abstract compareAndSet(Ljava/lang/Object;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation
.end method

.method public decrementAndGet(Ljava/lang/Object;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/16 v0, 0x1

    sub-long v4, v2, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v4
.end method

.method public abstract get(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public getAndAdd(Ljava/lang/Object;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    add-long v4, v2, p2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2
.end method

.method public getAndDecrement(Ljava/lang/Object;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/16 v0, 0x1

    sub-long v4, v2, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2
.end method

.method public getAndIncrement(Ljava/lang/Object;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/16 v0, 0x1

    add-long v4, v2, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2
.end method

.method public getAndSet(Ljava/lang/Object;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2
.end method

.method public incrementAndGet(Ljava/lang/Object;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/16 v0, 0x1

    add-long v4, v2, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v4
.end method

.method public abstract lazySet(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation
.end method

.method public abstract weakCompareAndSet(Ljava/lang/Object;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation
.end method
