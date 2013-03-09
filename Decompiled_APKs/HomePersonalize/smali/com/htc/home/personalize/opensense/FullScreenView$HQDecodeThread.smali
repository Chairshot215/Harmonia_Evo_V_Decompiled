.class Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;
.super Ljava/lang/Thread;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HQDecodeThread"
.end annotation


# instance fields
.field b:Landroid/graphics/Bitmap;

.field cancel:Z

.field degrees:I

.field mDone:Z

.field path:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/home/personalize/opensense/FullScreenView;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3771
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 3772
    const-string v0, "DecodeHQThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3766
    iput-boolean v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->cancel:Z

    .line 3767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->mDone:Z

    .line 3773
    iput-boolean v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->cancel:Z

    .line 3774
    return-void
.end method

.method private recycledHQBitmap()V
    .locals 1

    .prologue
    .line 3827
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3828
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    .line 3831
    :cond_0
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/String;I)V
    .locals 2
    .parameter "path"
    .parameter "degree"

    .prologue
    .line 3777
    if-nez p1, :cond_0

    .line 3778
    const-string v0, "FullScreen"

    const-string v1, "path not specify, return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    :goto_0
    return-void

    .line 3781
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3782
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->cancel:Z

    if-eqz v0, :cond_1

    .line 3783
    const-string v0, "FullScreen"

    const-string v1, "operation have canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3786
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3787
    const-string v0, "FullScreen"

    const-string v1, "this path already loaded, return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3792
    :cond_2
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    .line 3793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->cancel:Z

    .line 3794
    iput p2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->degrees:I

    .line 3796
    monitor-enter p0

    .line 3797
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 3798
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 3804
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3805
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;->cancelHighQualityPhoto()V

    .line 3806
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->cancel:Z

    .line 3807
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    .line 3808
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->degrees:I

    .line 3809
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 3822
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->recycledHQBitmap()V

    .line 3823
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->cancel()V

    .line 3824
    return-void
.end method

.method public preStop()V
    .locals 1

    .prologue
    .line 3812
    monitor-enter p0

    .line 3813
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->mDone:Z

    .line 3814
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3815
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->cancel()V

    .line 3816
    monitor-enter p0

    .line 3817
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 3818
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3819
    return-void

    .line 3814
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3818
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 3834
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 3836
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->mDone:Z

    if-nez v5, :cond_4

    .line 3837
    monitor-enter p0

    .line 3838
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 3839
    iget-boolean v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->cancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 3841
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3845
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 3847
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 3842
    :catch_0
    move-exception v0

    .line 3843
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 3847
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3849
    .local v1, t1:J
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->recycledHQBitmap()V

    .line 3850
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->cancel:Z

    .line 3852
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;
    invoke-static {v5}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3853
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;
    invoke-static {v5}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->path:Ljava/lang/String;

    iget v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->degrees:I

    invoke-interface {v5, v6, v7}, Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;->loadHighQualityPhoto(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    .line 3856
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3857
    .local v3, t2:J
    sget-boolean v5, Lcom/htc/home/personalize/opensense/Constants;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "FullScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decode HQ result takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v3, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3858
    :cond_3
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 3859
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeCB:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;
    invoke-static {v5}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5900(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;->execute(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3862
    .end local v1           #t1:J
    .end local v3           #t2:J
    :cond_4
    return-void
.end method
