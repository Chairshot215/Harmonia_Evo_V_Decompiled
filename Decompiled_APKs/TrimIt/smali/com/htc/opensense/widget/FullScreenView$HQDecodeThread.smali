.class Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;
.super Ljava/lang/Thread;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HQDecodeThread"
.end annotation


# instance fields
.field b:Landroid/graphics/Bitmap;

.field cancel:Z

.field mDone:Z

.field path:Ljava/lang/String;

.field position:I

.field final synthetic this$0:Lcom/htc/opensense/widget/FullScreenView;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 4198
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    .line 4199
    const-string v0, "DecodeHQThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4193
    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    .line 4194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->mDone:Z

    .line 4200
    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    .line 4201
    return-void
.end method

.method private recycledHQBitmap()V
    .locals 1

    .prologue
    .line 4270
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4271
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    .line 4274
    :cond_0
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/String;I)V
    .locals 2
    .parameter "path"
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 4204
    if-nez p1, :cond_0

    .line 4205
    const-string v0, "FullScreen"

    const-string v1, "path not specify, return"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4233
    :goto_0
    return-void

    .line 4208
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4209
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->isFullBitmapReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4211
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    if-eqz v0, :cond_1

    .line 4212
    const-string v0, "FullScreen"

    const-string v1, "operation have canceled"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4215
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4216
    const-string v0, "FullScreen"

    const-string v1, "this path already loaded, return"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4222
    :cond_2
    monitor-enter p0

    .line 4223
    :try_start_0
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    .line 4224
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    .line 4227
    iput p2, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->position:I

    .line 4229
    monitor-enter p0

    .line 4230
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 4231
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4224
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 4237
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$6300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4238
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$6300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;->cancelHighQualityPhoto()V

    .line 4239
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    .line 4240
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->position:I

    .line 4242
    monitor-enter p0

    .line 4243
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    .line 4244
    monitor-exit p0

    .line 4245
    return-void

    .line 4244
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 4265
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->recycledHQBitmap()V

    .line 4266
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel()V

    .line 4267
    return-void
.end method

.method public preStop()V
    .locals 1

    .prologue
    .line 4255
    monitor-enter p0

    .line 4256
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->mDone:Z

    .line 4257
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4258
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel()V

    .line 4259
    monitor-enter p0

    .line 4260
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 4261
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4262
    return-void

    .line 4257
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4261
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 4248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    .line 4249
    monitor-enter p0

    .line 4250
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    .line 4251
    monitor-exit p0

    .line 4252
    return-void

    .line 4251
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 4277
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Landroid/os/Process;->setThreadPriority(II)V

    .line 4279
    :goto_0
    iget-boolean v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->mDone:Z

    if-nez v6, :cond_3

    .line 4280
    monitor-enter p0

    .line 4282
    :try_start_0
    iget-boolean v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 4284
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4289
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 4291
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 4285
    :catch_0
    move-exception v0

    .line 4286
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "FullScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HQDecodeThread][run] wait exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4287
    monitor-exit p0

    goto :goto_0

    .line 4291
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4293
    .local v2, t1:J
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->recycledHQBitmap()V

    .line 4294
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    .line 4296
    const/4 v1, 0x0

    .line 4297
    .local v1, fileName:Ljava/lang/String;
    monitor-enter p0

    .line 4298
    :try_start_4
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    .line 4299
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4301
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$6300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    .line 4302
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$6300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    move-result-object v6

    iget v7, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->position:I

    invoke-interface {v6, v7, v1}, Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;->loadHighQualityPhoto(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    .line 4305
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4307
    .local v4, t2:J
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 4308
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeCB:Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$6400(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    iget v8, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->position:I

    invoke-virtual {v6, v7, v8}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->execute(Landroid/graphics/Bitmap;I)V

    .line 4310
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    goto :goto_0

    .line 4299
    .end local v4           #t2:J
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 4312
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #t1:J
    :cond_3
    return-void
.end method
