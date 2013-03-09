.class final Lcom/google/common/util/concurrent/Futures$5;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->compose(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TO;>;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private set:Z

.field final synthetic val$function:Lcom/google/common/base/Function;

.field final synthetic val$future:Ljava/util/concurrent/Future;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$5;->val$function:Lcom/google/common/base/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->lock:Ljava/lang/Object;

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$5;->set:Z

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->value:Ljava/lang/Object;

    return-void
.end method

.method private apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, raw:Ljava/lang/Object;,"TI;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$5;->set:Z

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$function:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->value:Ljava/lang/Object;

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$5;->set:Z

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->value:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$5;->apply(Ljava/lang/Object;)Ljava/lang/Object;

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
            ")TO;"
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
    .line 380
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$5;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
