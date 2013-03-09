.class public Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$VideoThumbDecode;
.super Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;
.source "LocalThumbDecodeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoThumbDecode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;


# direct methods
.method public constructor <init>(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;Ljava/lang/String;JII)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "modifiedTime"
    .parameter "size"
    .parameter "type"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$VideoThumbDecode;->this$0:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    .line 314
    invoke-direct/range {p0 .. p6}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;-><init>(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;Ljava/lang/String;JII)V

    .line 315
    return-void
.end method

.method private cropVideo(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "source"
    .parameter "targetSize"

    .prologue
    const-wide v8, 0x3ff199999999999aL

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 372
    .local v1, W:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 374
    .local v0, H:I
    if-lt v1, p2, :cond_0

    if-ge v0, p2, :cond_1

    .line 376
    :cond_0
    if-ge v1, v0, :cond_2

    .line 377
    move v3, p2

    .line 378
    .local v3, newW:I
    mul-int v6, p2, v0

    div-int v2, v6, v1

    .line 384
    .local v2, newH:I
    :goto_0
    int-to-double v6, v3

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 385
    int-to-double v6, v2

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 386
    invoke-direct {p0, p1, v1, v0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$VideoThumbDecode;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 389
    .end local v2           #newH:I
    .end local v3           #newW:I
    :cond_1
    sub-int v6, v1, p2

    div-int/lit8 v4, v6, 0x2

    .line 390
    .local v4, x:I
    sub-int v6, v0, p2

    div-int/lit8 v5, v6, 0x2

    .line 392
    .local v5, y:I
    invoke-static {p1, v4, v5, p2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 381
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_2
    move v2, p2

    .line 382
    .restart local v2       #newH:I
    mul-int v6, p2, v1

    div-int v3, v6, v0

    .restart local v3       #newW:I
    goto :goto_0
.end method

.method private getVideoThumb()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 352
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 353
    .local v2, mmr:Landroid/media/MediaMetadataRetriever;
    const/4 v0, 0x0

    .line 356
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 358
    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 364
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 367
    :goto_0
    return-object v0

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to decode video file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->filePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v3, "DLNAMiddlelayer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v3
.end method

.method private resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "source"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 396
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 418
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 400
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 401
    .local v3, originalWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 402
    .local v4, originalHeight:I
    if-gt v3, p2, :cond_2

    if-le v4, p3, :cond_0

    .line 405
    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 406
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v0, p2

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, p3

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 407
    const/4 v8, 0x0

    .line 408
    .local v8, output:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 410
    .local v7, count:I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 412
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 414
    :goto_1
    if-nez v8, :cond_4

    const/4 v0, 0x3

    if-le v7, v0, :cond_3

    .line 416
    :cond_4
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 417
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object p1, v8

    .line 418
    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public decodeThumbnail()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 319
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VideoThumbDecode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->filePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->filePath:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-object v1

    .line 323
    :cond_1
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$VideoThumbDecode;->getVideoThumb()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 324
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 329
    const/4 v1, 0x0

    .line 334
    .local v1, bmp2:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 335
    sget v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_LONG_SIDE_LENGTH:I

    sget v4, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_SHORT_SIDE_LENGTH:I

    invoke-direct {p0, v0, v3, v4}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$VideoThumbDecode;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 344
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 337
    :cond_2
    :try_start_1
    sget v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_SHORT_SIDE_LENGTH:I

    sget v4, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_LONG_SIDE_LENGTH:I

    invoke-direct {p0, v0, v3, v4}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$VideoThumbDecode;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 339
    :catch_0
    move-exception v2

    .line 341
    .local v2, error:Ljava/lang/OutOfMemoryError;
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Out of memory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
