.class Lcom/htc/painting/engine/CacheBitmapWorker$1;
.super Landroid/os/Handler;
.source "CacheBitmapWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/engine/CacheBitmapWorker;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/engine/CacheBitmapWorker;


# direct methods
.method constructor <init>(Lcom/htc/painting/engine/CacheBitmapWorker;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 691
    iput-object p1, p0, Lcom/htc/painting/engine/CacheBitmapWorker$1;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const-wide/16 v12, 0x32

    const/4 v8, 0x2

    const/16 v11, 0x303a

    .line 694
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 696
    :pswitch_0
    invoke-virtual {p0, v11}, Lcom/htc/painting/engine/CacheBitmapWorker$1;->removeMessages(I)V

    .line 697
    iget-object v7, p0, Lcom/htc/painting/engine/CacheBitmapWorker$1;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    #calls: Lcom/htc/painting/engine/CacheBitmapWorker;->changeStateAndNotify(I)V
    invoke-static {v7, v8}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$400(Lcom/htc/painting/engine/CacheBitmapWorker;I)V

    .line 698
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/htc/painting/engine/cachebitmap/CacheTask;

    .line 699
    .local v6, task:Lcom/htc/painting/engine/cachebitmap/CacheTask;
    iget-object v7, p0, Lcom/htc/painting/engine/CacheBitmapWorker$1;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    iput-object v6, v7, Lcom/htc/painting/engine/CacheBitmapWorker;->mRunningTask:Lcom/htc/painting/engine/cachebitmap/CacheTask;

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 701
    .local v2, beforeTask:J
    iget-object v7, p0, Lcom/htc/painting/engine/CacheBitmapWorker$1;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v6}, Lcom/htc/painting/engine/cachebitmap/CacheTask;->getRequestKey()J

    move-result-wide v8

    #calls: Lcom/htc/painting/engine/CacheBitmapWorker;->taskValid(J)Z
    invoke-static {v7, v8, v9}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$100(Lcom/htc/painting/engine/CacheBitmapWorker;J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 703
    :try_start_0
    invoke-virtual {v6}, Lcom/htc/painting/engine/cachebitmap/CacheTask;->execute()I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_1
    iget-object v7, p0, Lcom/htc/painting/engine/CacheBitmapWorker$1;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    #calls: Lcom/htc/painting/engine/CacheBitmapWorker;->onTaskEnd(Lcom/htc/painting/engine/cachebitmap/CacheTask;)V
    invoke-static {v7, v6}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$500(Lcom/htc/painting/engine/CacheBitmapWorker;Lcom/htc/painting/engine/cachebitmap/CacheTask;)V

    .line 709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 710
    .local v0, afterTask:J
    const-string v7, "CacheWorker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RunTaskTook "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v0, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/htc/painting/engine/cachebitmap/CacheTask;->getResult()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    .end local v0           #afterTask:J
    :cond_1
    iget-object v7, p0, Lcom/htc/painting/engine/CacheBitmapWorker$1;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/htc/painting/engine/CacheBitmapWorker;->mRunningTask:Lcom/htc/painting/engine/cachebitmap/CacheTask;

    .line 715
    invoke-virtual {p0, v11}, Lcom/htc/painting/engine/CacheBitmapWorker$1;->removeMessages(I)V

    .line 716
    invoke-virtual {p0, v11, v12, v13}, Lcom/htc/painting/engine/CacheBitmapWorker$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 704
    :catch_0
    move-exception v4

    .line 705
    .local v4, ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v6}, Lcom/htc/painting/engine/cachebitmap/CacheTask;->abort()V

    .line 706
    const-string v7, "CacheWorker"

    const-string v8, "CacheWorkerOutOfMemoryError while creating cache bitmap"

    invoke-static {v7, v8}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 719
    .end local v2           #beforeTask:J
    .end local v4           #ex:Ljava/lang/OutOfMemoryError;
    .end local v6           #task:Lcom/htc/painting/engine/cachebitmap/CacheTask;
    :pswitch_1
    iget-object v7, p0, Lcom/htc/painting/engine/CacheBitmapWorker$1;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    #getter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mRequests:Ljava/util/Set;
    invoke-static {v7}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$600(Lcom/htc/painting/engine/CacheBitmapWorker;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/htc/painting/engine/CacheBitmapWorker$1;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    #getter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mCachingState:I
    invoke-static {v7}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$700(Lcom/htc/painting/engine/CacheBitmapWorker;)I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 721
    iget-object v7, p0, Lcom/htc/painting/engine/CacheBitmapWorker$1;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    const/4 v8, 0x1

    #calls: Lcom/htc/painting/engine/CacheBitmapWorker;->changeStateAndNotify(I)V
    invoke-static {v7, v8}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$400(Lcom/htc/painting/engine/CacheBitmapWorker;I)V

    goto/16 :goto_0

    .line 725
    :pswitch_2
    iget-object v7, p0, Lcom/htc/painting/engine/CacheBitmapWorker$1;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    #calls: Lcom/htc/painting/engine/CacheBitmapWorker;->changeStateAndNotify(I)V
    invoke-static {v7, v8}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$400(Lcom/htc/painting/engine/CacheBitmapWorker;I)V

    .line 726
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/htc/painting/engine/cachebitmap/CacheTask;

    .line 727
    .local v5, t:Lcom/htc/painting/engine/cachebitmap/CacheTask;
    invoke-virtual {v5}, Lcom/htc/painting/engine/cachebitmap/CacheTask;->execute()I

    .line 728
    invoke-virtual {p0, v11}, Lcom/htc/painting/engine/CacheBitmapWorker$1;->removeMessages(I)V

    .line 729
    invoke-virtual {p0, v11, v12, v13}, Lcom/htc/painting/engine/CacheBitmapWorker$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 694
    nop

    :pswitch_data_0
    .packed-switch 0x3039
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
