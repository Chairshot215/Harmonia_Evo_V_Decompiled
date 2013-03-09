.class public Lcom/htc/idlescreen/base/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "src"

    .prologue
    const/4 v5, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v1, 0x0

    .line 48
    :goto_0
    return-object v1

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 41
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 42
    .local v0, height:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 43
    .local v1, shadow:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 44
    .local v2, shadowCanvas:Landroid/graphics/Canvas;
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 45
    invoke-virtual {p0, v5, v5, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "src"
    .parameter "outX"
    .parameter "outY"

    .prologue
    const/4 v1, 0x0

    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v7, 0x0

    .line 80
    :goto_0
    return-object v7

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 57
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 58
    .local v4, height:I
    int-to-float v2, p1

    int-to-float v6, v3

    div-float v10, v2, v6

    .line 59
    .local v10, scaleWidth:F
    int-to-float v2, p2

    int-to-float v6, v4

    div-float v8, v2, v6

    .line 61
    .local v8, scaleHeight:F
    if-le v3, p1, :cond_2

    if-le v4, p2, :cond_2

    .line 63
    cmpl-float v2, v10, v8

    if-lez v2, :cond_1

    move v9, v8

    .line 70
    .local v9, scaleRate:F
    :goto_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 71
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 73
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .local v0, ori:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    .local v11, shadowCanvas:Landroid/graphics/Canvas;
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 76
    invoke-virtual {p0, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    invoke-virtual {p0, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 80
    .local v7, scale:Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v0           #ori:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #scale:Landroid/graphics/Bitmap;
    .end local v9           #scaleRate:F
    .end local v11           #shadowCanvas:Landroid/graphics/Canvas;
    :cond_1
    move v9, v10

    .line 63
    goto :goto_1

    .line 67
    :cond_2
    cmpg-float v2, v10, v8

    if-gez v2, :cond_3

    move v9, v8

    .restart local v9       #scaleRate:F
    :goto_2
    goto :goto_1

    .end local v9           #scaleRate:F
    :cond_3
    move v9, v10

    goto :goto_2
.end method

.method public static getShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 12
    if-nez p0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-object v1

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 16
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 17
    .local v0, height:I
    if-lez v3, :cond_0

    if-lez v0, :cond_0

    .line 20
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 21
    .local v1, shadow:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    .local v2, shadowCanvas:Landroid/graphics/Canvas;
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 26
    const v4, -0xaaaaab

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 27
    invoke-virtual {p0, v6, v6, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 28
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method
