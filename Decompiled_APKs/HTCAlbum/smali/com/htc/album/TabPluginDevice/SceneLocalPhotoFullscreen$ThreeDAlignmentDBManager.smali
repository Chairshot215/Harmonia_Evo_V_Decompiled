.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;
.super Ljava/lang/Thread;
.source "SceneLocalPhotoFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreeDAlignmentDBManager"
.end annotation


# static fields
.field private static final DEFAULT:I = 0x0

.field private static final LOAD:I = 0x1

.field private static final SAVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "3DAlignmentDBManager"


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private isNeedProcess:Z

.field private mActivity:Landroid/app/Activity;

.field private mCreateTime:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mIsDirty:Z

.field private mStatus:I

.field private mValue:F

.field private stop:Z

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/app/Activity;)V
    .locals 3
    .parameter
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3445
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3436
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mFilePath:Ljava/lang/String;

    .line 3437
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mCreateTime:Ljava/lang/String;

    .line 3438
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mValue:F

    .line 3439
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->isNeedProcess:Z

    .line 3440
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->stop:Z

    .line 3441
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->LOCK:Ljava/lang/Object;

    .line 3442
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mActivity:Landroid/app/Activity;

    .line 3443
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mIsDirty:Z

    .line 3446
    iput v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mStatus:I

    .line 3447
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mActivity:Landroid/app/Activity;

    .line 3448
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;J)V
    .locals 3
    .parameter "filePath"
    .parameter "createTime"

    .prologue
    .line 3537
    if-nez p1, :cond_0

    .line 3538
    const-string v0, "3DAlignmentDBManager"

    const-string v1, "[3DAlignmentDBManager][load] NG - file path is null."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    :goto_0
    return-void

    .line 3541
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3542
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mIsDirty:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3543
    const-string v0, "3DAlignmentDBManager"

    const-string v2, "[3DAlignmentDBManager][load] The same file path."

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3544
    monitor-exit v1

    goto :goto_0

    .line 3552
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3546
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mIsDirty:Z

    .line 3547
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mStatus:I

    .line 3548
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mFilePath:Ljava/lang/String;

    .line 3549
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mCreateTime:Ljava/lang/String;

    .line 3550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->isNeedProcess:Z

    .line 3551
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 3552
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 3571
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3572
    :try_start_0
    const-string v0, "3DAlignmentDBManager"

    const-string v2, "Release"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->stop:Z

    .line 3574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->isNeedProcess:Z

    .line 3575
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 3576
    monitor-exit v1

    .line 3577
    return-void

    .line 3576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 3452
    const-string v7, "3DAlignmentDBManager"

    const-string v8, "[3DAlignmentDBManager] thread start"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    const/4 v4, 0x0

    .line 3454
    .local v4, parallaxManager:Lcom/htc/album/AlbumUtility/PhotoParallaxManager;
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mActivity:Landroid/app/Activity;

    if-eqz v7, :cond_0

    .line 3455
    new-instance v4, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;

    .end local v4           #parallaxManager:Lcom/htc/album/AlbumUtility/PhotoParallaxManager;
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;-><init>(Landroid/content/Context;)V

    .line 3457
    .restart local v4       #parallaxManager:Lcom/htc/album/AlbumUtility/PhotoParallaxManager;
    :cond_0
    const/4 v2, 0x0

    .line 3458
    .local v2, filePath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 3459
    .local v0, createTime:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3460
    .local v5, status:I
    const/4 v6, 0x0

    .line 3462
    .local v6, value:F
    :cond_1
    :goto_0
    if-nez v4, :cond_3

    .line 3463
    const-string v7, "3DAlignmentDBManager"

    const-string v8, "PhotoParallaxManager is null, quit thread"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    :goto_1
    if-eqz v4, :cond_2

    .line 3522
    invoke-virtual {v4}, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->release()V

    .line 3523
    const/4 v4, 0x0

    .line 3525
    :cond_2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mActivity:Landroid/app/Activity;

    .line 3526
    const-string v7, "3DAlignmentDBManager"

    const-string v8, "[3DAlignmentDBManager] thread end"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    return-void

    .line 3466
    :cond_3
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 3467
    :try_start_0
    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->stop:Z

    if-eqz v7, :cond_4

    .line 3468
    const-string v7, "3DAlignmentDBManager"

    const-string v9, "[3DAlignmentDBManager] quit thread"

    invoke-static {v7, v9}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3469
    monitor-exit v8

    goto :goto_1

    .line 3485
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3471
    :cond_4
    :try_start_1
    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->isNeedProcess:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_5

    .line 3473
    :try_start_2
    const-string v7, "3DAlignmentDBManager"

    const-string v9, "[3DAlignmentDBManager] thread go wait."

    invoke-static {v7, v9}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3474
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->LOCK:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3478
    :goto_2
    :try_start_3
    monitor-exit v8

    goto :goto_0

    .line 3475
    :catch_0
    move-exception v1

    .line 3476
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v7, "3DAlignmentDBManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[3DAlignmentDBManager] thread awake because of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3480
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_5
    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mStatus:I

    .line 3481
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mFilePath:Ljava/lang/String;

    .line 3482
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mCreateTime:Ljava/lang/String;

    .line 3483
    iget v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mValue:F

    .line 3484
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->isNeedProcess:Z

    .line 3485
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3486
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 3488
    :pswitch_0
    if-eqz v4, :cond_1

    .line 3489
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x3b864000

    .line 3490
    .local v3, parallax:F
    const-string v7, "3DAlignmentDBManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[3DAlignmentDBManager][LOAD] filePath "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", createTime "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    invoke-virtual {v4, v2, v0}, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->pull(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    .line 3492
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, -0x3b864000

    invoke-static {v3, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_6

    .line 3493
    const-string v7, "3DAlignmentDBManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[3DAlignmentDBManager][LOAD] Load finish "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3494
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F
    invoke-static {v7, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$9302(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;F)F

    .line 3499
    :goto_3
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F
    invoke-static {v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$9300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)F

    move-result v8

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F
    invoke-static {v7, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$9402(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;F)F

    .line 3500
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mActivity:Landroid/app/Activity;

    if-eqz v7, :cond_1

    .line 3501
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mActivity:Landroid/app/Activity;

    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager$1;

    invoke-direct {v8, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3496
    :cond_6
    const-string v7, "3DAlignmentDBManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[3DAlignmentDBManager][LOAD] Cancel Load or Prallax value error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    const/4 v8, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F
    invoke-static {v7, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$9302(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;F)F

    goto :goto_3

    .line 3512
    .end local v3           #parallax:F
    :pswitch_1
    if-eqz v4, :cond_1

    .line 3513
    const-string v7, "3DAlignmentDBManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[3DAlignmentDBManager][Save] filePath "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", create time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    invoke-virtual {v4, v2, v0, v6}, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->push(Ljava/lang/String;Ljava/lang/String;F)Z

    goto/16 :goto_0

    .line 3486
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 3
    .parameter "filePath"
    .parameter "createTime"
    .parameter "value"

    .prologue
    .line 3556
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3557
    :cond_0
    const-string v0, "3DAlignmentDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[3DAlignmentDBManager][save] NG - file path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", create time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3568
    :goto_0
    return-void

    .line 3560
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3561
    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mStatus:I

    .line 3562
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mFilePath:Ljava/lang/String;

    .line 3563
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mCreateTime:Ljava/lang/String;

    .line 3564
    iput p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mValue:F

    .line 3565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->isNeedProcess:Z

    .line 3566
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 3567
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDirty()V
    .locals 3

    .prologue
    .line 3580
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3581
    :try_start_0
    const-string v0, "3DAlignmentDBManager"

    const-string v2, "Set Dirty"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->mIsDirty:Z

    .line 3583
    monitor-exit v1

    .line 3584
    return-void

    .line 3583
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
