.class public Lcom/htc/MediaCacheService/gallery/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;
    }
.end annotation


# static fields
.field public static final DECODE_FLAG_ALLOW_EXIF_THUMB:I = 0x10

.field public static final DECODE_FLAG_ALLOW_LOAD_ITERATE:I = 0x40

.field public static final DECODE_FLAG_ALLOW_SPMO:I = 0x20

.field public static final DECODE_FLAG_NO_PROGRESSIVE_JPEG:I = 0x100

.field public static final DECODE_FLAG_SCALE_FOR_3D:I = 0x1

.field public static final DECODE_FLAG_SCALE_TO_FILL:I = 0x4

.field public static final DECODE_FLAG_SCALE_TO_FIT:I = 0x2

.field private static final LTAG:Ljava/lang/String;

.field public static final THUMB_FOLDER_WIDTH_HEIGHT:I


# instance fields
.field private decodeHandle:I

.field private mIsProgressiveJpeg:Z

.field private mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mPhotoHeight:I

.field private mPhotoWidth:I

.field private outputSunnyBitmap:I

.field private outputSunnyTexture:I

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

.field private toSunnyTexture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    .line 55
    sget v0, Lcom/htc/MediaCacheService/gallery/LayoutConstants;->HEIGHT_FOLDER_GRID_IMG:I

    sput v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->THUMB_FOLDER_WIDTH_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    .line 42
    iput v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    .line 43
    iput-boolean v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->toSunnyTexture:Z

    .line 45
    iput-object v2, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 46
    iput v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->outputSunnyBitmap:I

    .line 47
    iput v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->outputSunnyTexture:I

    .line 49
    iput v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mPhotoWidth:I

    .line 50
    iput v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mPhotoHeight:I

    .line 52
    iput-object v2, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 53
    iput-boolean v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mIsProgressiveJpeg:Z

    .line 69
    return-void
.end method

.method private closeMemberParcelFileDescriptor()V
    .locals 2

    .prologue
    .line 527
    iget-object v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 535
    :cond_0
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private doDecode(J)Z
    .locals 9
    .parameter "ticks"

    .prologue
    const-wide/16 v7, 0xc8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 423
    iget v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    if-nez v5, :cond_0

    .line 424
    sget-object v4, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "doDecode() NG - null decodeHandle"

    invoke-static {v4, v5}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-object v4, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->FAILED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    .line 475
    :goto_0
    return v3

    .line 429
    :cond_0
    const/4 v2, -0x1

    .line 431
    .local v2, rs:I
    div-long v5, p1, v7

    long-to-int v1, v5

    .line 432
    .local v1, nMax:I
    if-gtz v1, :cond_1

    .line 433
    const/4 v1, 0x1

    .line 436
    :cond_1
    const/4 v0, 0x0

    .line 438
    .local v0, nCount:I
    :cond_2
    if-ge v0, v1, :cond_3

    .line 440
    add-int/lit8 v0, v0, 0x1

    .line 442
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v2

    .line 445
    if-eqz v2, :cond_2

    .line 451
    :cond_3
    if-ne v2, v4, :cond_6

    .line 453
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 454
    iput v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    .line 456
    iget-object v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_4

    .line 457
    sget-object v4, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "doDecode() NG - decode finish, but null bitmap"

    invoke-static {v4, v5}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v4, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->FAILED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    goto :goto_0

    .line 462
    :cond_4
    iget-boolean v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->toSunnyTexture:Z

    if-eqz v5, :cond_5

    .line 463
    sget-object v4, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    goto :goto_0

    .line 466
    :cond_5
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    iput-object v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    move v3, v4

    .line 467
    goto :goto_0

    .line 471
    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 473
    sget-object v4, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doDecode() NG - decodeIterate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    sget-object v4, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->FAILED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    goto :goto_0
.end method

.method private doLoad(J)Z
    .locals 6
    .parameter "ticks"

    .prologue
    const/4 v2, 0x0

    .line 378
    iget v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    if-nez v3, :cond_0

    .line 379
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "doLoad() NG - null decodeHandle"

    invoke-static {v3, v4}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 381
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->FAILED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    iput-object v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    .line 417
    :goto_0
    return v2

    .line 385
    :cond_0
    const/4 v1, -0x1

    .line 386
    .local v1, rs:I
    iget-object v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    sget-object v4, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    if-ne v3, v4, :cond_1

    .line 387
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFDIterate(IJ)I

    move-result v1

    .line 401
    :goto_1
    if-nez v1, :cond_3

    .line 402
    const/4 v2, 0x1

    goto :goto_0

    .line 388
    :cond_1
    iget-object v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    sget-object v4, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    if-ne v3, v4, :cond_2

    .line 390
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadInputStreamIterate(IJ)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 396
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doLoad() NG - unknow state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->FAILED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    iput-object v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    goto :goto_0

    .line 403
    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 404
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v3

    iput v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mPhotoWidth:I

    .line 406
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v3

    iput v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mPhotoHeight:I

    .line 408
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doLoad() - load success w/h "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mPhotoWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mPhotoHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 411
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->DECODE:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    iput-object v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    goto/16 :goto_0

    .line 414
    :cond_4
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doLoad() NG - loadIterate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 416
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->FAILED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    iput-object v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    goto/16 :goto_0
.end method

.method private setupDecodeParameters(IIII)Z
    .locals 6
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    iget v4, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    if-nez v4, :cond_0

    .line 193
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "setupDecodeParameters() NG - null decodeHandle"

    invoke-static {v3, v4}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    return v2

    .line 197
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    move-result v0

    .line 199
    .local v0, rs:I
    if-eqz v0, :cond_1

    .line 201
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setDegree "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p2, p3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    move-result v0

    .line 207
    if-eqz v0, :cond_2

    .line 208
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setPreferSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_2
    const/4 v1, 0x0

    .line 214
    .local v1, scaleType:I
    and-int/lit8 v4, p4, 0x2

    if-eqz v4, :cond_4

    .line 215
    const/4 v1, 0x1

    .line 222
    :cond_3
    :goto_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    move-result v0

    .line 224
    if-eqz v0, :cond_5

    .line 225
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setScaleType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_4
    and-int/lit8 v4, p4, 0x4

    if-eqz v4, :cond_3

    .line 219
    const/4 v1, 0x2

    goto :goto_1

    .line 229
    :cond_5
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_6

    .line 231
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromExifFirst(IZ)I

    move-result v0

    .line 233
    if-eqz v0, :cond_6

    .line 234
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setLoadFromExifFirst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :cond_6
    and-int/lit8 v4, p4, 0x20

    if-eqz v4, :cond_7

    .line 241
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromSPMOFirst(IZ)I

    move-result v0

    .line 243
    if-eqz v0, :cond_7

    .line 245
    sget-object v3, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setLoadFromSPMOFirst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    .line 250
    goto/16 :goto_0
.end method


# virtual methods
.method public free()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    iput v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->outputSunnyBitmap:I

    .line 255
    iput v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->outputSunnyTexture:I

    .line 257
    iput v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mPhotoWidth:I

    .line 258
    iput v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mPhotoHeight:I

    .line 260
    invoke-direct {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 262
    iget-object v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 267
    :cond_0
    iget v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    if-eqz v1, :cond_2

    .line 268
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 269
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    :cond_1
    iput v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    .line 275
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    iput-boolean v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->toSunnyTexture:Z

    .line 276
    sget-object v1, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    .line 277
    iput-boolean v3, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mIsProgressiveJpeg:Z

    .line 278
    return-void
.end method

.method public getFullPhotoHeight()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mPhotoHeight:I

    return v0
.end method

.method public getFullPhotoWidth()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mPhotoWidth:I

    return v0
.end method

.method public getTargetHeight()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->THUMB_FOLDER_WIDTH_HEIGHT:I

    return v0
.end method

.method public getTargetWidth()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->THUMB_FOLDER_WIDTH_HEIGHT:I

    return v0
.end method

.method public isFree()Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    sget-object v1, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProgressiveJpeg()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mIsProgressiveJpeg:Z

    return v0
.end method

.method public loadFromFilePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"
    .parameter "filePath"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->getTargetWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->getTargetHeight()I

    move-result v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v1, v2}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->doDecode(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .parameter "mimeType"
    .parameter "filePath"
    .parameter "preferWidth"
    .parameter "preferHeight"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->free()V

    .line 90
    const/16 v0, 0x174

    .line 96
    .local v0, decodeFlags:I
    const/4 v2, 0x0

    .line 99
    .local v2, rotateDegrees:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v6

    iput v6, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    .line 101
    iget v6, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    if-nez v6, :cond_0

    .line 102
    sget-object v5, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v6, "loadFromFilePathToBitmap() NG - decodeBegin"

    invoke-static {v5, v6}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->free()V

    .line 187
    :goto_0
    return v4

    .line 109
    :cond_0
    const/4 v3, 0x5

    .line 110
    .local v3, rs:I
    if-eqz p1, :cond_2

    const-string v6, "image/jps"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    iget v7, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v6, v7, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 116
    and-int/lit8 v0, v0, -0x11

    .line 119
    invoke-direct {p0, v2, p3, p4, v0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->setupDecodeParameters(IIII)Z

    move-result v6

    if-nez v6, :cond_1

    .line 120
    sget-object v5, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v6, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v5, v6}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->free()V

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    iget v7, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v6, v7, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v3

    .line 161
    :goto_1
    if-eqz v3, :cond_7

    .line 162
    sget-object v5, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromFilePathToBitmap() NG - loadFromFilePath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->free()V

    goto :goto_0

    .line 126
    :cond_2
    if-eqz p1, :cond_5

    const-string v6, "image/mpo"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 130
    and-int/lit8 v0, v0, -0x11

    .line 133
    invoke-direct {p0, v2, p3, p4, v0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->setupDecodeParameters(IIII)Z

    move-result v6

    if-nez v6, :cond_3

    .line 135
    sget-object v5, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v6, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v5, v6}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->free()V

    goto :goto_0

    .line 139
    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    iget v7, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v6, v7, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v3

    .line 142
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    iget v7, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v1

    .line 144
    .local v1, mpoPhotoCount:I
    if-lez v1, :cond_4

    .line 145
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    iget v7, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v6, v7, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto :goto_1

    .line 147
    :cond_4
    sget-object v6, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v6, v7}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 151
    .end local v1           #mpoPhotoCount:I
    :cond_5
    invoke-direct {p0, v2, p3, p4, v0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->setupDecodeParameters(IIII)Z

    move-result v6

    if-nez v6, :cond_6

    .line 153
    sget-object v5, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v6, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v5, v6}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->free()V

    goto/16 :goto_0

    .line 158
    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    iget v7, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v6, v7, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    .line 167
    :cond_7
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    iget v7, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v6

    iput v6, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mPhotoWidth:I

    .line 168
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    iget v7, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v6

    iput v6, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mPhotoHeight:I

    .line 170
    iput-boolean v4, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->toSunnyTexture:Z

    .line 171
    sget-object v6, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->DECODE:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    iput-object v6, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    .line 173
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    iget v7, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->decodeHandle:I

    invoke-virtual {v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->isProgressiveJpeg(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mIsProgressiveJpeg:Z

    .line 175
    iget-boolean v6, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->mIsProgressiveJpeg:Z

    if-ne v5, v6, :cond_9

    .line 176
    and-int/lit16 v5, v0, 0x100

    if-eqz v5, :cond_8

    .line 177
    sget-object v5, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->FAILED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    iput-object v5, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    .line 178
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->free()V

    goto/16 :goto_0

    .line 181
    :cond_8
    sget-object v5, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v6, "decode progressive jpeg"

    invoke-static {v5, v6}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->free()V

    goto/16 :goto_0

    :cond_9
    move v4, v5

    .line 187
    goto/16 :goto_0
.end method

.method public succeeded()Z
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->state:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    sget-object v1, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takeOutBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 362
    .local v0, output:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/MediaCacheService/gallery/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 364
    return-object v0
.end method
