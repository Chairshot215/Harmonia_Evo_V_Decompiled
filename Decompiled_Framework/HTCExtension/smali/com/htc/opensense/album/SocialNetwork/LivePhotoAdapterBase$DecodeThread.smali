.class Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;
.super Ljava/lang/Thread;
.source "LivePhotoAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecodeThread"
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1


# instance fields
.field private mCenter:I

.field private mDecodeFile:Ljava/lang/String;

.field private mDecodePos:I

.field private mForce:Z

.field private mPauseSign:Z

.field private mStopSign:Z

.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mDecodeFile:Ljava/lang/String;

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mDecodePos:I

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    iput-boolean v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    iput-boolean v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mPauseSign:Z

    iput-boolean v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mForce:Z

    const-string v0, "LivePhotoAdapterBase::DecodeThread"

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->setName(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->setPriority(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->setPriority(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pauseDecode()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mPauseSign:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mPauseSign:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mForce:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeDecode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mPauseSign:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

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
    .locals 17

    const/4 v7, 0x0

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    move v2, v8

    const/4 v14, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getMaxDownloadBuffer()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v5

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ge v9, v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    if-eq v8, v1, :cond_6

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mForce:Z

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    if-eq v8, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mPauseSign:Z

    if-eqz v1, :cond_10

    :cond_2
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    invoke-virtual {v4, v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isCenterOnscreenItemComplete(I)Z

    move-result v4

    if-ne v1, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    const/16 v4, 0x1395

    const/4 v6, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v4, v6, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    :cond_3
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    if-ne v8, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V

    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->access$400(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    const/16 v4, 0x1394

    const/4 v6, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v4, v6, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_5
    return-void

    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v1

    if-ne v5, v1, :cond_1

    mul-int/lit8 v1, v13, 0x2

    if-gt v14, v1, :cond_1

    rem-int/lit8 v1, v14, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_7

    const/4 v1, 0x1

    :goto_3
    mul-int/2addr v1, v14

    add-int/2addr v2, v1

    if-gez v2, :cond_8

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v1, -0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->access$000(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_9

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->access$100(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v7, v4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isFileCacheExist(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;Z)Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    move-result-object v12

    if-eqz v12, :cond_0

    const/4 v1, -0x2

    iget v4, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-eq v1, v4, :cond_0

    const/4 v1, -0x1

    iget v4, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-eq v1, v4, :cond_0

    const/4 v1, 0x2

    iget v4, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-eq v1, v4, :cond_0

    iget v1, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v1, :cond_e

    iget-object v15, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    :cond_a
    :goto_4
    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mDecodeFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mDecodePos:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mDecodeFile:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getBitmapCache(ILjava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v2, v15}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_f

    sget-object v1, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->ORIENTATION_ANGLE:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mOrientation:I
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->access$200(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)I

    move-result v4

    aget v10, v1, v4

    invoke-static {v3, v10}, Lcom/htc/opensense/album/util/ImageUtils;->rotatePhotoByOrientaton(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mDecodeFile:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setBitmapCache(ILandroid/graphics/Bitmap;Ljava/lang/String;II)V

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mPauseSign:Z

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mForce:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mPauseSign:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    const/16 v4, 0x1395

    const/4 v6, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v4, v6, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    const-string v1, "LivePhotoAdapterBase"

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][run]: paused..."

    invoke-static {v1, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    if-nez v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V

    :cond_d
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->access$300(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    const/16 v4, 0x1394

    const/4 v6, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v4, v6, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x1

    iget v4, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v1, v4, :cond_a

    iget-object v15, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    goto/16 :goto_4

    :cond_f
    const-string v1, "LivePhotoAdapterBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][LivePhotoAdapterBase][run]: doImageDecode failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    const/4 v1, 0x0

    iput-boolean v1, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    const/4 v1, 0x0

    iput-boolean v1, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1

    :cond_10
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mForce:Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0
.end method

.method public setCenter(I)Z
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    if-ne v0, p1, :cond_0

    :cond_0
    iput p1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
