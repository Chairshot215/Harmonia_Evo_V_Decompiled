.class public Lcom/google/common/util/concurrent/SimpleTimeLimiter;
.super Ljava/lang/Object;
.source "SimpleTimeLimiter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/TimeLimiter;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .parameter "executor"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->executor:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void
.end method


# virtual methods
.method public callWithTimeout(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter "timeoutDuration"
    .parameter "timeoutUnit"
    .parameter "amInterruptible"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    const/4 v4, 0x1

    .line 117
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-wide/16 v5, 0x0

    cmp-long v3, p2, v5

    if-lez v3, :cond_0

    move v3, v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad timeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 120
    iget-object v3, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 122
    .local v1, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    if-eqz p5, :cond_1

    .line 124
    :try_start_0
    invoke-interface {v1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 131
    :goto_1
    return-object v3

    .line 119
    .end local v1           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 125
    .restart local v1       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 127
    throw v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 133
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-static {v0, v4}, Lcom/google/common/base/Throwables;->throwCause(Ljava/lang/Exception;Z)Ljava/lang/Exception;

    move-result-object v3

    throw v3

    .line 130
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->makeUninterruptible(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/UninterruptibleFuture;

    move-result-object v2

    .line 131
    .local v2, uninterruptible:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v2, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_1

    .line 135
    .end local v2           #uninterruptible:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :catch_2
    move-exception v0

    .line 136
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 137
    new-instance v3, Lcom/google/common/util/concurrent/UncheckedTimeoutException;

    invoke-direct {v3, v0}, Lcom/google/common/util/concurrent/UncheckedTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
