.class Lcom/htc/painting/engine/HtcPaintingView$5$1;
.super Ljava/lang/Object;
.source "HtcPaintingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/engine/HtcPaintingView$5;->onTaskEnd(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/painting/engine/HtcPaintingView$5;

.field final synthetic val$result:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;


# direct methods
.method constructor <init>(Lcom/htc/painting/engine/HtcPaintingView$5;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingView$5$1;->this$1:Lcom/htc/painting/engine/HtcPaintingView$5;

    iput-object p2, p0, Lcom/htc/painting/engine/HtcPaintingView$5$1;->val$result:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 361
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$5$1;->this$1:Lcom/htc/painting/engine/HtcPaintingView$5;

    iget-object v1, v1, Lcom/htc/painting/engine/HtcPaintingView$5;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/htc/painting/engine/HtcPaintingView;->access$400(Lcom/htc/painting/engine/HtcPaintingView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    monitor-enter v2

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$5$1;->this$1:Lcom/htc/painting/engine/HtcPaintingView$5;

    iget-object v1, v1, Lcom/htc/painting/engine/HtcPaintingView$5;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v1}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$5$1;->this$1:Lcom/htc/painting/engine/HtcPaintingView$5;

    iget-object v1, v1, Lcom/htc/painting/engine/HtcPaintingView$5;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView$5$1;->val$result:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    #calls: Lcom/htc/painting/engine/HtcPaintingView;->updateCacheDataIfValid(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)Z
    invoke-static {v1, v3}, Lcom/htc/painting/engine/HtcPaintingView;->access$500(Lcom/htc/painting/engine/HtcPaintingView;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 363
    .local v0, replaced:Z
    :goto_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$5$1;->this$1:Lcom/htc/painting/engine/HtcPaintingView$5;

    iget-object v1, v1, Lcom/htc/painting/engine/HtcPaintingView$5;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 365
    if-nez v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$5$1;->val$result:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->destroy()V

    .line 367
    const-string v1, "HtcPaintingView"

    const-string v3, "TaskEnd: invalid cache, destroy it"

    invoke-static {v1, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$5$1;->this$1:Lcom/htc/painting/engine/HtcPaintingView$5;

    iget-object v1, v1, Lcom/htc/painting/engine/HtcPaintingView$5;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v1}, Lcom/htc/painting/engine/HtcPaintingView;->postInvalidate()V

    .line 370
    const-string v1, "HtcPaintingView"

    const-string v3, "TaskEnd: consume"

    invoke-static {v1, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView$5$1;->this$1:Lcom/htc/painting/engine/HtcPaintingView$5;

    iget-object v1, v1, Lcom/htc/painting/engine/HtcPaintingView$5;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/htc/painting/engine/HtcPaintingView;->access$400(Lcom/htc/painting/engine/HtcPaintingView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 372
    monitor-exit v2

    .line 373
    return-void

    .line 362
    .end local v0           #replaced:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
