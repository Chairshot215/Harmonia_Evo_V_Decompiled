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


# direct methods
.method protected constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/google/common/util/concurrent/AbstractCheckedFuture;,"Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TE;>;"
    .local p1, delegate:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 43
    return-void
.end method


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

.method public checkedGet()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/google/common/util/concurrent/AbstractCheckedFuture;,"Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TE;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->cancel(Z)Z

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 65
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, e:Ljava/util/concurrent/CancellationException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 67
    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v0

    .line 68
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^",
            "Ljava/util/concurrent/TimeoutException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/google/common/util/concurrent/AbstractCheckedFuture;,"Lcom/google/common/util/concurrent/AbstractCheckedFuture<TV;TE;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->cancel(Z)Z

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 82
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, e:Ljava/util/concurrent/CancellationException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 84
    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v0

    .line 85
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1
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

.method protected abstract mapException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TE;"
        }
    .end annotation
.end method
