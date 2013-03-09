.class public Lcom/htc/painting/util/PatternUtility;
.super Ljava/lang/Object;
.source "PatternUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultSrc(FFLandroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    float-to-int v2, p0

    float-to-int v3, p1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5, v5, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, v5, v5, p0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static getDefaultSrc(IFF)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    float-to-int v3, p1

    float-to-int v4, p2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v6, v6, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v2
.end method

.method public static mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 15

    move-object v11, p0

    move-object/from16 v7, p1

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

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v3

    div-float v0, p2, v0

    int-to-float v1, v4

    div-float v1, p3, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

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

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v3

    div-float v0, p2, v0

    int-to-float v1, v4

    div-float v1, p3, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_3
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v13, 0x0

    :goto_0
    int-to-float v0, v13

    cmpg-float v0, v0, p2

    if-gez v0, :cond_5

    const/4 v14, 0x0

    :goto_1
    int-to-float v0, v14

    cmpg-float v0, v0, p3

    if-gez v0, :cond_4

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

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

    invoke-virtual {v10, v13, v14, v9}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_5
    return-object v10
.end method
