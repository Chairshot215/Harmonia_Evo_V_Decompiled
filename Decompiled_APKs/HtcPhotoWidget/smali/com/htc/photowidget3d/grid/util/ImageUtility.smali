.class public Lcom/htc/photowidget3d/grid/util/ImageUtility;
.super Ljava/lang/Object;
.source "ImageUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .parameter "options"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const/4 v5, 0x1

    .line 203
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 204
    .local v4, w:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 206
    .local v3, h:I
    div-int v2, v4, p1

    .line 207
    .local v2, candidateW:I
    div-int v1, v3, p2

    .line 208
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 210
    .local v0, candidate:I
    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v5

    .line 215
    :cond_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 220
    if-le v0, v5, :cond_2

    .line 222
    if-le v4, p1, :cond_2

    div-int v6, v4, v0

    if-ge v6, p1, :cond_2

    .line 224
    add-int/lit8 v0, v0, -0x1

    .line 228
    :cond_2
    if-le v0, v5, :cond_3

    .line 230
    if-le v3, p2, :cond_3

    div-int v5, v3, v0

    if-ge v5, p2, :cond_3

    .line 232
    add-int/lit8 v0, v0, -0x1

    :cond_3
    move v5, v0

    .line 238
    goto :goto_0
.end method

.method public static countGridSampleValue(IIII)I
    .locals 5
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 127
    const/4 v0, 0x1

    .line 129
    .local v0, sample:I
    if-ge p0, p2, :cond_0

    if-ge p1, p3, :cond_0

    .line 131
    const/4 v1, 0x1

    .line 144
    :goto_0
    return v1

    .line 134
    :cond_0
    div-int v1, p0, p2

    div-int v2, p1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_1

    .line 136
    const/4 v0, 0x1

    .line 139
    :cond_1
    mul-int v1, p0, p1

    mul-int v2, v0, v0

    div-int/2addr v1, v2

    const v2, 0x4b000

    if-le v1, v2, :cond_2

    .line 141
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

    .line 144
    goto :goto_0
.end method

.method public static countScaleSize(IIII)[I
    .locals 8
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const/4 v7, 0x1

    .line 243
    if-lt p0, v7, :cond_0

    if-ge p1, v7, :cond_1

    .line 245
    :cond_0
    const/4 v4, 0x0

    .line 265
    :goto_0
    return-object v4

    .line 247
    :cond_1
    const/4 v2, 0x0

    .line 248
    .local v2, nNewWidth:F
    const/4 v1, 0x0

    .line 250
    .local v1, nNewHeight:F
    int-to-float v4, p2

    int-to-float v5, p3

    div-float v3, v4, v5

    .line 251
    .local v3, targetRatio:F
    int-to-float v4, p0

    int-to-float v5, p1

    div-float v0, v4, v5

    .line 254
    .local v0, imgRatio:F
    cmpl-float v4, v3, v0

    if-lez v4, :cond_2

    .line 256
    int-to-float v2, p2

    .line 257
    mul-int v4, p1, p2

    div-int/2addr v4, p0

    int-to-float v1, v4

    .line 265
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    float-to-int v6, v2

    aput v6, v4, v5

    float-to-int v5, v1

    aput v5, v4, v7

    goto :goto_0

    .line 261
    :cond_2
    int-to-float v1, p3

    .line 262
    mul-int v4, p0, p3

    div-int/2addr v4, p1

    int-to-float v2, v4

    goto :goto_1
.end method

.method private static createThumbnailFromDecoding(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "filename"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 149
    const/4 v0, 0x0

    .line 153
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez p0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-object v4

    .line 158
    :cond_1
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 161
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 162
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 164
    iget-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v5, :cond_0

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v6, v5, :cond_0

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v6, v5, :cond_0

    .line 168
    invoke-static {v3, p1, p2}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 169
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 170
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 171
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :try_start_1
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 180
    :goto_1
    if-nez v0, :cond_2

    .line 183
    :try_start_2
    const-string v5, "not support format, use Scalado to decode."

    invoke-static {v5}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_e(Ljava/lang/String;)V

    .line 184
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, p1, p2, v5, v6}, Lcom/htc/photowidget3d/util/ImageUtils;->decodeByScalado(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    if-nez v0, :cond_2

    .line 188
    const-string v5, "decodeByScalado fail."

    invoke-static {v5}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_e(Ljava/lang/String;)V

    :cond_2
    move-object v4, v0

    .line 198
    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 178
    .local v1, error:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 192
    .end local v1           #error:Ljava/lang/OutOfMemoryError;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v2

    .line 194
    .local v2, ex:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "filePath"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    const/4 v5, 0x0

    .line 97
    if-eqz p0, :cond_0

    .line 99
    const/4 v2, 0x0

    .line 101
    .local v2, thumbData:[B
    invoke-static {p0}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->getExifThumbnail(Ljava/lang/String;)[B

    move-result-object v2

    .line 103
    if-eqz v2, :cond_0

    .line 107
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 108
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 109
    array-length v4, v2

    invoke-static {v2, v5, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 110
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 111
    .local v3, width:I
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 113
    .local v0, height:I
    invoke-static {v3, v0, p1, p2}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->countGridSampleValue(IIII)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 116
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 117
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 118
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 119
    array-length v4, v2

    invoke-static {v2, v5, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 122
    .end local v0           #height:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #thumbData:[B
    .end local v3           #width:I
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static cropBeforeResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "originalImg"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const-wide/high16 v7, 0x3fe0

    .line 367
    if-nez p0, :cond_1

    .line 369
    const/4 p0, 0x0

    .line 398
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 372
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lt v5, p1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v5, p2, :cond_0

    .line 377
    :cond_2
    const/4 v3, 0x0

    .line 378
    .local v3, newBitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 379
    .local v2, nNewWidth:I
    const/4 v1, 0x0

    .line 381
    .local v1, nNewHeight:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p1

    div-float v4, v5, v6

    .line 382
    .local v4, wRatio:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p2

    div-float v0, v5, v6

    .line 385
    .local v0, hRatio:F
    cmpl-float v5, v4, v0

    if-lez v5, :cond_3

    .line 387
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 388
    mul-int v5, v1, p1

    div-int/2addr v5, p2

    int-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v2, v5

    .line 396
    :goto_1
    invoke-static {p0, v2, v1}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->cropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object p0, v3

    .line 398
    goto :goto_0

    .line 392
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 393
    mul-int v5, v2, p2

    div-int/2addr v5, p1

    int-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v1, v5

    goto :goto_1
.end method

.method public static cropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "original"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 270
    if-nez p0, :cond_0

    .line 272
    const/4 v2, 0x0

    .line 295
    :goto_0
    return-object v2

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 275
    .local v5, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 278
    .local v1, height:I
    if-ge v5, p1, :cond_1

    move v4, v5

    .line 279
    .local v4, targetWidth:I
    :goto_1
    if-ge v1, p2, :cond_2

    move v3, v1

    .line 281
    .local v3, targetHeight:I
    :goto_2
    sub-int v8, v5, v4

    div-int/lit8 v6, v8, 0x2

    .line 282
    .local v6, xMargin:I
    sub-int v8, v1, v3

    div-int/lit8 v7, v8, 0x2

    .line 283
    .local v7, yMargin:I
    const/4 v2, 0x0

    .line 288
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, v6, v7, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v2           #newBitmap:Landroid/graphics/Bitmap;
    .end local v3           #targetHeight:I
    .end local v4           #targetWidth:I
    .end local v6           #xMargin:I
    .end local v7           #yMargin:I
    :cond_1
    move v4, p1

    .line 278
    goto :goto_1

    .restart local v4       #targetWidth:I
    :cond_2
    move v3, p2

    .line 279
    goto :goto_2

    .line 290
    .restart local v2       #newBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #targetHeight:I
    .restart local v6       #xMargin:I
    .restart local v7       #yMargin:I
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static cropIntoPieces(Landroid/graphics/Bitmap;[Lcom/htc/photowidget3d/grid/BitmapArray;IIII)Z
    .locals 8
    .parameter "cropImg"
    .parameter "bmpArray"
    .parameter "nCol"
    .parameter "nRow"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, bRet:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 429
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 412
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p2, :cond_2

    .line 414
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, p3, :cond_1

    .line 416
    mul-int v5, v4, p2

    add-int/2addr v5, v3

    :try_start_0
    aget-object v5, p1, v5

    mul-int v6, v3, p4

    mul-int v7, v4, p5

    invoke-static {p0, v6, v7, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/photowidget3d/grid/BitmapArray;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 412
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 420
    .end local v4           #j:I
    :cond_2
    const/4 v0, 0x1

    :goto_3
    move v1, v0

    .line 429
    .restart local v1       #bRet:I
    goto :goto_0

    .line 422
    .end local v1           #bRet:I
    .restart local v4       #j:I
    :catch_0
    move-exception v2

    .line 424
    .local v2, ex:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cropIntoPieces got exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static getExifThumbnail(Ljava/lang/String;)[B
    .locals 5
    .parameter "path"

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 78
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You need to specified file path"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 84
    .local v0, data:[B
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, exif:Landroid/media/ExifInterface;
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    .end local v2           #exif:Landroid/media/ExifInterface;
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v1

    .line 89
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadFullScreen(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "szName"
    .parameter "nWidth"
    .parameter "nCol"
    .parameter "nHeight"
    .parameter "nRow"

    .prologue
    .line 300
    mul-int v1, p1, p2

    mul-int v2, p3, p4

    invoke-static {p0, v1, v2}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->createThumbnailFromDecoding(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 302
    .local v7, bmp:Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    move-object v0, v7

    .line 362
    :cond_0
    :goto_0
    return-object v0

    .line 308
    :cond_1
    mul-int v1, p1, p2

    mul-int v2, p3, p4

    invoke-static {v7, v1, v2}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->cropBeforeResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    .local v0, cropFirstBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 311
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 314
    const/4 v7, 0x0

    goto :goto_0

    .line 319
    :cond_2
    const/4 v1, 0x2

    new-array v13, v1, [I

    .line 321
    .local v13, size:[I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v3, p1, p2

    mul-int v4, p3, p4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->countScaleSize(IIII)[I

    move-result-object v13

    .line 324
    const/4 v1, 0x0

    aget v1, v13, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 325
    .local v12, scaleWidth:F
    const/4 v1, 0x1

    aget v1, v13, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 326
    .local v11, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 327
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v12, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 329
    const/4 v10, 0x0

    .line 330
    .local v10, resizeBitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 333
    .local v8, cropBitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 335
    if-eqz v10, :cond_3

    .line 337
    mul-int v1, p1, p2

    mul-int v2, p3, p4

    invoke-static {v10, v1, v2}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->cropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 346
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 348
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    const/4 v7, 0x0

    .line 351
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 353
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    const/4 v0, 0x0

    .line 356
    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 358
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 359
    const/4 v10, 0x0

    :cond_6
    move-object v0, v8

    .line 362
    goto/16 :goto_0

    .line 340
    :catch_0
    move-exception v9

    .line 342
    .local v9, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFullScreen got exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static loadImageFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "res"
    .parameter "id"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 434
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "szName"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 19
    const/4 v0, 0x0

    .line 21
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->createThumbnailFromEXIF(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->createThumbnailFromDecoding(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    :cond_0
    if-eqz v0, :cond_3

    .line 33
    const/4 v2, 0x2

    new-array v11, v2, [I

    .line 35
    .local v11, size:[I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3, p1, p2}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->countScaleSize(IIII)[I

    move-result-object v11

    .line 38
    aget v2, v11, v1

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v2, v3

    .line 39
    .local v10, scaleWidth:F
    aget v2, v11, v6

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v9, v2, v3

    .line 40
    .local v9, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 41
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v10, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 45
    .local v8, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8, p1, p2}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->cropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 55
    .local v7, cropBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    const/4 v0, 0x0

    .line 60
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 62
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 63
    const/4 v8, 0x0

    .line 65
    :cond_2
    if-eqz v7, :cond_3

    .line 71
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #cropBitmap:Landroid/graphics/Bitmap;
    .end local v8           #resizeBitmap:Landroid/graphics/Bitmap;
    .end local v9           #scaleHeight:F
    .end local v10           #scaleWidth:F
    .end local v11           #size:[I
    :goto_0
    return-object v7

    :cond_3
    move-object v7, v0

    goto :goto_0
.end method
