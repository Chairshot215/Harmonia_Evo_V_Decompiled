.class Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "UrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/graphics/drawable/UrlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/graphics/drawable/UrlDrawable;


# direct methods
.method public constructor <init>(Lcom/htc/graphics/drawable/UrlDrawable;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p2, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    .line 343
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 344
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 9

    .prologue
    .line 348
    const/4 v1, 0x0

    .line 350
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 351
    if-nez v1, :cond_1

    .line 352
    sget-boolean v4, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 353
    const-string v4, "UrlDrawable"

    const-string v5, "[%s][%s][%d] FutureTask completed without a bitmap return"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v8, v8, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    sget-boolean v4, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 362
    const-string v4, "UrlDrawable"

    const-string v5, "[%s][%s][%d] FutureTask completed with a recycled bitmap return"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v8, v8, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 380
    :catch_0
    move-exception v2

    .line 381
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_1
    sget-boolean v4, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 382
    const-string v4, "UrlDrawable"

    const-string v5, "[%s][%s][%d] FutureTask interrupted"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v8, v8, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 408
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    throw v4

    .line 370
    :cond_2
    :try_start_2
    sget-boolean v4, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v4, :cond_3

    .line 371
    const-string v4, "UrlDrawable"

    const-string v5, "[%s][%s][%d] FutureTask completed successfully"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v8, v8, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_3
    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #getter for: Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/graphics/drawable/UrlDrawable;->access$000(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v6, v6, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 387
    :catch_1
    move-exception v2

    .line 388
    .local v2, e:Ljava/util/concurrent/CancellationException;
    :try_start_3
    sget-boolean v4, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 389
    const-string v4, "UrlDrawable"

    const-string v5, "[%s][%s][%d] FutureTask cancelled"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v8, v8, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 394
    .end local v2           #e:Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v2

    .line 395
    .local v2, e:Ljava/util/concurrent/ExecutionException;
    sget-boolean v4, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 396
    const-string v4, "UrlDrawable"

    const-string v5, "[%s][%s][%d] FutureTask had ExecutionException"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v8, v8, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 401
    .end local v2           #e:Ljava/util/concurrent/ExecutionException;
    :catch_3
    move-exception v3

    .line 402
    .local v3, t:Ljava/lang/Throwable;
    sget-boolean v4, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 403
    const-string v4, "UrlDrawable"

    const-string v5, "[%s][%s][%d] FutureTask had Throwable"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v8, v8, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
