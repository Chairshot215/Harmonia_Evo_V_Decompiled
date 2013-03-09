.class Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;
.super Ljava/lang/Thread;
.source "ImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/image/ImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HQImageDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;
    }
.end annotation


# instance fields
.field mOutputHeight:I

.field mOutputWidth:I

.field private mPause:Z

.field mRunningTask:Ljava/lang/Integer;

.field private mStop:Z

.field private mTaskList:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/photowidget3d/image/ImageProvider;


# direct methods
.method public constructor <init>(Lcom/htc/photowidget3d/image/ImageProvider;II)V
    .locals 2
    .parameter
    .parameter "outW"
    .parameter "outH"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 428
    iput-object p1, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->this$0:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 420
    iput-boolean v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mStop:Z

    .line 421
    iput-boolean v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mPause:Z

    .line 422
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mTaskList:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mRunningTask:Ljava/lang/Integer;

    .line 424
    iput v1, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mOutputWidth:I

    .line 425
    iput v1, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mOutputHeight:I

    .line 429
    iput p2, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mOutputWidth:I

    .line 430
    iput p3, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mOutputHeight:I

    .line 431
    const-string v0, "HQImageDecoder"

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->setName(Ljava/lang/String;)V

    .line 432
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->setPriority(I)V

    .line 433
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/Integer;)Z
    .locals 4
    .parameter "task"

    .prologue
    const/4 v0, 0x0

    .line 544
    invoke-static {}, Lcom/htc/photowidget3d/image/ImageProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addTask] Task = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    if-nez p1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v0

    .line 548
    :cond_1
    iget-object v1, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mRunningTask:Ljava/lang/Integer;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mTaskList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mTaskList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 553
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->doResume()V

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 585
    invoke-static {}, Lcom/htc/photowidget3d/image/ImageProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[cancel] "

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->setPriority(I)V

    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mStop:Z

    .line 589
    invoke-static {}, Lcom/htc/photowidget3d/util/ImageUtils;->cancelDecode()V

    .line 591
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mTaskList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 593
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->addTask(Ljava/lang/Integer;)Z

    .line 594
    return-void
.end method

.method public doPause()V
    .locals 2

    .prologue
    .line 579
    invoke-static {}, Lcom/htc/photowidget3d/image/ImageProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[doPause] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mPause:Z

    .line 581
    return-void
.end method

.method public doResume()V
    .locals 2

    .prologue
    .line 569
    invoke-static {}, Lcom/htc/photowidget3d/image/ImageProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[doResume] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mPause:Z

    .line 571
    monitor-enter p0

    .line 573
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 574
    monitor-exit p0

    .line 575
    return-void

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadCacheInfo(ILcom/htc/photowidget3d/image/IImage;)Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;
    .locals 4
    .parameter "position"
    .parameter "image"

    .prologue
    .line 598
    new-instance v1, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;

    invoke-direct {v1, p0}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;-><init>(Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;)V

    .line 602
    .local v1, item:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;
    :try_start_0
    invoke-interface {p2}, Lcom/htc/photowidget3d/image/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->mimeType:Ljava/lang/String;

    .line 603
    invoke-interface {p2}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->dataPath:Ljava/lang/String;

    .line 604
    invoke-interface {p2}, Lcom/htc/photowidget3d/image/IImage;->getDateModified()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->dateModify:J

    .line 605
    invoke-interface {p2}, Lcom/htc/photowidget3d/image/IImage;->getFileSize()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->fileSize:J

    .line 606
    invoke-interface {p2}, Lcom/htc/photowidget3d/image/IImage;->getDegreesRotated()I

    move-result v2

    iput v2, v1, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_0
    return-object v1

    .line 608
    :catch_0
    move-exception v0

    .line 610
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeTask(Ljava/lang/Integer;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 560
    invoke-static {}, Lcom/htc/photowidget3d/image/ImageProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeTask] Task = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    if-nez p1, :cond_0

    .line 565
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mTaskList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 17

    .prologue
    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->this$0:Lcom/htc/photowidget3d/image/ImageProvider;

    iget-object v14, v1, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    .line 443
    .local v14, imageList:Lcom/htc/photowidget3d/image/IImageList;
    if-nez v14, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v12

    .line 455
    .local v12, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/photowidget3d/image/ImageProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HQImageDecoder][run] Exception while taking task, Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mStop:Z

    if-nez v1, :cond_0

    .line 450
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mTaskList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mRunningTask:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mRunningTask:Ljava/lang/Integer;

    move-object/from16 v16, v0

    .line 461
    .local v16, task:Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_2

    .line 463
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mStop:Z

    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v14, v1}, Lcom/htc/photowidget3d/image/IImageList;->getImageAt(I)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v13

    .line 478
    .local v13, image:Lcom/htc/photowidget3d/image/IImage;
    if-eqz v13, :cond_1

    .line 481
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->loadCacheInfo(ILcom/htc/photowidget3d/image/IImage;)Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;

    move-result-object v10

    .line 483
    .local v10, cache:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;
    iget-object v1, v10, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->dataPath:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 485
    invoke-static {}, Lcom/htc/photowidget3d/image/ImageProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HQImageDecoder][run] Task = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", go stop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mStop:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 489
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->this$0:Lcom/htc/photowidget3d/image/ImageProvider;

    iget-object v1, v1, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v10, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Lcom/htc/photowidget3d/image/IImage;->getDegreesRotated()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-wide v4, v10, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->dateModify:J

    iget-wide v6, v10, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->fileSize:J

    long-to-int v6, v6

    const v7, 0x1e5c2

    const/4 v8, 0x3

    invoke-virtual/range {v1 .. v8}, Lcom/htc/opensense/album/util/CacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 493
    .local v2, bmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mStop:Z

    if-nez v1, :cond_0

    .line 496
    if-nez v2, :cond_4

    .line 498
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->this$0:Lcom/htc/photowidget3d/image/ImageProvider;

    iget-object v2, v10, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->dataPath:Ljava/lang/String;

    .end local v2           #bmp:Landroid/graphics/Bitmap;
    iget-object v3, v10, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mOutputHeight:I

    invoke-interface {v13}, Lcom/htc/photowidget3d/image/IImage;->getWidth()I

    move-result v6

    invoke-interface {v13}, Lcom/htc/photowidget3d/image/IImage;->getHeight()I

    move-result v7

    iget v8, v10, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->orientation:I

    #calls: Lcom/htc/photowidget3d/image/ImageProvider;->getHQBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;
    invoke-static/range {v1 .. v8}, Lcom/htc/photowidget3d/image/ImageProvider;->access$100(Lcom/htc/photowidget3d/image/ImageProvider;Ljava/lang/String;Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 503
    .restart local v2       #bmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mStop:Z

    if-nez v1, :cond_0

    .line 506
    if-nez v2, :cond_7

    .line 508
    invoke-interface {v13}, Lcom/htc/photowidget3d/image/IImage;->fileCorrupt()V

    .line 519
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->this$0:Lcom/htc/photowidget3d/image/ImageProvider;

    iget-object v15, v1, Lcom/htc/photowidget3d/image/ImageProvider;->mDataRefreshListener:Lcom/htc/photowidget3d/image/ImageProvider$DataRefreshListener;

    .line 520
    .local v15, listener:Lcom/htc/photowidget3d/image/ImageProvider$DataRefreshListener;
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mStop:Z

    if-nez v1, :cond_5

    .line 521
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v15, v1, v2}, Lcom/htc/photowidget3d/image/ImageProvider$DataRefreshListener;->onImageDecoded(ILandroid/graphics/Bitmap;)V

    .line 523
    :cond_5
    monitor-enter p0

    .line 525
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mPause:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->mStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_6

    .line 529
    :try_start_2
    invoke-static {}, Lcom/htc/photowidget3d/image/ImageProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[run] Go sleep"

    invoke-static {v1, v3}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 538
    :cond_6
    :goto_3
    :try_start_3
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 512
    .end local v15           #listener:Lcom/htc/photowidget3d/image/ImageProvider$DataRefreshListener;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->this$0:Lcom/htc/photowidget3d/image/ImageProvider;

    iget-object v1, v1, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x1e5c2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v10, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v13}, Lcom/htc/photowidget3d/image/IImage;->getDegreesRotated()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v10, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->dateModify:J

    iget-wide v8, v10, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder$CacheInfo;->fileSize:J

    long-to-int v8, v8

    const/4 v9, 0x3

    invoke-virtual/range {v1 .. v9}, Lcom/htc/opensense/album/util/CacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    goto :goto_2

    .line 532
    .restart local v15       #listener:Lcom/htc/photowidget3d/image/ImageProvider$DataRefreshListener;
    :catch_1
    move-exception v11

    .line 535
    .local v11, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method
