.class public Ljava/util/concurrent/ExecutorCompletionService;
.super Ljava/lang/Object;
.source "ExecutorCompletionService.java"

# interfaces
.implements Ljava/util/concurrent/CompletionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/CompletionService",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final aes:Ljava/util/concurrent/AbstractExecutorService;

.field private final completionQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService;->executor:Ljava/util/concurrent/Executor;

    instance-of v0, p1, Ljava/util/concurrent/AbstractExecutorService;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/concurrent/AbstractExecutorService;

    :goto_0
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    return-void

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<TV;>;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService;->executor:Ljava/util/concurrent/Executor;

    instance-of v0, p1, Ljava/util/concurrent/AbstractExecutorService;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/concurrent/AbstractExecutorService;

    :goto_0
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    iput-object p2, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    return-void

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/util/concurrent/ExecutorCompletionService;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    goto :goto_0
.end method

.method private newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public poll()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ExecutorCompletionService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/ExecutorCompletionService;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;

    invoke-direct {v2, p0, v0}, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;-><init>(Ljava/util/concurrent/ExecutorCompletionService;Ljava/util/concurrent/RunnableFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ExecutorCompletionService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/ExecutorCompletionService;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;

    invoke-direct {v2, p0, v0}, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;-><init>(Ljava/util/concurrent/ExecutorCompletionService;Ljava/util/concurrent/RunnableFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public take()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method
