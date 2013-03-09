.class Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;
.super Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;
.source "LocalPhotoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullviewWorker"
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1


# instance fields
.field private mCenter:I

.field private mForce:Z

.field private mPauseSign:Z

.field private mStopSign:Z

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 428
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 429
    const-string v0, "FullviewWorker"

    invoke-direct {p0, p1, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;Ljava/lang/String;)V

    .line 700
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mStopSign:Z

    .line 701
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mPauseSign:Z

    .line 702
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mForce:Z

    .line 430
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mCenter:I

    .line 431
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 674
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->cancel()V

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mStopSign:Z

    .line 676
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->cancelBitmapOptionsDecode()V

    .line 677
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->AbortLoadImage()V

    .line 678
    monitor-enter p0

    .line 679
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 680
    monitor-exit p0

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pauseDecode()V
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mPauseSign:Z

    if-eqz v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 686
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mPauseSign:Z

    .line 687
    monitor-enter p0

    .line 688
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 689
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mForce:Z

    .line 668
    monitor-enter p0

    .line 669
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 670
    monitor-exit p0

    .line 671
    return-void

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeDecode()V
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mPauseSign:Z

    .line 694
    monitor-enter p0

    .line 695
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 696
    monitor-exit p0

    .line 697
    return-void

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 32

    .prologue
    .line 438
    const/16 v25, 0x0

    .line 440
    .local v25, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mStopSign:Z

    if-nez v2, :cond_6

    .line 441
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mCenter:I

    move/from16 v22, v0

    .line 442
    .local v22, center:I
    move/from16 v4, v22

    .line 444
    .local v4, position:I
    const/16 v29, 0x0

    .line 445
    .local v29, offset:I
    const/16 v23, 0x0

    .line 446
    .local v23, count:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getCacheMgr()Lcom/htc/opensense2/album/cache/CacheManager;

    move-result-object v20

    .line 447
    .local v20, cacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    if-nez v20, :cond_0

    .line 645
    .end local v4           #position:I
    .end local v20           #cacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    .end local v22           #center:I
    .end local v23           #count:I
    .end local v29           #offset:I
    :goto_1
    return-void

    .line 449
    .restart local v4       #position:I
    .restart local v20       #cacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    .restart local v22       #center:I
    .restart local v23       #count:I
    .restart local v29       #offset:I
    :cond_0
    invoke-virtual/range {v20 .. v20}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCacheSize()I

    move-result v28

    .line 450
    .local v28, max:I
    const/16 v20, 0x0

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$200(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I

    move-result v21

    .line 453
    .local v21, cacheMode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$100(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1394

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 455
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mCenter:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mStopSign:Z

    if-nez v2, :cond_2

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    iget-object v0, v2, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v26, v0

    .line 457
    .local v26, imgList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez v26, :cond_7

    .line 621
    .end local v26           #imgList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mStopSign:Z

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mForce:Z

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mCenter:I

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mPauseSign:Z

    if-eqz v2, :cond_1f

    .line 622
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$100(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1395

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 624
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :try_start_1
    invoke-static {}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FullWorker idle "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mCenter:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mStopSign:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mCenter:I

    move/from16 v0, v22

    if-eq v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mPauseSign:Z

    if-eqz v2, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mStopSign:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_5

    .line 630
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V

    .line 631
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 632
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$100(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1394

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 638
    .end local v4           #position:I
    .end local v20           #cacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    .end local v21           #cacheMode:I
    .end local v22           #center:I
    .end local v23           #count:I
    .end local v28           #max:I
    .end local v29           #offset:I
    :catch_0
    move-exception v24

    .line 640
    .local v24, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 644
    .end local v24           #e:Ljava/lang/InterruptedException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$100(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1395

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 458
    .restart local v4       #position:I
    .restart local v20       #cacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    .restart local v21       #cacheMode:I
    .restart local v22       #center:I
    .restart local v23       #count:I
    .restart local v26       #imgList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v28       #max:I
    .restart local v29       #offset:I
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mCenter:I

    move/from16 v0, v22

    if-ne v0, v2, :cond_2

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$200(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I

    move-result v2

    move/from16 v0, v21

    if-ne v0, v2, :cond_2

    .line 461
    mul-int/lit8 v2, v28, 0x2

    move/from16 v0, v29

    if-gt v0, v2, :cond_2

    .line 466
    rem-int/lit8 v2, v29, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    :goto_4
    mul-int v2, v2, v29

    add-int/2addr v4, v2

    .line 467
    if-gez v4, :cond_9

    .line 468
    add-int/lit8 v29, v29, 0x1

    .line 469
    goto/16 :goto_2

    .line 466
    :cond_8
    const/4 v2, -0x1

    goto :goto_4

    .line 472
    :cond_9
    invoke-interface/range {v26 .. v26}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    if-lt v4, v2, :cond_a

    .line 473
    add-int/lit8 v29, v29, 0x1

    .line 474
    goto/16 :goto_2

    .line 477
    :cond_a
    add-int/lit8 v29, v29, 0x1

    .line 478
    add-int/lit8 v23, v23, 0x1

    .line 482
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_2

    .line 485
    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v25

    .line 486
    if-eqz v25, :cond_2

    .line 489
    const/4 v10, 0x0

    .line 490
    .local v10, bmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->loadCacheInfo(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;

    move-result-object v19

    .line 495
    .local v19, cache:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;
    invoke-interface/range {v25 .. v25}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 497
    const/4 v8, 0x3

    .line 498
    .local v8, targetMode:I
    const/4 v2, 0x4

    move/from16 v0, v21

    if-ne v0, v2, :cond_b

    .line 499
    const/4 v8, 0x4

    .line 502
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_c

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$900(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dataPath:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dateModify:J

    move-object/from16 v0, v19

    iget-wide v11, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->fileSize:J

    long-to-int v7, v11

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/opensense2/album/cache/CacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 505
    :cond_c
    if-nez v10, :cond_d

    .line 507
    const/4 v2, 0x3

    move/from16 v0, v21

    if-ne v0, v2, :cond_14

    .line 509
    invoke-interface/range {v25 .. v25}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 511
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_12

    if-nez v10, :cond_12

    .line 513
    invoke-interface/range {v25 .. v25}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fileCorrupted()V

    .line 524
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_d

    if-eqz v10, :cond_d

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$1000(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;

    move-result-object v9

    const/4 v12, 0x3

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dataPath:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v14, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dateModify:J

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->fileSize:J

    long-to-int v0, v2

    move/from16 v16, v0

    const/16 v17, 0x1

    move v11, v4

    invoke-virtual/range {v9 .. v17}, Lcom/htc/opensense2/album/cache/CacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 537
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_2

    .line 600
    .end local v8           #targetMode:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mImageDecodedListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$800(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;

    move-result-object v27

    .line 601
    .local v27, imgListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mPauseSign:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mStopSign:Z

    if-nez v2, :cond_10

    if-eqz v27, :cond_10

    .line 603
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-interface {v0, v1, v4}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;->shouldNotifyDeocde(II)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$200(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$200(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    .line 605
    :cond_f
    move-object/from16 v0, v27

    invoke-interface {v0, v4, v10}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;->onImageDecoded(ILandroid/graphics/Bitmap;)V

    .line 608
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mStopSign:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mForce:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mPauseSign:Z

    if-eqz v2, :cond_1

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$100(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1395

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 610
    invoke-static {}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FullWorker paused"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 614
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mStopSign:Z

    if-nez v2, :cond_11

    .line 615
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V

    .line 616
    :cond_11
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 617
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$100(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1394

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 517
    .end local v27           #imgListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;
    .restart local v8       #targetMode:I
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$600(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$600(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

    move-result-object v2

    invoke-interface {v2, v4, v10}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;->preCacheHandler(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    goto/16 :goto_5

    .line 522
    :cond_13
    invoke-static {}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "no precache listener"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 528
    :cond_14
    const/4 v2, 0x4

    move/from16 v0, v21

    if-ne v0, v2, :cond_d

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    invoke-virtual {v2, v4}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 531
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_d

    if-eqz v10, :cond_d

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$1100(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;

    move-result-object v9

    const/4 v12, 0x4

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dataPath:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v14, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dateModify:J

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->fileSize:J

    long-to-int v0, v2

    move/from16 v16, v0

    const/16 v17, 0x1

    move v11, v4

    invoke-virtual/range {v9 .. v17}, Lcom/htc/opensense2/album/cache/CacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    goto/16 :goto_6

    .line 543
    .end local v8           #targetMode:I
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_19

    const-string v2, "video/x-wmv-drm"

    invoke-interface/range {v25 .. v25}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const/16 v31, 0x1

    .line 545
    .local v31, useCache:Z
    :goto_7
    if-eqz v31, :cond_16

    .line 546
    const/4 v2, 0x4

    move/from16 v0, v21

    if-ne v0, v2, :cond_1a

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$1200(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;

    move-result-object v11

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dataPath:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v14, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dateModify:J

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->fileSize:J

    long-to-int v0, v2

    move/from16 v16, v0

    const/16 v17, 0x4

    const/16 v18, 0x3

    move v13, v4

    invoke-virtual/range {v11 .. v18}, Lcom/htc/opensense2/album/cache/CacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 554
    :cond_16
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_18

    if-nez v10, :cond_18

    invoke-interface/range {v25 .. v25}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v2

    if-nez v2, :cond_18

    .line 555
    const/16 v17, 0x3

    .line 556
    .local v17, source:I
    const-string v2, "video/x-wmv-drm"

    invoke-interface/range {v25 .. v25}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 557
    const/16 v17, 0x1

    .line 559
    :cond_17
    const/4 v2, 0x4

    move/from16 v0, v21

    if-ne v0, v2, :cond_1b

    .line 561
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mStopSign:Z

    if-nez v2, :cond_2

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    invoke-virtual {v2, v4}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->loadBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 566
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_18

    if-eqz v10, :cond_18

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$1400(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;

    move-result-object v9

    const/4 v12, 0x4

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dataPath:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v14, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dateModify:J

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->fileSize:J

    long-to-int v0, v2

    move/from16 v16, v0

    move v11, v4

    invoke-virtual/range {v9 .. v17}, Lcom/htc/opensense2/album/cache/CacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 596
    .end local v17           #source:I
    :cond_18
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-eqz v2, :cond_e

    goto/16 :goto_3

    .line 543
    .end local v31           #useCache:Z
    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_7

    .line 549
    .restart local v31       #useCache:Z
    :cond_1a
    const/4 v2, 0x3

    move/from16 v0, v21

    if-ne v0, v2, :cond_16

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$1300(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;

    move-result-object v11

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dataPath:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v14, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dateModify:J

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->fileSize:J

    long-to-int v0, v2

    move/from16 v16, v0

    const/16 v17, 0x3

    const/16 v18, 0x3

    move v13, v4

    invoke-virtual/range {v11 .. v18}, Lcom/htc/opensense2/album/cache/CacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v10

    goto/16 :goto_8

    .line 569
    .restart local v17       #source:I
    :cond_1b
    const/4 v2, 0x3

    move/from16 v0, v21

    if-ne v0, v2, :cond_18

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->createBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v30

    .line 572
    .local v30, options:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mStopSign:Z

    if-nez v2, :cond_2

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$1500(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-static {v2, v0, v1}, Lcom/htc/opensense2/album/util/ImageUtils;->filmstripBitmap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->releaseBitmapOptions()V

    .line 577
    if-eqz v10, :cond_1c

    .line 579
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$600(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$600(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

    move-result-object v2

    invoke-interface {v2, v4, v10}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;->preCacheHandler(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 586
    :cond_1c
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_18

    .line 588
    if-nez v10, :cond_1e

    .line 589
    invoke-interface/range {v25 .. v25}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fileCorrupted()V

    goto :goto_9

    .line 584
    :cond_1d
    invoke-static {}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "no precache listener"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 591
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$1600(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;

    move-result-object v9

    const/4 v12, 0x3

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dataPath:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v14, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dateModify:J

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->fileSize:J

    long-to-int v0, v2

    move/from16 v16, v0

    move v11, v4

    invoke-virtual/range {v9 .. v17}, Lcom/htc/opensense2/album/cache/CacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_9

    .line 616
    .end local v17           #source:I
    .end local v30           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v31           #useCache:Z
    .restart local v27       #imgListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    .line 631
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    .end local v19           #cache:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;
    .end local v26           #imgList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v27           #imgListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2

    .line 634
    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mForce:Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0
.end method

.method public setCenter(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 648
    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mCenter:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mRefreshFlag:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$1700(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    invoke-static {}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Center do not changed"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const/4 v0, 0x0

    .line 662
    :goto_0
    return v0

    .line 657
    :cond_0
    iput p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$FullviewWorker;->mCenter:I

    .line 659
    monitor-enter p0

    .line 660
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 661
    monitor-exit p0

    .line 662
    const/4 v0, 0x1

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
