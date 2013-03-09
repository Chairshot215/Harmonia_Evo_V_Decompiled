.class public Lcom/htc/opensense/cache/ThreadExecutorHelper;
.super Ljava/lang/Object;
.source "ThreadExecutorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/cache/ThreadExecutorHelper$TaskStopExecutor;
    }
.end annotation


# static fields
.field static final KEEP_ALIVE_TIME:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ThreadExecutorHelper"

.field static final MAX_THREADS:I = 0x2

.field static final MIN_THREADS:I = 0x2

.field static mCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field final queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const/4 v2, 0x2

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public isShutDown()Z
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/cache/ThreadExecutorHelper;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
