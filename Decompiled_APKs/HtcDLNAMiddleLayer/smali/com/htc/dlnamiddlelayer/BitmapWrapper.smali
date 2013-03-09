.class public Lcom/htc/dlnamiddlelayer/BitmapWrapper;
.super Ljava/lang/Object;
.source "BitmapWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DecodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "sDecodePath"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 52
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BitmapWrapper][DecodeBitmap]+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 59
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 60
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 64
    :try_start_0
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 66
    invoke-static {v2, p1, p2}, Lcom/htc/dlnamiddlelayer/BitmapWrapper;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_1
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 77
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 78
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 80
    const/4 v0, 0x0

    .line 84
    .local v0, bitmapFull:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 91
    :goto_2
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BitmapWrapper][DecodeBitmap]-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v0           #bitmapFull:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BitmapWrapper][DecodeBitmap][Excep1]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 86
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bitmapFull:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 88
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BitmapWrapper][DecodeBitmap][Excep2]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .parameter "options"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const/4 v5, 0x1

    .line 27
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 28
    .local v4, w:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 30
    .local v3, h:I
    div-int v2, v4, p1

    .line 31
    .local v2, candidateW:I
    div-int v1, v3, p2

    .line 32
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 34
    .local v0, candidate:I
    if-nez v0, :cond_0

    .line 47
    :goto_0
    return v5

    .line 37
    :cond_0
    if-le v0, v5, :cond_1

    .line 38
    if-le v4, p1, :cond_1

    div-int v6, v4, v0

    if-ge v6, p1, :cond_1

    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 42
    :cond_1
    if-le v0, v5, :cond_2

    .line 43
    if-le v3, p2, :cond_2

    div-int v5, v3, v0

    if-ge v5, p2, :cond_2

    .line 44
    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v5, v0

    .line 47
    goto :goto_0
.end method

.method private static createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "drawable"

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 155
    .local v1, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 156
    .local v0, height:I
    invoke-static {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/BitmapWrapper;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "drawable"
    .parameter "height"
    .parameter "width"

    .prologue
    const/4 v5, 0x0

    .line 161
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 162
    .local v2, config:Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {p2, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 164
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v5, v5, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    return-object v0

    .line 161
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bmp"
    .parameter "limitWidth"
    .parameter "limitHeight"

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 173
    .local v5, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 176
    .local v1, height:I
    if-gt v5, p1, :cond_0

    if-gt v1, p2, :cond_0

    .line 193
    .end local p0
    :goto_0
    return-object p0

    .line 179
    .restart local p0
    :cond_0
    if-ge v5, p1, :cond_1

    move v4, v5

    .line 180
    .local v4, targetWidth:I
    :goto_1
    if-ge v1, p2, :cond_2

    move v3, v1

    .line 182
    .local v3, targetHeight:I
    :goto_2
    sub-int v8, v5, v4

    div-int/lit8 v6, v8, 0x2

    .line 183
    .local v6, xMargin:I
    sub-int v8, v1, v3

    div-int/lit8 v7, v8, 0x2

    .line 184
    .local v7, yMargin:I
    const/4 v2, 0x0

    .line 186
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, v6, v7, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_3
    move-object p0, v2

    .line 193
    goto :goto_0

    .end local v2           #newBitmap:Landroid/graphics/Bitmap;
    .end local v3           #targetHeight:I
    .end local v4           #targetWidth:I
    .end local v6           #xMargin:I
    .end local v7           #yMargin:I
    :cond_1
    move v4, p1

    .line 179
    goto :goto_1

    .restart local v4       #targetWidth:I
    :cond_2
    move v3, p2

    .line 180
    goto :goto_2

    .line 188
    .restart local v2       #newBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #targetHeight:I
    .restart local v6       #xMargin:I
    .restart local v7       #yMargin:I
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static cropSquareBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bmp"

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 199
    .local v4, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 201
    .local v1, height:I
    if-ne v4, v1, :cond_0

    .line 216
    .end local p0
    :goto_0
    return-object p0

    .line 204
    .restart local p0
    :cond_0
    if-ge v4, v1, :cond_1

    move v3, v4

    .line 205
    .local v3, shortSide:I
    :goto_1
    sub-int v7, v4, v3

    div-int/lit8 v5, v7, 0x2

    .line 206
    .local v5, xMargin:I
    sub-int v7, v1, v3

    div-int/lit8 v6, v7, 0x2

    .line 207
    .local v6, yMargin:I
    const/4 v2, 0x0

    .line 209
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, v5, v6, v3, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_2
    move-object p0, v2

    .line 216
    goto :goto_0

    .end local v2           #newBitmap:Landroid/graphics/Bitmap;
    .end local v3           #shortSide:I
    .end local v5           #xMargin:I
    .end local v6           #yMargin:I
    :cond_1
    move v3, v1

    .line 204
    goto :goto_1

    .line 211
    .restart local v2       #newBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #shortSide:I
    .restart local v5       #xMargin:I
    .restart local v6       #yMargin:I
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 121
    if-nez p1, :cond_1

    .line 123
    const-string v6, "DLNAMiddlelayer"

    const-string v7, "[BitmapWrapper]getApplyMaskBitmap()...bmSrc is null..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 149
    :cond_0
    :goto_0
    return-object v2

    .line 127
    :cond_1
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 128
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 130
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p1, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 132
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 133
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 134
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 135
    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    const/4 v1, 0x0

    .line 140
    :cond_2
    if-eqz v0, :cond_3

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    const/4 v0, 0x0

    .line 145
    :cond_3
    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getReflectionBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "resource"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 98
    if-nez p0, :cond_0

    .line 100
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "[BitmapWrapper]getReflectionBitmap()...resource is null..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v7, 0x0

    .line 110
    :goto_0
    return-object v7

    .line 104
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 105
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 106
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 107
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v2, v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object v0, p0

    move v4, p1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 110
    .local v7, bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getReflectionBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "resource"
    .parameter "height"

    .prologue
    .line 115
    invoke-static {p0}, Lcom/htc/dlnamiddlelayer/BitmapWrapper;->createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    .local v0, photo:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/htc/dlnamiddlelayer/BitmapWrapper;->getReflectionBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
