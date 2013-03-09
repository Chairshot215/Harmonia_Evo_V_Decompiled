.class public abstract Lcom/google/common/util/concurrent/AbstractCheckedFuture;
.super Ljava/lang/Object;
.source "AbstractCheckedFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/CheckedFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/CheckedFuture",
        "<TV;TE;>;"
    }
.end annotation


# instance fields
.field protected final delegate:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter "listener"
    .parameter "exec"

    .prologue
    .line 113
    .local p0, this:Lcom/google/common/util/concurrent/AbstractCheckedFuture;,"Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TE;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 114
    return-void
.end method

.method public cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 92
    .local p0, this:Lcom/google/common/util/concurrent/AbstractCheckedFuture;,"Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TE;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 104
    .local p0, this:Lcom/google/common/util/concurrent/AbstractCheckedFuture;,"Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TE;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lcom/google/common/util/concurrent/AbstractCheckedFuture;,"Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TE;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 96
    .local p0, this:Lcom/google/common/util/concurrent/AbstractCheckedFuture;,"Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TE;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 100
    .local p0, this:Lcom/google/common/util/concurrent/AbstractCheckedFuture;,"Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TE;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    return v0
.end method
