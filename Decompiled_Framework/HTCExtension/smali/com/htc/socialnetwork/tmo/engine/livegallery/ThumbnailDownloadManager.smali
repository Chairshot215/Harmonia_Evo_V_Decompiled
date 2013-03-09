.class public Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ThumbnailDownloadManager.java"


# static fields
.field static final MAX_THREADS:I = 0x2

.field static final MIN_THREADS:I = 0x2

.field static mManager:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

.field static final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->mManager:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    const/4 v1, 0x2

    const-wide/16 v3, 0x64

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public static GetInstance()Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;
    .locals 1

    sget-object v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->mManager:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    invoke-direct {v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;-><init>()V

    sput-object v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->mManager:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    :cond_0
    sget-object v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->mManager:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    return-object v0
.end method


# virtual methods
.method public Cancel(Ljava/lang/String;)Z
    .locals 6

    sget-object v5, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    instance-of v4, v3, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;

    if-eqz v4, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->GetUri()Ljava/lang/String;

    move-result-object v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v2}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;->Cancel()V

    sget-object v4, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v5

    :goto_0
    return v4

    :cond_1
    monitor-exit v5

    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public CancelAll()V
    .locals 2

    sget-object v1, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
