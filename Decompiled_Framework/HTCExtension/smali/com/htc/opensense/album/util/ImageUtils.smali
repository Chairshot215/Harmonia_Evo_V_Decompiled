.class public Lcom/htc/opensense/album/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/util/ImageUtils$Size;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final offset:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final reflection:I = 0x0

.field private static final reflectionGap:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final startAlpha:F = 0.0f

.field public static final tag:Ljava/lang/String; = "ImageUtils"

.field private static useScaledResize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/opensense/album/util/ImageUtils;->useScaledResize:Z

    sget v0, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_REFLECTION:I

    sput v0, Lcom/htc/opensense/album/util/ImageUtils;->reflection:I

    sget v0, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->START_ALPHA_REFLECTION:I

    int-to-float v0, v0

    sput v0, Lcom/htc/opensense/album/util/ImageUtils;->startAlpha:F

    sget v0, Lcom/htc/opensense/album/util/ImageUtils;->startAlpha:F

    sget v1, Lcom/htc/opensense/album/util/ImageUtils;->reflection:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/htc/opensense/album/util/ImageUtils;->offset:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CropForExtraWidth(Landroid/graphics/Bitmap;[II)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    aget v3, p1, v5

    if-ge v3, p2, :cond_2

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    aget v4, p1, v5

    int-to-float v4, v4

    div-float v1, v3, v4

    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p0, v3, v5, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static declared-synchronized addIImageReflection(Lcom/htc/opensense/album/util/ImageManager$IImage;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    const-class v3, Lcom/htc/opensense/album/util/ImageUtils;

    monitor-enter v3

    :try_start_0
    instance-of v2, p0, Lcom/htc/opensense/album/util/ImageManager$Image;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/htc/opensense/album/util/ImageManager$Image;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getDegreesRotated()I

    move-result v0

    invoke-static {p1, v0}, Lcom/htc/opensense/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    invoke-static {v2, v4, v5}, Lcom/htc/opensense/album/util/ImageUtils;->countNewSize(III)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    sget v4, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    if-le v2, v4, :cond_1

    sget v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    invoke-static {p1, v1, v2}, Lcom/htc/opensense/album/util/ImageUtils;->CropForExtraWidth(Landroid/graphics/Bitmap;[II)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v2, 0x0

    sget v4, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    aput v4, v1, v2

    :cond_1
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {p1, v2, v4}, Lcom/htc/opensense/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/htc/opensense/album/util/ImageUtils;->addReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    monitor-exit v3

    return-object p1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized addReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 19

    const-class v18, Lcom/htc/opensense/album/util/ImageUtils;

    monitor-enter v18

    if-nez p0, :cond_0

    const/4 v14, 0x0

    :goto_0
    monitor-exit v18

    return-object v14

    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget v1, Lcom/htc/opensense/album/util/ImageUtils;->reflection:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x1

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v3}, Lcom/htc/opensense/album/util/BitmapUtil2;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v1, Lcom/htc/opensense/album/util/ImageUtils;->reflection:I

    mul-int/2addr v1, v4

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    sget v1, Lcom/htc/opensense/album/util/ImageUtils;->reflection:I

    sub-int v6, v11, v1

    sget v8, Lcom/htc/opensense/album/util/ImageUtils;->reflection:I

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    sget v1, Lcom/htc/opensense/album/util/ImageUtils;->reflection:I

    mul-int/2addr v1, v4

    new-array v0, v1, [I

    move-object/from16 v16, v0

    const/4 v12, 0x0

    :goto_1
    sget v1, Lcom/htc/opensense/album/util/ImageUtils;->reflection:I

    if-ge v12, v1, :cond_2

    sget v1, Lcom/htc/opensense/album/util/ImageUtils;->startAlpha:F

    sget v3, Lcom/htc/opensense/album/util/ImageUtils;->offset:F

    int-to-float v5, v12

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    float-to-int v9, v1

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v4, :cond_1

    sget v1, Lcom/htc/opensense/album/util/ImageUtils;->reflection:I

    sub-int/2addr v1, v12

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v4

    add-int/2addr v1, v13

    aget v17, v2, v1

    mul-int v1, v12, v4

    add-int/2addr v1, v13

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v9, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v16, v1

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    sget v1, Lcom/htc/opensense/album/util/ImageUtils;->reflection:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    invoke-static {v0, v4, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    const/4 v1, 0x0

    add-int/lit8 v3, v11, 0x1

    int-to-float v3, v3

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v10, v15, v1, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    const/16 p0, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v15, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v18

    throw v1
.end method

.method public static calculateFitPhotoSize(Lcom/htc/opensense/album/util/ImageUtils$Size;IIII)V
    .locals 7

    if-eqz p0, :cond_0

    iget v5, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v4, p3

    move v3, p4

    if-ge p1, p3, :cond_2

    if-ge p2, p4, :cond_2

    move v4, p1

    move v3, p2

    :cond_2
    int-to-float v5, v4

    iget v6, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    int-to-float v6, v6

    div-float v1, v5, v6

    int-to-float v5, v3

    iget v6, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    int-to-float v6, v6

    div-float v2, v5, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v5, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    iget v5, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    goto :goto_0
.end method

.method public static calculateFitSize(Lcom/htc/opensense/album/util/ImageUtils$Size;II)V
    .locals 5

    if-eqz p0, :cond_0

    iget v3, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    int-to-float v3, p1

    iget v4, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    int-to-float v4, v4

    div-float v1, v3, v4

    int-to-float v3, p2

    iget v4, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    int-to-float v4, v4

    div-float v2, v3, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v3, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    iget v3, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    goto :goto_0
.end method

.method public static countGridSampleValue(IIII)I
    .locals 5

    const/4 v0, 0x1

    if-ge p0, p2, :cond_0

    if-ge p1, p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    div-int v1, p0, p2

    div-int v2, p1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    mul-int v1, p0, p1

    mul-int v2, v0, v0

    div-int/2addr v1, v2

    const v2, 0x4b000

    if-le v1, v2, :cond_2

    mul-int v1, p0, p1

    int-to-double v1, v1

    const-wide v3, 0x4112c00000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public static countNewSize(III)[I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    aput v3, v0, v2

    if-eqz p1, :cond_0

    mul-int v1, p0, p2

    div-int/2addr v1, p1

    aput v1, v0, v2

    :cond_0
    aget v1, v0, v2

    if-gtz v1, :cond_1

    aput v3, v0, v2

    :cond_1
    aput p2, v0, v3

    return-object v0
.end method

.method public static countNewSize(IIII)[I
    .locals 4

    if-lt p0, p2, :cond_0

    if-ge p1, p3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    int-to-float v1, p2

    int-to-float v2, p0

    div-float/2addr v1, v2

    int-to-float v2, p3

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

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

.method public static countSampleValue(IIII)I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    shr-int/lit8 v1, p0, 0x1

    if-gt v1, p2, :cond_0

    shr-int/lit8 v1, p1, 0x1

    if-le v1, p3, :cond_1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    shr-int/lit8 p0, p0, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v4, v1, :cond_0

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v7, v4, v3

    div-int/lit8 v5, v7, 0x2

    sub-int v7, v1, v3

    div-int/lit8 v6, v7, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v5, v6, v3, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    if-eq v2, p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static cropCenter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v5, p1, :cond_1

    move v4, v5

    :goto_1
    if-ge v1, p1, :cond_2

    move v3, v1

    :goto_2
    sub-int v8, v5, v4

    div-int/lit8 v6, v8, 0x2

    sub-int v8, v1, v3

    div-int/lit8 v7, v8, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v6, v7, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :cond_1
    move v4, p1

    goto :goto_1

    :cond_2
    move v3, p1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static cropVideo(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10

    const-wide v8, 0x3ff199999999999aL

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v1, p1, :cond_0

    if-ge v0, p1, :cond_1

    :cond_0
    if-ge v1, v0, :cond_2

    move v3, p1

    mul-int v6, p1, v0

    div-int v2, v6, v1

    :goto_0
    int-to-double v6, v3

    mul-double/2addr v6, v8

    double-to-int v1, v6

    int-to-double v6, v2

    mul-double/2addr v6, v8

    double-to-int v0, v6

    invoke-static {p0, v1, v0}, Lcom/htc/opensense/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    sub-int v6, v1, p1

    div-int/lit8 v4, v6, 0x2

    sub-int v6, v0, p1

    div-int/lit8 v5, v6, 0x2

    invoke-static {p0, v4, v5, p1, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    :cond_2
    move v2, p1

    mul-int v6, p1, v1

    div-int v3, v6, v0

    goto :goto_0
.end method

.method public static decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 7

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v5, "ImageUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static filmstripBitmap(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$IImage;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v5, v0

    :cond_1
    return-object v5

    :cond_2
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_4
    iget-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v6, :cond_1

    iput-boolean v9, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    iput-object v6, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v6, v7, :cond_1

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v6, v7, :cond_1

    iget-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v6, :cond_1

    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v6, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    if-le v5, v6, :cond_5

    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    sget v6, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    int-to-float v6, v6

    div-float v3, v5, v6

    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    iput v5, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-double v5, v5

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :cond_5
    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v2

    if-eqz v2, :cond_8

    const/16 v5, 0x10

    invoke-virtual {v4, v2, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setBitmapColorDepth(II)I

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    invoke-virtual {v4, v2, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v2, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v5

    if-eqz v5, :cond_6

    :cond_7
    invoke-virtual {v4, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getDefaultFilmstripBitmap(Lcom/htc/opensense/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/16 v10, 0xbf

    const/4 v9, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0}, Lcom/htc/opensense/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v8, v4, [I

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-interface {p0}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v4, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    invoke-static {v2, v3, v4}, Lcom/htc/opensense/album/util/ImageUtils;->countNewSize(III)[I

    move-result-object v8

    aget v2, v8, v11

    aget v3, v8, v9

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/htc/opensense/album/util/ImageUtils;->reflection:I

    add-int/2addr v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    aget v2, v8, v11

    int-to-float v3, v2

    aget v2, v8, v9

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1
    move-object v1, v6

    goto :goto_0

    :cond_1
    new-array v8, v4, [I

    sget v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WIDTH_VIDEO:I

    aput v2, v8, v11

    sget v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/htc/opensense/album/util/ImageUtils;->reflection:I

    add-int/2addr v2, v3

    aput v2, v8, v9

    aget v2, v8, v11

    aget v3, v8, v9

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    aget v2, v8, v11

    int-to-float v3, v2

    aget v2, v8, v9

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public static getExifThumbnailBitmap(Lcom/htc/opensense/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense/album/util/ExifUtil;->getExifThumbnail(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    invoke-interface {p0}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v9

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v10, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    array-length v2, v8

    invoke-static {v8, v1, v2, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v2, v9

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    div-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    invoke-virtual {v5, v2, v6, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    move-object v0, v7

    :cond_0
    return-object v0
.end method

.method public static getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$IImage;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->isGif()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/opensense/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getGifFrameCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    new-instance v2, Lcom/htc/opensense/album/util/GIFImageParser;

    invoke-direct {v2}, Lcom/htc/opensense/album/util/GIFImageParser;-><init>()V

    const/4 v4, 0x0

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/util/GIFImageParser;->SetData(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/GIFImageParser;->frameCount()I

    move-result v6

    :goto_1
    return v6

    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/opensense/album/util/ImageUtils;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/htc/opensense/album/util/GIFImageParser;->setRawData([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static getOriginalSize(Ljava/lang/String;)[I
    .locals 6

    const/4 v5, 0x2

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

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

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getOriginalSize] Unable to get size from file, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public static loadBitmap(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 8

    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p1, p2, p3, p4}, Lcom/htc/opensense/album/util/ImageUtils;->countSampleValue(IIII)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v1, p3, :cond_0

    if-eq v0, p4, :cond_1

    :cond_0
    sget-boolean v5, Lcom/htc/opensense/album/util/ImageUtils;->useScaledResize:Z

    if-eqz v5, :cond_2

    invoke-static {v2, p3, p4}, Lcom/htc/opensense/album/util/ImageUtils;->scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-static {v2, v1, v0, p3, p4}, Lcom/htc/opensense/album/util/ImageUtils;->matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v5, "ImageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[loadBitmap] Unable to load bitmap, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadSquareBitmap(Lcom/htc/opensense/album/util/ImageManager$IImage;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-interface {p0}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/htc/opensense/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    invoke-interface {p0}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, p1, v1, p2, v2}, Lcom/htc/opensense/album/util/ImageUtils;->loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/opensense/album/util/ImageUtils;->loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v7, 0x0

    move-object v2, p0

    if-eqz p2, :cond_9

    new-instance v9, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v9, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    invoke-virtual {v9, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V

    if-nez v7, :cond_0

    const-string v1, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to decode video file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :catch_0
    move-exception v8

    :try_start_1
    const-string v1, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to decode video file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v1

    :cond_0
    const/4 v1, 0x2

    new-array v12, v1, [I

    fill-array-data v12, :array_0

    if-nez v7, :cond_2

    invoke-static {v2}, Lcom/htc/opensense/album/util/ImageUtils;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v12

    :goto_1
    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1

    const/4 v1, 0x1

    aget v1, v12, v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_3

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    aput v3, v12, v1

    const/4 v1, 0x1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    aput v3, v12, v1

    goto :goto_1

    :cond_3
    if-nez v7, :cond_6

    if-nez p3, :cond_4

    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {p3 .. p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_4
    move-object/from16 v0, p3

    iget-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v3, 0x1

    aget v3, v12, v3

    invoke-static {v1, v3, p1, p1}, Lcom/htc/opensense/album/util/ImageUtils;->countGridSampleValue(IIII)I

    move-result v1

    move-object/from16 v0, p3

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    move-object/from16 v0, p3

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    :cond_6
    :goto_2
    if-nez v7, :cond_7

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v8

    const-string v1, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageUtils][loadSquareBitmap]: OutOfMemoryError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    int-to-float v1, p1

    const/4 v3, 0x0

    aget v3, v12, v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v3, p1

    const/4 v4, 0x1

    aget v4, v12, v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/4 v1, 0x0

    aget v1, v12, v1

    int-to-float v1, v1

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/4 v1, 0x1

    aget v1, v12, v1

    int-to-float v1, v1

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v7, v11, v10}, Lcom/htc/opensense/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_8

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-static {v7}, Lcom/htc/opensense/album/util/ImageUtils;->cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_3
    move-object v1, v7

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    const/4 v6, 0x2

    move/from16 v3, p4

    move v4, p1

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeFile(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private static matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p3

    int-to-float v2, p1

    div-float/2addr v0, v2

    int-to-float v2, p4

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10

    if-nez p0, :cond_1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, p1

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v9, 0x0

    const/4 v7, 0x0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_1
    if-nez v9, :cond_3

    const/4 v0, 0x3

    if-le v7, v0, :cond_2

    :cond_3
    invoke-virtual {p0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method

.method public static rotatePhotoByOrientaton(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    if-lez p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v0

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, p0, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromBitmap(ILandroid/graphics/Bitmap;II)I

    :cond_2
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_3
    move-object v1, p0

    goto :goto_0
.end method

.method private static scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
