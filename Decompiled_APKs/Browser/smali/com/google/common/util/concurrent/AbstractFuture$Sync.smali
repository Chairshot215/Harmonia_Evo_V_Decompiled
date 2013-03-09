.class final Lcom/google/common/util/concurrent/AbstractFuture$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = 0x4

.field static final COMPLETED:I = 0x2

.field static final COMPLETING:I = 0x1

.field static final RUNNING:I

.field private static final serialVersionUID:J


# instance fields
.field private exception:Ljava/util/concurrent/ExecutionException;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method

.method private complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    .locals 3
    .parameter
    .parameter "t"
    .parameter "finalState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    .local p1, v:Ljava/lang/Object;,"TV;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->value:Ljava/lang/Object;

    .line 313
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/util/concurrent/ExecutionException;

    .line 314
    invoke-virtual {p0, p3}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->releaseShared(I)Z

    move v0, v1

    .line 319
    :cond_0
    return v0

    .line 313
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, p2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 247
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    .line 248
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 260
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error, synchronizer in invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :pswitch_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/util/concurrent/ExecutionException;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/util/concurrent/ExecutionException;

    throw v1

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->value:Ljava/lang/Object;

    return-object v1

    .line 257
    :pswitch_2
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Task was cancelled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method cancel()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    const/4 v1, 0x0

    .line 297
    const/4 v0, 0x4

    invoke-direct {p0, v1, v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 237
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->acquireSharedInterruptibly(I)V

    .line 238
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method get(J)Ljava/lang/Object;
    .locals 2
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 220
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout waiting for task."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isCancelled()Z
    .locals 2

    .prologue
    .line 276
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

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

.method isDone()Z
    .locals 1

    .prologue
    .line 269
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method set(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    .local p1, v:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method setException(Ljava/lang/Throwable;)Z
    .locals 2
    .parameter "t"

    .prologue
    .line 290
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method protected tryAcquireShared(I)I
    .locals 1
    .parameter "ignored"

    .prologue
    .line 195
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected tryReleaseShared(I)Z
    .locals 1
    .parameter "finalState"

    .prologue
    .line 207
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture$Sync;,"Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->setState(I)V

    .line 208
    const/4 v0, 0x1

    return v0
.end method
