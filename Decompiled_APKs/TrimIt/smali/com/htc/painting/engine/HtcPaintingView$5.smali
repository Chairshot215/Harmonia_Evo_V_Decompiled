.class Lcom/htc/painting/engine/HtcPaintingView$5;
.super Ljava/lang/Object;
.source "HtcPaintingView.java"

# interfaces
.implements Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/engine/HtcPaintingView;->startWorkers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/engine/HtcPaintingView;


# direct methods
.method constructor <init>(Lcom/htc/painting/engine/HtcPaintingView;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingView$5;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskBegin(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V
    .locals 1
    .parameter "key"
    .parameter "result"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView$5;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    iput-object p3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 347
    return-void
.end method

.method public onTaskEnd(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V
    .locals 4
    .parameter "key"
    .parameter "result"

    .prologue
    .line 356
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$5;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/htc/painting/engine/HtcPaintingView;->access$400(Lcom/htc/painting/engine/HtcPaintingView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    monitor-enter v2

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$5;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/painting/engine/HtcPaintingView;->access$600(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/htc/painting/engine/HtcPaintingView$5$1;

    invoke-direct {v3, p0, p3}, Lcom/htc/painting/engine/HtcPaintingView$5$1;-><init>(Lcom/htc/painting/engine/HtcPaintingView$5;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :try_start_1
    const-string v1, "HtcPaintingView"

    const-string v3, "TaskEnd: put"

    invoke-static {v1, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$5;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/htc/painting/engine/HtcPaintingView;->access$400(Lcom/htc/painting/engine/HtcPaintingView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 381
    const-string v1, "HtcPaintingView"

    const-string v3, "TaskEnd: put- leave"

    invoke-static {v1, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 387
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 385
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onTaskRunning(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;I)V
    .locals 0
    .parameter "key"
    .parameter "result"
    .parameter "progress"

    .prologue
    .line 352
    return-void
.end method
