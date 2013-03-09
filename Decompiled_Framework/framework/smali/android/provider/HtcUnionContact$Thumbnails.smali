.class public final Landroid/provider/HtcUnionContact$Thumbnails;
.super Ljava/lang/Object;
.source "HtcUnionContact.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Thumbnails"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static countNewSize(IIII)[I
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

.method private static countSampleValue(IIII)I
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

.method public static getCenterCroppedBitmap([BI)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_4

    array-length v5, p0

    if-lez v5, :cond_4

    invoke-static {p0}, Landroid/provider/HtcUnionContact$Thumbnails;->getImageSize([B)[I

    move-result-object v2

    aget v5, v2, v9

    if-eqz v5, :cond_0

    aget v5, v2, v8

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    aget v5, v2, v9

    aget v6, v2, v8

    invoke-static {v5, v6, p1, p1}, Landroid/provider/HtcUnionContact$Thumbnails;->countNewSize(IIII)[I

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v2

    :cond_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    aget v5, v2, v9

    aget v6, v2, v8

    aget v7, v0, v9

    aget v8, v0, v8

    invoke-static {v5, v6, v7, v8}, Landroid/provider/HtcUnionContact$Thumbnails;->countSampleValue(IIII)I

    move-result v5

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v5, p0

    invoke-static {p0, v9, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/provider/HtcUnionContact$Thumbnails;->resizeAndCropCenterBitmap(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v4, :cond_3

    if-eq v4, v3, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    :goto_1
    move-object v5, v3

    goto :goto_0

    :cond_4
    const-string v5, "HtcUnionContact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCenterCroppedBitmap - invaled data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getCropCenterBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    if-le v2, v0, :cond_1

    sub-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    invoke-static {p0, v3, v4, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    invoke-static {p0, v4, v3, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private static getImageSize([B)[I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, p0

    invoke-static {p0, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    new-array v1, v2, [I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v2, v1, v3

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v2, v1, v4

    :cond_0
    return-object v1
.end method

.method private static getOriginalSize(Ljava/lang/String;)[I
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

.method private static matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 8

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

    move-result-object v7

    return-object v7
.end method

.method private static resizeAndCropCenterBitmap(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_4

    :cond_0
    const-string v6, "HtcUnionContact"

    const-string/jumbo v7, "resizeAndCropCenterBitmap null input or invalid scaled size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    const-string v6, "HtcUnionContact"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bitmap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    const-string v6, "HtcUnionContact"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "newSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_0
    return-object v4

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    aget v6, p1, v7

    if-ne v1, v6, :cond_5

    aget v6, p1, v8

    if-eq v0, v6, :cond_6

    :cond_5
    aget v6, p1, v7

    aget v7, p1, v8

    invoke-static {p0, v1, v0, v6, v7}, Landroid/provider/HtcUnionContact$Thumbnails;->matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_6
    if-nez v3, :cond_7

    move-object v5, p0

    :goto_1
    invoke-static {v5}, Landroid/provider/HtcUnionContact$Thumbnails;->getCropCenterBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v4, v2

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_7
    move-object v5, v3

    goto :goto_1
.end method
