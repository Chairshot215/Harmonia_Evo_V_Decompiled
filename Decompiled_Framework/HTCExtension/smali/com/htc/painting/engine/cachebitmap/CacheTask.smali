.class public abstract Lcom/htc/painting/engine/cachebitmap/CacheTask;
.super Ljava/lang/Object;
.source "CacheTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final RESULT_ABORTED:I = 0x5

.field public static final RESULT_SUCCESSFUL:I = 0x4


# instance fields
.field private mIsRunning:Z

.field protected final mListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

.field protected final mRefData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

.field protected final mRequestKey:J

.field protected mResult:I

.field protected mSubTask:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/painting/engine/cachebitmap/CacheTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mIsRunning:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mResult:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    iput-wide p1, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mRequestKey:J

    iput-object p4, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    iput-object p3, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mRefData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mIsRunning:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mResult:I

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public addSubTask(Lcom/htc/painting/engine/cachebitmap/CacheTask;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearSubTask()V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public execute()I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mIsRunning:Z

    invoke-virtual {p0}, Lcom/htc/painting/engine/cachebitmap/CacheTask;->run()V

    iget v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mResult:I

    return v0
.end method

.method public getRefData()Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mRefData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    return-object v0
.end method

.method public getRequestKey()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mRequestKey:J

    return-wide v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mResult:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mIsRunning:Z

    return v0
.end method

.method public removeSubTask(Lcom/htc/painting/engine/cachebitmap/CacheTask;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract run()V
.end method
