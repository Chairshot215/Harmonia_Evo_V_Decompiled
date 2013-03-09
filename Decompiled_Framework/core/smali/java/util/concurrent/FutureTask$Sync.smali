.class final Ljava/util/concurrent/FutureTask$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "FutureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Sync"
.end annotation


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final RAN:I = 0x2

.field private static final READY:I = 0x0

.field private static final RUNNING:I = 0x1

.field private static final serialVersionUID:J = -0x6ca30f4d402ddea1L


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Throwable;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile runner:Ljava/lang/Thread;

.field final synthetic this$0:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Ljava/util/concurrent/FutureTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    iput-object p2, p0, Ljava/util/concurrent/FutureTask$Sync;->callable:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private ranOrCancelled(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method innerCancel(Z)Z
    .locals 4

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/concurrent/FutureTask$Sync;->ranOrCancelled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/FutureTask$Sync;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    invoke-virtual {p0, v2}, Ljava/util/concurrent/FutureTask$Sync;->releaseShared(I)Z

    iget-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->done()V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method innerGet()Ljava/lang/Object;
    .locals 2
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

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/FutureTask$Sync;->acquireSharedInterruptibly(I)V

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->result:Ljava/lang/Object;

    return-object v0
.end method

.method innerGet(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/concurrent/FutureTask$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->result:Ljava/lang/Object;

    return-object v0
.end method

.method innerIsCancelled()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method innerIsDone()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask$Sync;->ranOrCancelled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method innerRun()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/FutureTask$Sync;->compareAndSetState(II)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v2

    if-ne v2, v4, :cond_1

    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Ljava/util/concurrent/FutureTask$Sync;->releaseShared(I)Z

    goto :goto_0
.end method

.method innerRunAndReset()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/FutureTask$Sync;->compareAndSetState(II)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/FutureTask$Sync;->compareAndSetState(II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method innerSet(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/FutureTask$Sync;->releaseShared(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/FutureTask$Sync;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Ljava/util/concurrent/FutureTask$Sync;->result:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/FutureTask$Sync;->releaseShared(I)Z

    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->done()V

    goto :goto_0
.end method

.method innerSetException(Ljava/lang/Throwable;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/FutureTask$Sync;->releaseShared(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/FutureTask$Sync;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/FutureTask$Sync;->releaseShared(I)Z

    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->done()V

    goto :goto_0
.end method

.method protected tryAcquireShared(I)I
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->innerIsDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected tryReleaseShared(I)Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    const/4 v0, 0x1

    return v0
.end method
