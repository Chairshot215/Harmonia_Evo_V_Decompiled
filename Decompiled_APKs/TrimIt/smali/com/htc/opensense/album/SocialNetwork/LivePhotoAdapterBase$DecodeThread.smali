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
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mDecodeFile:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mDecodePos:I

    .line 55
    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    .line 56
    iput-boolean v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    .line 57
    iput-boolean v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mPauseSign:Z

    .line 58
    iput-boolean v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mForce:Z

    .line 62
    const-string v0, "LivePhotoAdapterBase::DecodeThread"

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->setName(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->setPriority(I)V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    .line 65
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->setPriority(I)V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    .line 246
    monitor-enter p0

    .line 248
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 249
    monitor-exit p0

    .line 251
    return-void

    .line 249
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
    .line 255
    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mPauseSign:Z

    if-eqz v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mPauseSign:Z

    .line 258
    monitor-enter p0

    .line 260
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 261
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
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mForce:Z

    .line 236
    monitor-enter p0

    .line 238
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 239
    monitor-exit p0

    .line 240
    return-void

    .line 239
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
    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mPauseSign:Z

    .line 267
    monitor-enter p0

    .line 269
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 270
    monitor-exit p0

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 17

    .prologue
    .line 69
    const/4 v7, 0x0

    .line 72
    .local v7, aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    if-nez v1, :cond_5

    .line 74
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    .line 75
    .local v8, center:I
    move v2, v8

    .line 77
    .local v2, position:I
    const/4 v14, 0x0

    .line 78
    .local v14, offset:I
    const/4 v9, 0x0

    .line 79
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getMaxDownloadBuffer()I

    move-result v13

    .line 80
    .local v13, max:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v5

    .line 82
    .local v5, cacheMode:I
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

    .line 84
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    if-eq v8, v1, :cond_6

    .line 187
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

    .line 189
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

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    const/16 v4, 0x1395

    const/4 v6, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v4, v6, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 192
    :cond_3
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :try_start_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    if-ne v8, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    if-nez v1, :cond_4

    .line 197
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V

    .line 198
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->access$400(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 201
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

    .line 208
    .end local v2           #position:I
    .end local v5           #cacheMode:I
    .end local v8           #center:I
    .end local v9           #count:I
    .end local v13           #max:I
    .end local v14           #offset:I
    :catch_0
    move-exception v11

    .line 211
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 213
    .end local v11           #e:Ljava/lang/InterruptedException;
    :cond_5
    return-void

    .line 86
    .restart local v2       #position:I
    .restart local v5       #cacheMode:I
    .restart local v8       #center:I
    .restart local v9       #count:I
    .restart local v13       #max:I
    .restart local v14       #offset:I
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v1

    if-ne v5, v1, :cond_1

    .line 88
    mul-int/lit8 v1, v13, 0x2

    if-gt v14, v1, :cond_1

    .line 93
    rem-int/lit8 v1, v14, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_7

    const/4 v1, 0x1

    :goto_3
    mul-int/2addr v1, v14

    add-int/2addr v2, v1

    .line 94
    if-gez v2, :cond_8

    .line 96
    add-int/lit8 v14, v14, 0x1

    .line 97
    goto/16 :goto_1

    .line 93
    :cond_7
    const/4 v1, -0x1

    goto :goto_3

    .line 100
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->access$000(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_9

    .line 102
    add-int/lit8 v14, v14, 0x1

    .line 103
    goto/16 :goto_1

    .line 106
    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 107
    add-int/lit8 v9, v9, 0x1

    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, bitmap:Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 114
    .local v15, uriCacheFile:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 115
    .local v12, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->access$100(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    move-object v7, v0

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v7, v4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isFileCacheExist(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;Z)Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 121
    const/4 v1, -0x2

    iget v4, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-eq v1, v4, :cond_0

    const/4 v1, -0x1

    iget v4, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-eq v1, v4, :cond_0

    const/4 v1, 0x2

    iget v4, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-eq v1, v4, :cond_0

    .line 129
    iget v1, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v1, :cond_e

    .line 130
    iget-object v15, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 134
    :cond_a
    :goto_4
    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mDecodeFile:Ljava/lang/String;

    .line 135
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mDecodePos:I

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mDecodeFile:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getBitmapCache(ILjava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 142
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 144
    :cond_b
    const/4 v3, 0x0

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v2, v15}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 148
    sget-object v1, Lcom/htc/opensense/album/util/OrientationSensorMonitor;->ORIENTATION_ANGLE:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mOrientation:I
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->access$200(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)I

    move-result v4

    aget v10, v1, v4

    .line 149
    .local v10, degree:I
    invoke-static {v3, v10}, Lcom/htc/opensense/album/util/ImageUtils;->rotatePhotoByOrientaton(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mDecodeFile:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setBitmapCache(ILandroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 163
    .end local v10           #degree:I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mPauseSign:Z

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    if-nez v1, :cond_c

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    .line 171
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

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    const/16 v4, 0x1395

    const/4 v6, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v4, v6, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 174
    const-string v1, "LivePhotoAdapterBase"

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][run]: paused..."

    invoke-static {v1, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 177
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mStopSign:Z

    if-nez v1, :cond_d

    .line 178
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V

    .line 179
    :cond_d
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->access$300(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->this$0:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    const/16 v4, 0x1394

    const/4 v6, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v4, v6, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 131
    :cond_e
    const/4 v1, 0x1

    iget v4, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v1, v4, :cond_a

    .line 132
    iget-object v15, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    goto/16 :goto_4

    .line 158
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

    .line 159
    const/4 v1, -0x1

    iput v1, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 160
    const/4 v1, 0x0

    iput-boolean v1, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 161
    const/4 v1, 0x0

    iput-boolean v1, v12, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_5

    .line 179
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

    .line 198
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v12           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    .end local v15           #uriCacheFile:Landroid/net/Uri;
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1

    .line 205
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
    .parameter "position"

    .prologue
    .line 217
    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    if-ne v0, p1, :cond_0

    .line 223
    :cond_0
    iput p1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->mCenter:I

    .line 225
    monitor-enter p0

    .line 227
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 228
    monitor-exit p0

    .line 229
    const/4 v0, 0x1

    return v0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
