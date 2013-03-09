.class Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;
.super Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;
.source "LocalPhotoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbDecodeThread"
.end annotation


# static fields
.field private static final DECODE_END_MESSAGE_DELAY:I = 0x1f4


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 178
    const-string v0, "GridviewLoader"

    invoke-direct {p0, p1, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;Ljava/lang/String;)V

    .line 420
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mQueue:Ljava/util/Queue;

    .line 421
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mLock:Ljava/lang/Object;

    .line 179
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 376
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 377
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 378
    .local v0, key:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 383
    monitor-exit v2

    .line 384
    return-void

    .line 383
    .end local v0           #key:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 394
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->cancel()V

    .line 397
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mStopSign:Z

    .line 399
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->cancelBitmapOptionsDecode()V

    .line 400
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 401
    monitor-exit v1

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 387
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 389
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 390
    monitor-exit v1

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pauseDecode()V
    .locals 2

    .prologue
    .line 405
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mPauseSign:Z

    .line 408
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 409
    monitor-exit v1

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeDecode()V
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mPauseSign:Z

    .line 416
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 417
    monitor-exit v1

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 28

    .prologue
    .line 182
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mStopSign:Z

    if-nez v2, :cond_2

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    iget-object v0, v2, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v23, v0

    .line 184
    .local v23, imgList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$100(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Landroid/os/Handler;

    move-result-object v25

    .line 186
    .local v25, notifyDecodeHandler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    if-nez v2, :cond_1

    if-eqz v23, :cond_1

    if-nez v25, :cond_5

    .line 187
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mStopSign:Z

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decode break caused by mDeleteMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "imgList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", notifyDecodeHandler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 190
    .local v24, msg:Ljava/lang/String;
    invoke-static {}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$000()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .end local v23           #imgList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v24           #msg:Ljava/lang/String;
    .end local v25           #notifyDecodeHandler:Landroid/os/Handler;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$200(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$100(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Landroid/os/Handler;

    move-result-object v27

    .line 356
    .local v27, uiHandler:Landroid/os/Handler;
    if-eqz v27, :cond_4

    .line 357
    const/16 v2, 0x1395

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 358
    const/16 v2, 0x1395

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    :cond_3
    const/16 v2, 0x1395

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 365
    .end local v27           #uiHandler:Landroid/os/Handler;
    :cond_4
    return-void

    .line 194
    .restart local v23       #imgList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v25       #notifyDecodeHandler:Landroid/os/Handler;
    :cond_5
    const/4 v4, -0x1

    .line 196
    .local v4, position:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 198
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mStopSign:Z

    if-eqz v2, :cond_6

    .line 199
    monitor-exit v3

    goto :goto_1

    .line 228
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 202
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mPauseSign:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ge v2, v5, :cond_a

    .line 203
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$200(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    .line 204
    const/16 v2, 0x1395

    const-wide/16 v5, 0x1f4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mStopSign:Z

    if-nez v2, :cond_9

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 223
    :cond_9
    :goto_2
    :try_start_3
    monitor-exit v3

    goto/16 :goto_0

    .line 220
    :catch_0
    move-exception v20

    .line 221
    .local v20, e:Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 226
    .end local v20           #e:Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 228
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleBegin:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$300(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I

    move-result v2

    if-lt v4, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleEnd:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$400(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I

    move-result v2

    if-le v4, v2, :cond_c

    .line 233
    :cond_b
    invoke-static {}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decode break caused by position out of visible range, position = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mVidibleBegin = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleBegin:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$300(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mVisibleEnd = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mVisibleEnd:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$400(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_c
    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    if-nez v2, :cond_d

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoder skip caused by empty image list: position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 240
    .local v21, errMsg:Ljava/lang/String;
    invoke-static {}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$000()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    .end local v21           #errMsg:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v22

    .line 245
    .local v22, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v22, :cond_e

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoder skip caused by no such element in image list: position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 247
    .restart local v21       #errMsg:Ljava/lang/String;
    invoke-static {}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$000()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    .end local v21           #errMsg:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mStopSign:Z

    if-nez v2, :cond_2

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->loadCacheInfo(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;

    move-result-object v19

    .line 255
    .local v19, cache:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$200(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    .line 256
    const/16 v2, 0x1395

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 257
    const/16 v2, 0x1395

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    :cond_f
    const/16 v2, 0x1394

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    :cond_10
    const/4 v11, 0x0

    .line 264
    .local v11, bmp:Landroid/graphics/Bitmap;
    const/4 v9, 0x1

    .line 266
    .local v9, cacheSource:I
    invoke-interface/range {v22 .. v22}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 267
    const/4 v9, 0x1

    .line 277
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mStopSign:Z

    if-nez v2, :cond_2

    .line 279
    if-nez v11, :cond_11

    invoke-interface/range {v22 .. v22}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v2

    if-nez v2, :cond_11

    .line 280
    invoke-interface/range {v22 .. v22}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 281
    invoke-interface/range {v22 .. v22}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 308
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mStopSign:Z

    if-nez v2, :cond_2

    .line 310
    if-nez v11, :cond_17

    .line 311
    invoke-interface/range {v22 .. v22}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fileCorrupted()V

    .line 337
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mStopSign:Z

    if-nez v2, :cond_2

    .line 342
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mStopSign:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mImageDecodedListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$800(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$200(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mImageDecodedListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$800(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;

    move-result-object v2

    invoke-interface {v2, v4, v11}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ImageDecodedListener;->onImageDecoded(ILandroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 348
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 269
    :cond_12
    const-string v2, "video/x-wmv-drm"

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 270
    const/4 v9, 0x1

    goto :goto_3

    .line 273
    :cond_13
    const/4 v9, 0x3

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$500(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dataPath:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dateModify:J

    move-object/from16 v0, v19

    iget-wide v7, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->fileSize:J

    long-to-int v7, v7

    const/4 v8, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/opensense2/album/cache/CacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_3

    .line 288
    :cond_14
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mStopSign:Z

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMode:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$200(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->createBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v26

    .line 290
    .local v26, options:Landroid/graphics/BitmapFactory$Options;
    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v2, v1}, Lcom/htc/opensense2/album/util/ImageUtils;->loadSquareBitmap(Lcom/htc/opensense2/album/util/ImageManager$IImage;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 291
    const/4 v2, 0x1

    move-object/from16 v0, v26

    iget-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-ne v2, v3, :cond_16

    .line 292
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Bitmap decoding canceled!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 296
    .end local v26           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v20

    .line 297
    .restart local v20       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-static {}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-eqz v11, :cond_15

    .line 299
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 301
    :cond_15
    const/4 v11, 0x0

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->releaseBitmapOptions()V

    goto/16 :goto_4

    .end local v20           #e:Ljava/lang/Exception;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->releaseBitmapOptions()V

    goto/16 :goto_4

    :catchall_1
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->releaseBitmapOptions()V

    throw v2

    .line 317
    :cond_17
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$600(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mPreCacheListener:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$600(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;

    move-result-object v2

    invoke-interface {v2, v4, v11}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;->preCacheHandler(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v11

    .line 329
    :cond_18
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mStopSign:Z

    if-nez v2, :cond_2

    .line 331
    if-eqz v11, :cond_11

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$700(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Lcom/htc/opensense2/album/cache/CacheManager;

    move-result-object v10

    const/4 v13, 0x2

    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dataPath:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v15, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dateModify:J

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->fileSize:J

    long-to-int v0, v2

    move/from16 v17, v0

    move v12, v4

    move/from16 v18, v9

    invoke-virtual/range {v10 .. v18}, Lcom/htc/opensense2/album/cache/CacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    goto/16 :goto_5

    .line 321
    :catch_3
    move-exception v20

    .line 322
    .restart local v20       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    if-eqz v11, :cond_19

    .line 324
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 326
    :cond_19
    const/4 v11, 0x0

    goto :goto_6
.end method

.method public setDeleteMode(Z)V
    .locals 0
    .parameter "doDelete"

    .prologue
    .line 369
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->setDeleteMode(Z)V

    .line 370
    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$ThumbDecodeThread;->cancel()V

    .line 373
    :cond_0
    return-void
.end method
