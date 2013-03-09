.class Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SameThreadExecutorService"
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private runningTasks:I

.field private shutdown:Z

.field private final termination:Ljava/util/concurrent/locks/Condition;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 237
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    .line 240
    iget-object v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->termination:Ljava/util/concurrent/locks/Condition;

    .line 249
    iput v1, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->runningTasks:I

    .line 250
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->shutdown:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/Executors$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;-><init>()V

    return-void
.end method

.method private endTask()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 344
    :try_start_0
    iget v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->runningTasks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->runningTasks:I

    .line 345
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 351
    return-void

    .line 349
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private startTask()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 329
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Executor already shutdown"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 332
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->runningTasks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->runningTasks:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    iget-object v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 336
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 303
    .local v0, nanos:J
    iget-object v2, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 306
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->isTerminated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    const/4 v2, 0x1

    .line 315
    iget-object v3, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return v2

    .line 308
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 309
    const/4 v2, 0x0

    .line 315
    iget-object v3, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 311
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->startTask()V

    .line 256
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->endTask()V

    .line 260
    return-void

    .line 258
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->endTask()V

    throw v0
.end method

.method public isShutdown()Z
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 266
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object v1, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isTerminated()Z
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 293
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->shutdown:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->runningTasks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 276
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object v0, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 280
    return-void

    .line 278
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;->shutdown()V

    .line 286
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
