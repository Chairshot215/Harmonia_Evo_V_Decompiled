.class public Lcom/htc/sunny2/common/VideoDecodeItem;
.super Lcom/htc/sunny2/common/MediaDecodeItem;
.source "VideoDecodeItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/htc/sunny2/common/VideoDecodeItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/VideoDecodeItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V
    .locals 0
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/common/MediaDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "bitmap"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p8}, Lcom/htc/sunny2/common/MediaDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;Ljava/lang/String;JII)V
    .locals 0
    .parameter "ioType"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, Lcom/htc/sunny2/common/MediaDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;Ljava/lang/String;JII)V

    .line 24
    return-void
.end method


# virtual methods
.method public decode()V
    .locals 15

    .prologue
    .line 33
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->isDecodeSuccess:Z

    .line 34
    iget-object v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mFilePath:Ljava/lang/String;

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mUri:Ljava/lang/String;

    if-nez v11, :cond_1

    .line 37
    sget-object v11, Lcom/htc/sunny2/common/VideoDecodeItem;->TAG:Ljava/lang/String;

    const-string v12, "loadVideoFrame: data source is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const/4 v6, 0x0

    .line 42
    .local v6, pfd:Landroid/os/ParcelFileDescriptor;
    const/4 v0, 0x0

    .line 43
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 45
    .local v9, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mSourceType:I

    packed-switch v11, :pswitch_data_0

    .line 57
    :pswitch_0
    sget-object v11, Lcom/htc/sunny2/common/VideoDecodeItem;->TAG:Ljava/lang/String;

    const-string v12, "loadVideoFrame: Unknown Data Source"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :try_start_1
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    .line 71
    :goto_1
    if-eqz v6, :cond_0

    .line 73
    :try_start_2
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 77
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 47
    :pswitch_1
    :try_start_3
    iget-object v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 60
    :goto_3
    const-wide/16 v11, -0x1

    invoke-virtual {v9, v11, v12}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 67
    :try_start_4
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8

    .line 71
    :goto_4
    if-eqz v6, :cond_2

    .line 73
    :try_start_5
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 77
    :goto_5
    const/4 v6, 0x0

    .line 81
    :cond_2
    :goto_6
    if-nez v0, :cond_4

    .line 82
    sget-object v11, Lcom/htc/sunny2/common/VideoDecodeItem;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bmp is null, item file path  = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uri = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mUri:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mCacheBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 50
    :pswitch_2
    :try_start_6
    iget-object v6, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 51
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 61
    :catch_0
    move-exception v11

    .line 67
    :try_start_7
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_9

    .line 71
    :goto_7
    if-eqz v6, :cond_2

    .line 73
    :try_start_8
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 77
    :goto_8
    const/4 v6, 0x0

    goto :goto_6

    .line 54
    :pswitch_3
    :try_start_9
    iget-object v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mUri:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 63
    :catch_1
    move-exception v11

    .line 67
    :try_start_a
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_a

    .line 71
    :goto_9
    if-eqz v6, :cond_2

    .line 73
    :try_start_b
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 77
    :goto_a
    const/4 v6, 0x0

    goto :goto_6

    .line 74
    :catch_2
    move-exception v1

    .line 75
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 74
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 75
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 74
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 75
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 74
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 75
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 66
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 67
    :try_start_c
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_b

    .line 71
    :goto_b
    if-eqz v6, :cond_3

    .line 73
    :try_start_d
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 77
    :goto_c
    const/4 v6, 0x0

    :cond_3
    throw v11

    .line 74
    :catch_6
    move-exception v1

    .line 75
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 85
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->isDecodeSuccess:Z

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 87
    .local v10, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 89
    .local v2, height:I
    iput v10, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mSourceWidth:I

    .line 90
    iput v2, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mSourceHeight:I

    .line 91
    iget-boolean v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->enableCropCenter:Z

    if-eqz v11, :cond_6

    .line 93
    iget-object v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mimeType:Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 95
    iget-object v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mimeType:Ljava/lang/String;

    const-string v12, "video/mp4-3d"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 97
    new-instance v7, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    div-int/lit8 v13, v10, 0x2

    invoke-direct {v7, v11, v12, v13, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    .local v7, r:Landroid/graphics/Rect;
    move-object v5, v0

    .line 99
    .local v5, oldbmp:Landroid/graphics/Bitmap;
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v10, v2, v11}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 104
    .end local v5           #oldbmp:Landroid/graphics/Bitmap;
    .end local v7           #r:Landroid/graphics/Rect;
    :cond_5
    iget v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mTargetWidth:I

    int-to-float v11, v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    iget v12, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mTargetHeight:I

    int-to-float v12, v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 105
    .local v8, ratio:F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 106
    .local v4, newWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 107
    .local v3, newHeight:I
    invoke-static {v0, v4, v3}, Lcom/htc/opensense2/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageUtils;->cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    :goto_d
    iput-object v0, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mCacheBmp:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 110
    .end local v3           #newHeight:I
    .end local v4           #newWidth:I
    .end local v8           #ratio:F
    :cond_6
    const/4 v8, 0x0

    .line 111
    .restart local v8       #ratio:F
    iget v11, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mTargetWidth:I

    iget v12, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mTargetHeight:I

    if-le v11, v12, :cond_7

    const/4 v11, 0x1

    :goto_e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-le v12, v13, :cond_8

    const/4 v12, 0x1

    :goto_f
    xor-int/2addr v11, v12

    if-eqz v11, :cond_9

    .line 112
    const/high16 v11, 0x3f80

    iget v12, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mTargetHeight:I

    int-to-float v12, v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    iget v13, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mTargetWidth:I

    int-to-float v13, v13

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 117
    :goto_10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 118
    .restart local v4       #newWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 119
    .restart local v3       #newHeight:I
    invoke-static {v0, v4, v3}, Lcom/htc/opensense2/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_d

    .line 111
    .end local v3           #newHeight:I
    .end local v4           #newWidth:I
    :cond_7
    const/4 v11, 0x0

    goto :goto_e

    :cond_8
    const/4 v12, 0x0

    goto :goto_f

    .line 115
    :cond_9
    const/high16 v11, 0x3f80

    iget v12, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mTargetWidth:I

    int-to-float v12, v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    iget v13, p0, Lcom/htc/sunny2/common/VideoDecodeItem;->mTargetHeight:I

    int-to-float v13, v13

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    goto :goto_10

    .line 68
    .end local v2           #height:I
    .end local v8           #ratio:F
    .end local v10           #width:I
    :catch_7
    move-exception v11

    goto/16 :goto_1

    :catch_8
    move-exception v11

    goto/16 :goto_4

    :catch_9
    move-exception v11

    goto/16 :goto_7

    :catch_a
    move-exception v11

    goto/16 :goto_9

    :catch_b
    move-exception v12

    goto/16 :goto_b

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
