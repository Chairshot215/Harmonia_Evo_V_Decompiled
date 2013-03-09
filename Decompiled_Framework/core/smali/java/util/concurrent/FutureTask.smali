.class public Ljava/util/concurrent/FutureTask;
.super Ljava/lang/Object;
.source "FutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/FutureTask$Sync;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final sync:Ljava/util/concurrent/FutureTask$Sync;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TV;>.Sync;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/FutureTask$Sync;

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/FutureTask$Sync;-><init>(Ljava/util/concurrent/FutureTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Ljava/util/concurrent/FutureTask;->sync:Ljava/util/concurrent/FutureTask$Sync;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask$Sync;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/FutureTask$Sync;-><init>(Ljava/util/concurrent/FutureTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Ljava/util/concurrent/FutureTask;->sync:Ljava/util/concurrent/FutureTask$Sync;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->sync:Ljava/util/concurrent/FutureTask$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask$Sync;->innerCancel(Z)Z

    move-result v0

    return v0
.end method

.method protected done()V
    .locals 0

    return-void
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

    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->sync:Ljava/util/concurrent/FutureTask$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask$Sync;->innerGet()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
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

    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->sync:Ljava/util/concurrent/FutureTask$Sync;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/FutureTask$Sync;->innerGet(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->sync:Ljava/util/concurrent/FutureTask$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask$Sync;->innerIsCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->sync:Ljava/util/concurrent/FutureTask$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask$Sync;->innerIsDone()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->sync:Ljava/util/concurrent/FutureTask$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask$Sync;->innerRun()V

    return-void
.end method

.method protected runAndReset()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->sync:Ljava/util/concurrent/FutureTask$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask$Sync;->innerRunAndReset()Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->sync:Ljava/util/concurrent/FutureTask$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask$Sync;->innerSet(Ljava/lang/Object;)V

    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->sync:Ljava/util/concurrent/FutureTask$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask$Sync;->innerSetException(Ljava/lang/Throwable;)V

    return-void
.end method
