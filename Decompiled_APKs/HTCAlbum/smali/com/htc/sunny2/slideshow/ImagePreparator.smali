.class public Lcom/htc/sunny2/slideshow/ImagePreparator;
.super Lcom/htc/sunny2/RenderThreadPreparation;
.source "ImagePreparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG:Ljava/lang/String; = "KA>>> SControl "

.field private static final LTAG:Ljava/lang/String; = "ImagePreparator"

.field public static final NAME:Ljava/lang/String; = "ImagePreparator"

.field private static final PHASE_BITMAP:I = 0x1

.field private static final PHASE_TEXTURE:I = 0x2

.field private static final TEXTURES_COUNT:I = 0x5

.field private static final TEXTURE_HEIGHT:I = 0x200

.field private static final TEXTURE_WIDTH:I = 0x400

.field private static mFaceDetectMaxHeightSIZE:I

.field private static mFaceDetectMaxWidthSIZE:I


# instance fields
.field private imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

.field private mFullPhotoHeight:I

.field private mFullPhotoWidth:I

.field private mSkipBitampDecode:Z

.field private mSunnyEnv:I

.field private mediaList:Lcom/htc/sunny2/IMediaList;

.field private requestItemIndex:I

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

.field private sunnyBitmap:I

.field private taskPhase:I

.field private textureForDecode:I

.field private textureIndexToUse:I

.field private textures:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->FACEDETECT_BITMAP_MAX_WIDTH:I

    sput v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxWidthSIZE:I

    .line 50
    sget v0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->FACEDETECT_BITMAP_MAX_HEIGHT:I

    sput v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxHeightSIZE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadPreparation;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-direct {v1}, Lcom/htc/sunny2/common/ImageDecoder;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    .line 57
    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    .line 58
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    .line 59
    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    .line 61
    iput-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    .line 63
    iput v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    .line 64
    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    .line 66
    iput-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    .line 67
    iput v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    .line 68
    iput v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    .line 69
    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    .line 70
    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSkipBitampDecode:Z

    .line 72
    iput-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    .line 75
    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSunnyEnv:I

    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 86
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    aput v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method private doBitmapDecode(J)Z
    .locals 11
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v5, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 439
    iget v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 441
    const-string v0, "ImagePreparator"

    const-string v3, "doBitmapDecode() NG - error index"

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 516
    :goto_0
    return v0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    iget v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-interface {v0, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 446
    .local v1, mediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v1, :cond_1

    .line 448
    const-string v0, "ImagePreparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doBitmapDecode() NG - getMediaItem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 449
    goto :goto_0

    .line 453
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSkipBitampDecode:Z

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->isFree()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    const-string v0, "ImagePreparator"

    const-string v3, "[HTCAlbum][ImagePreparator][doBitmapDecode]: Force Skip Decode Bitmap !"

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 457
    goto :goto_0

    .line 461
    :cond_2
    const-string v0, "ImagePreparator"

    const-string v3, "[HTCAlbum][ImagePreparator][doBitmapDecode]: Free Bitamp ! Force Skip Decode Bitmap !"

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    move v0, v9

    .line 463
    goto :goto_0

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->isFree()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 469
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v2

    .line 470
    .local v2, rotateDegrees:I
    rem-int/lit16 v2, v2, 0x168

    .line 471
    if-gez v2, :cond_4

    .line 473
    add-int/lit16 v2, v2, 0x168

    .line 476
    :cond_4
    const/4 v6, 0x0

    .line 479
    .local v6, bDecodeSuccess:Z
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 481
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v1

    .end local v1           #mediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    sget v3, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxWidthSIZE:I

    sget v4, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxHeightSIZE:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmap(Ljava/io/InputStream;IIII)Z

    move-result v6

    .line 488
    :goto_1
    if-nez v6, :cond_6

    .line 490
    const-string v0, "ImagePreparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doBitmapDecode() NG - loadFromFilePathToBitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 491
    goto/16 :goto_0

    .line 485
    .restart local v1       #mediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    sget v3, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxWidthSIZE:I

    sget v4, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxHeightSIZE:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmap(Lcom/htc/sunny2/IMediaData;IIII)Z

    move-result v6

    goto :goto_1

    .line 495
    .end local v1           #mediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v2           #rotateDegrees:I
    .end local v6           #bDecodeSuccess:Z
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v7, p1, v3

    .line 496
    .local v7, ticksToDo:J
    const-wide/16 v3, 0x0

    cmp-long v0, v7, v3

    if-gtz v0, :cond_7

    move v0, v10

    .line 498
    goto/16 :goto_0

    .line 501
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0, v7, v8}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v0

    if-ne v0, v10, :cond_8

    move v0, v10

    .line 503
    goto/16 :goto_0

    .line 506
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 508
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    .line 512
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    .line 513
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    .line 514
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    .line 515
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    move v0, v9

    .line 516
    goto/16 :goto_0
.end method

.method private doTextureDecode(J)Z
    .locals 19
    .parameter "limitedTimeMillis"

    .prologue
    .line 521
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 523
    const-string v2, "ImagePreparator"

    const-string v3, "doTextureDecode() NG - error index"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v2, 0x0

    .line 586
    :goto_0
    return v2

    .line 527
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->isFree()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 530
    .local v8, mediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v8, :cond_1

    .line 532
    const-string v2, "ImagePreparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doTextureDecode() NG - getMediaItem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v2, 0x0

    goto :goto_0

    .line 536
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getATextureToUse()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    .line 538
    invoke-interface {v8}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v6

    .line 539
    .local v6, rotateDegrees:I
    rem-int/lit16 v6, v6, 0x168

    .line 540
    if-gez v6, :cond_2

    .line 542
    add-int/lit16 v6, v6, 0x168

    .line 545
    :cond_2
    const/16 v16, 0x0

    .line 548
    .local v16, isDecodeSuccess:Z
    invoke-interface {v8}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-interface {v8}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    const/16 v7, 0x400

    const/16 v8, 0x200

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToTexture(Ljava/io/InputStream;IIIIII)Z

    .end local v8           #mediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    move-result v16

    .line 553
    :goto_1
    if-nez v16, :cond_4

    .line 555
    const-string v2, "ImagePreparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doTextureDecode() NG - loadFromFilePathToBitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->giveBackTexture(I)V

    .line 557
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    .line 558
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 551
    .restart local v8       #mediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    invoke-interface {v8}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v11

    const/16 v13, 0x400

    const/16 v14, 0x200

    const/4 v15, 0x1

    move v12, v6

    invoke-virtual/range {v7 .. v15}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToSunnyTexture(Lcom/htc/sunny2/IMediaData;IILjava/lang/String;IIII)Z

    move-result v16

    goto :goto_1

    .line 562
    .end local v6           #rotateDegrees:I
    .end local v8           #mediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v16           #isDecodeSuccess:Z
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v17, p1, v2

    .line 563
    .local v17, ticksToDo:J
    const-wide/16 v2, 0x0

    cmp-long v2, v17, v2

    if-gtz v2, :cond_5

    .line 565
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 568
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 570
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 573
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->succeeded()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 582
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoHeight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 586
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 577
    :cond_7
    const-string v2, "ImagePreparator"

    const-string v3, "Texture decode failed."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->giveBackTexture(I)V

    .line 579
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    goto :goto_2
.end method

.method private getATextureToUse()I
    .locals 3

    .prologue
    .line 406
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    iget v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    aget v0, v1, v2

    .line 408
    .local v0, texture:I
    iget v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    .line 409
    iget v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 411
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    .line 414
    :cond_0
    return v0
.end method

.method private giveBackTexture(I)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 419
    if-nez p1, :cond_1

    .line 421
    const-string v0, "ImagePreparator"

    const-string v1, "giveBackTexture() NG - null texture"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    .line 426
    iget v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    if-gez v0, :cond_2

    .line 428
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    iget v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    aget v0, v0, v1

    if-eq v0, p1, :cond_0

    .line 433
    const-string v0, "ImagePreparator"

    const-string v1, "giveBackTexture() NG - texture not match"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bindMediaList(Lcom/htc/sunny2/IMediaList;)V
    .locals 0
    .parameter "mediaList"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    .line 148
    return-void
.end method

.method public deinit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->endRequest()V

    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/htc/sunny2/Sunny2;->DestroyTexture(I)V

    .line 133
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    aput v2, v1, v0

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    .line 138
    iget v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    if-eqz v1, :cond_2

    .line 140
    iget v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    invoke-static {v1}, Lcom/htc/sunny2/Sunny2;->DestroyBitmap(I)V

    .line 141
    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    .line 143
    :cond_2
    return-void
.end method

.method public endRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 205
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 206
    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    .line 207
    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    .line 208
    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    .line 209
    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    .line 210
    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSkipBitampDecode:Z

    .line 212
    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    .line 214
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    iput-object v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    .line 220
    :cond_0
    iput-object v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    .line 221
    return-void
.end method

.method public getFullPhotoHeight()I
    .locals 6

    .prologue
    .line 262
    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v4, :cond_0

    .line 264
    const-string v4, "ImagePreparator"

    const-string v5, "[Imagepreparator][getFullPhotoHeight]: mediaList NG !"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v4, -0x1

    .line 282
    :goto_0
    return v4

    .line 269
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    iget v5, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-interface {v4, v5}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 270
    .local v1, mediaData:Lcom/htc/sunny2/IMediaData;
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    if-gtz v4, :cond_1

    if-eqz v1, :cond_1

    .line 272
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 273
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 274
    invoke-interface {v1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    .local v0, bm:Landroid/graphics/Bitmap;
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 277
    .local v3, outHeight:I
    iput v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    .line 282
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #outHeight:I
    :cond_1
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    goto :goto_0
.end method

.method public getFullPhotoWidth()I
    .locals 6

    .prologue
    .line 238
    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v4, :cond_0

    .line 240
    const-string v4, "ImagePreparator"

    const-string v5, "[Imagepreparator][getFullPhotoWidth]: mediaList NG !"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v4, -0x1

    .line 257
    :goto_0
    return v4

    .line 245
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    iget v5, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-interface {v4, v5}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 246
    .local v1, mediaData:Lcom/htc/sunny2/IMediaData;
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    if-gtz v4, :cond_1

    if-eqz v1, :cond_1

    .line 248
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 249
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 250
    invoke-interface {v1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    .local v0, bm:Landroid/graphics/Bitmap;
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 252
    .local v3, outWidth:I
    iput v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    .line 257
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #outWidth:I
    :cond_1
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    goto :goto_0
.end method

.method public getResultTexture()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    return v0
.end method

.method public init(I)Z
    .locals 4
    .parameter "sunnyEnv"

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p1, :cond_0

    .line 94
    const-string v2, "ImagePreparator"

    const-string v3, "init() NG - null sunny env"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->deinit()V

    .line 121
    :goto_0
    return v1

    .line 99
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSunnyEnv:I

    .line 101
    invoke-static {p1}, Lcom/htc/sunny2/Sunny2;->CreateBitmap(I)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    .line 102
    iget v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    if-nez v2, :cond_1

    .line 104
    const-string v2, "ImagePreparator"

    const-string v3, "init() NG - CreateBitmap"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->deinit()V

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 111
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    invoke-static {p1}, Lcom/htc/sunny2/Sunny2;->CreateTexture(I)I

    move-result v3

    aput v3, v2, v0

    .line 112
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    aget v2, v2, v0

    if-nez v2, :cond_2

    .line 114
    const-string v2, "ImagePreparator"

    const-string v3, "init() NG - CreateTexture"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->deinit()V

    goto :goto_0

    .line 109
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_3
    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    .line 121
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 395
    return-void
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 11
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 290
    const-string v7, "123"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KA>>> SControl  onProcessPreparationIRT , State: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    if-ne v4, v6, :cond_0

    const-string v4, "Decoding Bitmap..."

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    if-ne v4, v9, :cond_1

    move v4, v5

    .line 390
    :goto_1
    return v4

    .line 290
    :cond_0
    const-string v4, "Decoding Texture..."

    goto :goto_0

    .line 297
    :cond_1
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    if-ne v4, v6, :cond_8

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->doBitmapDecode(J)Z

    move-result v4

    if-ne v4, v6, :cond_2

    move v4, v6

    .line 301
    goto :goto_1

    .line 305
    :cond_2
    iget-boolean v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSkipBitampDecode:Z

    if-eqz v4, :cond_3

    .line 307
    iput v10, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    move v4, v6

    .line 308
    goto :goto_1

    .line 311
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_6

    .line 313
    iget v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    .line 314
    .local v0, itemIndex:I
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    .line 315
    .local v1, listener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->endRequest()V

    .line 317
    if-eqz v1, :cond_4

    .line 319
    invoke-interface {v1, v0}, Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;->onBitmapDecodeFailed(I)V

    .line 322
    :cond_4
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    if-eq v4, v9, :cond_5

    .line 325
    const-string v4, "ImagePreparator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Has new request. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 326
    goto :goto_1

    :cond_5
    move v4, v5

    .line 328
    goto :goto_1

    .line 331
    .end local v0           #itemIndex:I
    .end local v1           #listener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    if-eqz v4, :cond_7

    .line 333
    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    iget v7, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-interface {v4, v7}, Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;->onBitmapDecodeReady(I)V

    .line 335
    :cond_7
    iput v10, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    .line 338
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v2, p1, v7

    .line 339
    .local v2, ticksToDo:J
    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    if-gtz v4, :cond_9

    move v4, v6

    .line 341
    goto :goto_1

    .line 344
    :cond_9
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    if-ne v4, v10, :cond_10

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->doTextureDecode(J)Z

    move-result v4

    if-ne v4, v6, :cond_a

    move v4, v6

    .line 348
    goto :goto_1

    .line 351
    :cond_a
    iget v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    .line 352
    .restart local v0       #itemIndex:I
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    .line 354
    .restart local v1       #listener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    if-nez v4, :cond_d

    .line 356
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->endRequest()V

    .line 357
    if-eqz v1, :cond_b

    .line 359
    invoke-interface {v1, v0}, Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;->onTextureDecodeFailed(I)V

    .line 362
    :cond_b
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    if-eq v4, v9, :cond_c

    .line 365
    const-string v4, "ImagePreparator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Has new request. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 366
    goto/16 :goto_1

    :cond_c
    move v4, v5

    .line 368
    goto/16 :goto_1

    .line 371
    :cond_d
    iput v9, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    .line 372
    iput v5, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    .line 373
    const-string v4, "ImagePreparator"

    const-string v7, "Request finish."

    invoke-static {v4, v7}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    if-eqz v1, :cond_e

    .line 377
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSunnyEnv:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->Environment_LogStatus(I)V

    .line 378
    invoke-interface {v1, v0}, Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;->onTextureDecodeReady(I)V

    .line 381
    :cond_e
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    if-eq v4, v9, :cond_f

    .line 384
    const-string v4, "ImagePreparator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Has new request. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 385
    goto/16 :goto_1

    :cond_f
    move v4, v5

    .line 387
    goto/16 :goto_1

    .end local v0           #itemIndex:I
    .end local v1           #listener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;
    :cond_10
    move v4, v5

    .line 390
    goto/16 :goto_1
.end method

.method public onRemovedIRT()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public requestImage(Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;I)Z
    .locals 5
    .parameter "resultListener"
    .parameter "itemIndex"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 161
    const-string v2, "ImagePreparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestImage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->isFree()Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    const-string v1, "ImagePreparator"

    const-string v2, "requestImage() NG - decoder is not free"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    return v0

    .line 169
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 171
    const-string v1, "ImagePreparator"

    const-string v2, "requestImage() NG - already has request"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v2, :cond_2

    .line 177
    const-string v1, "ImagePreparator"

    const-string v2, "requestImage() NG - null mediaList"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_2
    if-ltz p2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v2

    if-lt p2, v2, :cond_4

    .line 183
    :cond_3
    const-string v1, "ImagePreparator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImage() NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_4
    iput p2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    .line 188
    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    .line 190
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 192
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    .line 196
    :cond_5
    iput v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    .line 198
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    move v0, v1

    .line 200
    goto :goto_0
.end method

.method public requestSkipBitampDecode()V
    .locals 2

    .prologue
    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSkipBitampDecode:Z

    .line 599
    const-string v0, "ImagePreparator"

    const-string v1, "[HTCAlbum][ImagePreparator][setSkipBitampDecode]: Force Skip Bitmap Decode !"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public setFaceDetectDecodeSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 592
    sput p1, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxWidthSIZE:I

    .line 593
    sput p2, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxHeightSIZE:I

    .line 594
    return-void
.end method

.method public takeOutResultBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    .line 226
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    .line 228
    return-object v0
.end method

.method public unbindMediaList()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->endRequest()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunny2/IMediaList;

    .line 154
    return-void
.end method
