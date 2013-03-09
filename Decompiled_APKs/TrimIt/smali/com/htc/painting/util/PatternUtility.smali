.class public Lcom/htc/painting/util/PatternUtility;
.super Ljava/lang/Object;
.source "PatternUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultSrc(FFLandroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    .line 28
    float-to-int v2, p0

    float-to-int v3, p1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 30
    .local v1, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 31
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    if-ne v2, v3, :cond_1

    .line 32
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5, v5, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 35
    :goto_0
    return-object v1

    .line 34
    :cond_1
    invoke-virtual {v0, v5, v5, p0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static getDefaultSrc(IFF)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "color"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 18
    float-to-int v3, p1

    float-to-int v4, p2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 20
    .local v2, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 21
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    .local v1, p:Landroid/graphics/Paint;
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v6, v6, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 24
    return-object v2
.end method

.method public static mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "src"
    .parameter "mask"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 41
    move-object v11, p0

    .line 42
    .local v11, srcConvert:Landroid/graphics/Bitmap;
    move-object/from16 v7, p1

    .line 44
    .local v7, maskConvert:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 46
    .local v3, OrgWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 48
    .local v4, OrgHeight:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 49
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v0, v3

    div-float v0, p2, v0

    int-to-float v1, v4

    div-float v1, p3, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 51
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 55
    .end local v3           #OrgWidth:I
    .end local v4           #OrgHeight:I
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_3

    .line 56
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 57
    .restart local v3       #OrgWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 58
    .restart local v4       #OrgHeight:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 59
    .restart local v5       #matrix:Landroid/graphics/Matrix;
    int-to-float v0, v3

    div-float v0, p2, v0

    int-to-float v1, v4

    div-float v1, p3, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 61
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 65
    .end local v3           #OrgWidth:I
    .end local v4           #OrgHeight:I
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_3
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 67
    .local v10, result:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .local v13, x:I
    :goto_0
    int-to-float v0, v13

    cmpg-float v0, v0, p2

    if-gez v0, :cond_5

    .line 68
    const/4 v14, 0x0

    .local v14, y:I
    :goto_1
    int-to-float v0, v14

    cmpg-float v0, v0, p3

    if-gez v0, :cond_4

    .line 69
    invoke-virtual {v7, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    .line 70
    .local v8, maskPixel:I
    invoke-virtual {v11, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    .line 72
    .local v12, tilePixel:I
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v0, v1, v2, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    .line 75
    .local v9, newPixel:I
    invoke-virtual {v10, v13, v14, v9}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 68
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 67
    .end local v8           #maskPixel:I
    .end local v9           #newPixel:I
    .end local v12           #tilePixel:I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 78
    .end local v14           #y:I
    :cond_5
    return-object v10
.end method
