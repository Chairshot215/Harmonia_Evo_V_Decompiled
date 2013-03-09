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

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    const-string v0, "DecodeHQThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->mDone:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    return-void
.end method

.method private recycledHQBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-string v0, "FullScreen"

    const-string v1, "path not specify, return"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    if-eqz v0, :cond_2

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

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    if-eqz v0, :cond_1

    const-string v0, "FullScreen"

    const-string v1, "operation have canceled"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FullScreen"

    const-string v1, "this path already loaded, return"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    iput p2, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->position:I

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

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

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$6300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$6300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;->cancelHighQualityPhoto()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->position:I

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exit()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->recycledHQBitmap()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel()V

    return-void
.end method

.method public preStop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->mDone:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel()V

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 9

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Landroid/os/Process;->setThreadPriority(II)V

    :goto_0
    iget-boolean v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->mDone:Z

    if-nez v6, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :catch_0
    move-exception v0

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

    monitor-exit p0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->recycledHQBitmap()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$6300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$6300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    move-result-object v6

    iget v7, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->position:I

    invoke-interface {v6, v7, v1}, Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;->loadHighQualityPhoto(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeCB:Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$6400(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    iget v8, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->position:I

    invoke-virtual {v6, v7, v8}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->execute(Landroid/graphics/Bitmap;I)V

    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel:Z

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    :cond_3
    return-void
.end method
