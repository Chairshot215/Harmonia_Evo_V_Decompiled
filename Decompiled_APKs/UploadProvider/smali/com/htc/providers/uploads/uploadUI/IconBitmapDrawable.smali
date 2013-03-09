.class public Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IconBitmapDrawable.java"


# static fields
.field static CACHE_DIRECTORY:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "IconBitmapDrawable"


# instance fields
.field defaultBitmap:Landroid/graphics/Bitmap;

.field mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V
    .locals 19
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "def_bitmap"
    .parameter "defaultSize"
    .parameter "applyMask"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 72
    if-eqz p3, :cond_0

    .line 73
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 74
    const-string v15, "IconBitmapDrawable"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mimeType = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, filePath:Ljava/lang/String;
    sget-object v15, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->CACHE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->generateFileName(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    .line 79
    .local v8, file:Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->loadFromLocal(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    .line 80
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    if-nez v15, :cond_2

    .line 81
    const/4 v5, 0x0

    .line 83
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_5

    :try_start_0
    const-string v15, "image"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 85
    sget-object v15, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->CACHE_DIRECTORY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v9, v1, v15, v2}, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->loadSquareBitmap(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    .line 120
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 121
    sget-object v15, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->CACHE_DIRECTORY:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v1, v9, v15}, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->cropBitmap(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 132
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    if-nez v15, :cond_3

    .line 134
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    .line 136
    :cond_3
    if-eqz p6, :cond_4

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    const v17, 0x20801ac

    invoke-static/range {v15 .. v17}, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    .line 141
    :cond_4
    return-void

    .line 88
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    :try_start_1
    new-instance v10, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v10}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 91
    .local v10, mmr:Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 92
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 98
    :goto_2
    const-wide/16 v15, -0x1

    move-wide v0, v15

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 99
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 100
    .local v14, originalWidth:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 101
    .local v13, originalHeight:I
    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v14, v15, v16

    const/16 v16, 0x1

    aput v13, v15, v16

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v15, v1}, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->getNewSize([II)[I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    .line 104
    .local v11, newSize:[I
    :try_start_2
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 105
    .local v12, option:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v17, 0x0

    aget v17, v11, v17

    const/16 v18, 0x1

    aget v18, v11, v18

    invoke-static/range {v15 .. v18}, Lcom/htc/util/media/ImageUtil;->countSampleValue(IIII)I

    move-result v15

    iput v15, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 108
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 109
    .local v4, afterSameplWidth:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 110
    .local v3, afterSameplHeight:I
    const/4 v15, 0x0

    aget v15, v11, v15

    if-ne v4, v15, :cond_6

    const/4 v15, 0x1

    aget v15, v11, v15

    if-eq v3, v15, :cond_1

    .line 112
    :cond_6
    const/4 v15, 0x0

    aget v15, v11, v15

    const/16 v16, 0x1

    aget v16, v11, v16

    move/from16 v0, v16

    invoke-static {v5, v15, v0}, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    goto/16 :goto_0

    .line 94
    .end local v3           #afterSameplHeight:I
    .end local v4           #afterSameplWidth:I
    .end local v11           #newSize:[I
    .end local v12           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #originalHeight:I
    .end local v14           #originalWidth:I
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "r"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 96
    .local v7, fd:Ljava/io/FileDescriptor;
    invoke-virtual {v10, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 124
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .end local v10           #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v6

    .line 125
    .local v6, e:Ljava/io/FileNotFoundException;
    const-string v15, "IconBitmapDrawable"

    const-string v16, "get bitmap error"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 115
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .restart local v10       #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v11       #newSize:[I
    .restart local v13       #originalHeight:I
    .restart local v14       #originalWidth:I
    :catch_1
    move-exception v6

    .line 116
    .local v6, e:Ljava/lang/Exception;
    :try_start_4
    const-string v15, "IconBitmapDrawable"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 126
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v11           #newSize:[I
    .end local v13           #originalHeight:I
    .end local v14           #originalWidth:I
    :catch_2
    move-exception v6

    .line 127
    .local v6, e:Ljava/io/IOException;
    const-string v15, "IconBitmapDrawable"

    const-string v16, "get bitmap error"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 128
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 129
    .local v6, e:Ljava/lang/Exception;
    const-string v15, "IconBitmapDrawable"

    const-string v16, "get bitmap error"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public static countNewSize(IIII)[I
    .locals 4
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 379
    if-lt p0, p2, :cond_0

    if-ge p1, p3, :cond_1

    .line 380
    :cond_0
    const/4 v1, 0x0

    .line 385
    :goto_0
    return-object v1

    .line 382
    :cond_1
    int-to-float v1, p2

    int-to-float v2, p0

    div-float/2addr v1, v2

    int-to-float v2, p3

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 385
    .local v0, ratio:F
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    int-to-float v3, p0

    mul-float/2addr v3, v0

    float-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, p1

    mul-float/2addr v3, v0

    float-to-int v3, v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"
    .parameter "targetSize"
    .parameter "source"
    .parameter "cachepath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {p1, p2}, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->cropCenter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    .local v0, bitmap2:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 286
    move-object p1, v0

    .line 290
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {p4, v3}, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->generateFileName(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 291
    .local v1, file:Ljava/io/File;
    if-eqz p1, :cond_1

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 293
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 294
    .local v2, out:Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 297
    .end local v2           #out:Ljava/io/FileOutputStream;
    :cond_1
    return-object p1
.end method

.method public static cropCenter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "original"
    .parameter "targetSize"

    .prologue
    .line 323
    if-nez p0, :cond_0

    .line 324
    const/4 v1, 0x0

    .line 335
    :goto_0
    return-object v1

    .line 326
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 327
    .local v4, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 328
    .local v0, height:I
    if-ge v4, p1, :cond_1

    move v3, v4

    .line 329
    .local v3, targetWidth:I
    :goto_1
    if-ge v0, p1, :cond_2

    move v2, v0

    .line 330
    .local v2, targetHeight:I
    :goto_2
    sub-int v7, v4, v3

    div-int/lit8 v5, v7, 0x2

    .line 331
    .local v5, xMargin:I
    sub-int v7, v0, v2

    div-int/lit8 v6, v7, 0x2

    .line 332
    .local v6, yMargin:I
    invoke-static {p0, v5, v6, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 335
    .local v1, newBitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v1           #newBitmap:Landroid/graphics/Bitmap;
    .end local v2           #targetHeight:I
    .end local v3           #targetWidth:I
    .end local v5           #xMargin:I
    .end local v6           #yMargin:I
    :cond_1
    move v3, p1

    .line 328
    goto :goto_1

    .restart local v3       #targetWidth:I
    :cond_2
    move v2, p1

    .line 329
    goto :goto_2
.end method

.method public static ensureCacheSize(Ljava/lang/String;)V
    .locals 6
    .parameter "photoPath"

    .prologue
    .line 352
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    .local v1, cacheFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 355
    .local v3, files:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 356
    .local v2, currentFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 359
    .end local v2           #currentFile:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private static generateFileName(Ljava/lang/String;I)Ljava/io/File;
    .locals 4
    .parameter "cachePath"
    .parameter "sourceHash"

    .prologue
    .line 339
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, cacheFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "img"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v9, 0x0

    .line 46
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 47
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 50
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 55
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 56
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 59
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    const/4 v1, 0x0

    .line 63
    :cond_0
    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    const/4 v0, 0x0

    .line 67
    :cond_1
    return-object v2
.end method

.method private getNewSize([II)[I
    .locals 6
    .parameter "originalSize"
    .parameter "targetSize"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 269
    aget v1, p1, v3

    aget v2, p1, v4

    invoke-static {v1, v2, p2, p2}, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->countNewSize(IIII)[I

    move-result-object v0

    .line 272
    .local v0, newSize:[I
    if-nez v0, :cond_0

    .line 273
    aget v1, p1, v3

    aget v2, p1, v4

    if-le v1, v2, :cond_1

    .line 274
    new-array v0, v5, [I

    .end local v0           #newSize:[I
    aget v1, p1, v4

    aput v1, v0, v3

    aget v1, p1, v4

    aput v1, v0, v4

    .line 278
    .restart local v0       #newSize:[I
    :cond_0
    :goto_0
    return-object v0

    .line 276
    :cond_1
    new-array v0, v5, [I

    .end local v0           #newSize:[I
    aget v1, p1, v3

    aput v1, v0, v3

    aget v1, p1, v3

    aput v1, v0, v4

    .restart local v0       #newSize:[I
    goto :goto_0
.end method

.method public static getOriginalSize(Ljava/io/FileDescriptor;)[I
    .locals 6
    .parameter "fd"

    .prologue
    const/4 v5, 0x2

    .line 192
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 193
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 194
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 195
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 196
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    goto :goto_0

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private loadFromLocal(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "file"

    .prologue
    const/4 v4, 0x0

    .line 203
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 204
    const/4 v2, 0x0

    .line 206
    .local v2, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x400

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    .end local v2           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 209
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v5, 0x32

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 210
    const/16 v5, 0x32

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 212
    const/4 v5, 0x0

    invoke-static {v3, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 216
    if-eqz v3, :cond_0

    .line 218
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 226
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #stream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v4

    .line 219
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v3       #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 213
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 216
    :goto_1
    if-eqz v2, :cond_0

    .line 218
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 219
    :catch_2
    move-exception v0

    .line 221
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 218
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 222
    :cond_1
    :goto_3
    throw v4

    .line 219
    :catch_3
    move-exception v0

    .line 221
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 216
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v3       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    goto :goto_2

    .line 213
    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v3       #stream:Ljava/io/InputStream;
    :catch_4
    move-exception v5

    move-object v2, v3

    .end local v3           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private loadSquareBitmapFromContentUri(Ljava/io/FileDescriptor;IIII)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "fd"
    .parameter "originalWidth"
    .parameter "orginalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/4 v1, 0x0

    .line 302
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 304
    .local v8, decode_opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 305
    invoke-static {p2, p3, p4, p5}, Lcom/htc/util/media/ImageUtil;->countSampleValue(IIII)I

    move-result v2

    iput v2, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 307
    const/4 v2, 0x0

    invoke-static {p1, v2, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 310
    .local v3, afterWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 311
    .local v4, afterHeight:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 312
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v2, p4

    int-to-float v6, v3

    div-float/2addr v2, v6

    int-to-float v6, p5

    int-to-float v9, v4

    div-float/2addr v6, v9

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 314
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 316
    .local v7, bitmap2:Landroid/graphics/Bitmap;
    if-eq v7, v0, :cond_0

    .line 317
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    :cond_0
    return-object v7
.end method

.method private static scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setCache(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 153
    sput-object p0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->CACHE_DIRECTORY:Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, -0x3

    return v0
.end method

.method public declared-synchronized loadSquareBitmap(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "filePath"
    .parameter "fileUri"
    .parameter "cachepath"
    .parameter "targetSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 234
    monitor-enter p0

    const/4 v1, 0x0

    .line 235
    .local v1, fd:Ljava/io/FileDescriptor;
    const/4 v6, 0x0

    .line 236
    .local v6, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    const-string v0, "IconBitmapDrawable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-nez p2, :cond_1

    .line 239
    invoke-static {p1}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v9

    .line 246
    .local v9, originalSize:[I
    :goto_0
    const/4 v0, 0x0

    aget v0, v9, v0

    if-lt v0, v4, :cond_0

    const/4 v0, 0x1

    aget v0, v9, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v4, :cond_2

    .line 247
    :cond_0
    const/4 v0, 0x0

    .line 264
    :goto_1
    monitor-exit p0

    return-object v0

    .line 241
    .end local v9           #originalSize:[I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "r"

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 243
    invoke-static {v1}, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->getOriginalSize(Ljava/io/FileDescriptor;)[I

    move-result-object v9

    .line 244
    .restart local v9       #originalSize:[I
    const-string v0, "IconBitmapDrawable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get original size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    .end local v9           #originalSize:[I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 251
    .restart local v9       #originalSize:[I
    :cond_2
    :try_start_2
    invoke-direct {p0, v9, p4}, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->getNewSize([II)[I

    move-result-object v8

    .line 254
    .local v8, newSize:[I
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v7, file2:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v2, 0x1

    aget v2, v9, v2

    const/4 v3, 0x0

    aget v3, v8, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    invoke-static {p1, v0, v2, v3, v4}, Lcom/htc/util/media/ImageUtil;->loadBitmap(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_3
    :goto_2
    move-object v0, v6

    .line 264
    goto :goto_1

    .line 258
    :cond_4
    if-eqz v1, :cond_3

    .line 259
    const-string v0, "StatusHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get bitmap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x0

    aget v2, v9, v0

    const/4 v0, 0x1

    aget v3, v9, v0

    const/4 v0, 0x0

    aget v4, v8, v0

    const/4 v0, 0x1

    aget v5, v8, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/providers/uploads/uploadUI/IconBitmapDrawable;->loadSquareBitmapFromContentUri(Ljava/io/FileDescriptor;IIII)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 393
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 399
    return-void
.end method
