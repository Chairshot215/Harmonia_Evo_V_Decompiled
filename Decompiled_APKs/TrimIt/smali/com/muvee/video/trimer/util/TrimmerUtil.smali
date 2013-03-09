.class public Lcom/muvee/video/trimer/util/TrimmerUtil;
.super Ljava/lang/Object;
.source "TrimmerUtil.java"


# static fields
.field private static final REFELECTION_GAP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "com.muvee.video.trimer.util.TrimmerUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableSize()J
    .locals 10

    .prologue
    .line 152
    const-wide/16 v5, 0x0

    .line 154
    .local v5, mSize:J
    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 155
    .local v7, statFs:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 158
    .local v0, blockSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getFreeBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v8, v8

    mul-long v3, v8, v0

    .line 164
    .local v3, freeSize:J
    move-wide v5, v3

    .line 169
    .end local v0           #blockSize:J
    .end local v3           #freeSize:J
    .end local v7           #statFs:Landroid/os/StatFs;
    :goto_0
    return-wide v5

    .line 165
    :catch_0
    move-exception v2

    .line 167
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRefelectionThumb(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "source"
    .parameter "sH"

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 70
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 69
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 71
    .local v8, bitmap:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v9, canvas:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 74
    .local v10, mPaint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 77
    const/high16 v1, 0x4210

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 80
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v9, p0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 83
    .local v11, matrix:Landroid/graphics/Matrix;
    const/high16 v1, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 86
    new-instance v14, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v14, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 87
    .local v14, rectFTest:Landroid/graphics/RectF;
    const-string v1, "com.muvee.video.trimer.util.TrimmerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRefelectionThumb::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v11, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 89
    const-string v1, "com.muvee.video.trimer.util.TrimmerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRefelectionThumb::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v9, p0, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 92
    new-instance v13, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 92
    invoke-direct {v13, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 95
    .local v13, rectF:Landroid/graphics/RectF;
    invoke-virtual {v11, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 96
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v10}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 97
    .local v12, paint2:Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 98
    iget v1, v13, Landroid/graphics/RectF;->left:F

    iget v2, v13, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget v2, v13, Landroid/graphics/RectF;->top:F

    .line 99
    iget v3, v13, Landroid/graphics/RectF;->left:F

    iget v4, v13, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    .line 100
    iget v4, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v5

    const v6, 0x3e6147ae

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 101
    const v5, 0x7fffffff

    const v6, 0xffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 97
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 102
    .local v0, shader:Landroid/graphics/LinearGradient;
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 103
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 104
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 103
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 105
    invoke-virtual {v9, v13, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 106
    return-object v8
.end method

.method private static getRefelectionThumb(Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 16
    .parameter "bitmapDrawable"
    .parameter "sH"

    .prologue
    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 30
    .local v15, source:Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 31
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 30
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 32
    .local v9, bitmap:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    .local v10, canvas:Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 35
    .local v11, mPaint:Landroid/graphics/Paint;
    const/4 v2, -0x1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 38
    const/high16 v2, 0x4210

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 39
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 41
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v15, v2, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 43
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 44
    .local v12, matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 46
    invoke-virtual {v10, v15, v12, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 48
    new-instance v14, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 48
    invoke-direct {v14, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 51
    .local v14, rectF:Landroid/graphics/RectF;
    invoke-virtual {v12, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 52
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 53
    .local v13, paint2:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 54
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v3, v14, Landroid/graphics/RectF;->top:F

    .line 55
    iget v4, v14, Landroid/graphics/RectF;->left:F

    iget v5, v14, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    .line 56
    iget v5, v14, Landroid/graphics/RectF;->top:F

    move/from16 v0, p1

    int-to-float v6, v0

    add-float/2addr v5, v6

    .line 57
    const v6, 0x7fffffff

    const v7, 0xffffff

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 53
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 58
    .local v1, shader:Landroid/graphics/LinearGradient;
    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 59
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    .line 60
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 59
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 61
    invoke-virtual {v10, v14, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 63
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public static getRefelectionThumbDownOnly(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "source"
    .parameter "sH"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 112
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 111
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 113
    .local v8, bitmap:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    .local v9, canvas:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 116
    .local v10, mPaint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 119
    const/high16 v1, 0x4210

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 122
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v9, p0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 125
    .local v11, matrix:Landroid/graphics/Matrix;
    const/high16 v1, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 126
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 128
    new-instance v14, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v14, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 129
    .local v14, rectFTest:Landroid/graphics/RectF;
    const-string v1, "com.muvee.video.trimer.util.TrimmerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRefelectionThumbDownOnly::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v11, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 131
    const-string v1, "com.muvee.video.trimer.util.TrimmerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRefelectionThumbDownOnly::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v9, p0, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 134
    new-instance v13, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 135
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 134
    invoke-direct {v13, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 138
    .local v13, rectF:Landroid/graphics/RectF;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v10}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 139
    .local v12, paint2:Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 140
    iget v1, v13, Landroid/graphics/RectF;->left:F

    iget v2, v13, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget v2, v13, Landroid/graphics/RectF;->top:F

    .line 141
    iget v3, v13, Landroid/graphics/RectF;->left:F

    iget v4, v13, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    .line 142
    iget v4, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v5

    const v6, 0x3e6147ae

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 143
    const v5, 0x7fffffff

    const v6, 0xffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 139
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 144
    .local v0, shader:Landroid/graphics/LinearGradient;
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 145
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 146
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 145
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 147
    invoke-virtual {v9, v13, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 148
    return-object v8
.end method
