.class public Lcom/google/android/voicesearch/ui/DottyProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DottyProgressDrawable.java"


# instance fields
.field mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    return-void
.end method

.method private drawDots(Landroid/graphics/Canvas;Landroid/graphics/Rect;III)V
    .locals 8
    .parameter "canvas"
    .parameter "bounds"
    .parameter "alpha1"
    .parameter "alpha2"
    .parameter "alpha3"

    .prologue
    const/high16 v7, 0x4040

    const/high16 v6, 0x4000

    const/16 v5, 0x32

    .line 77
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4080

    div-float v1, v3, v4

    .line 78
    .local v1, xPos:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v2, v3, v6

    .line 79
    .local v2, yPos:F
    div-float v0, v1, v7

    .line 81
    .local v0, radius:F
    iget-object v3, p0, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-static {p3, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 82
    iget-object v3, p0, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    iget-object v3, p0, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-static {p4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    mul-float v3, v1, v6

    iget-object v4, p0, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    iget-object v3, p0, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-static {p5, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 86
    mul-float v3, v1, v7

    iget-object v4, p0, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 87
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v1, 0x437f

    .line 53
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 54
    .local v2, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;->getLevel()I

    move-result v7

    .line 55
    .local v7, level:I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 57
    const v6, 0x4528c000

    .line 58
    .local v6, boundry:F
    int-to-float v8, v7

    .line 60
    .local v8, levelf:F
    sub-float v0, v6, v8

    div-float/2addr v0, v6

    mul-float/2addr v0, v1

    float-to-int v3, v0

    const/high16 v0, 0x4000

    mul-float/2addr v0, v6

    sub-float v0, v8, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v6, v0

    div-float/2addr v0, v6

    mul-float/2addr v0, v1

    float-to-int v4, v0

    const/high16 v0, 0x4080

    mul-float/2addr v0, v6

    sub-float v0, v8, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v6, v0

    div-float/2addr v0, v6

    mul-float/2addr v0, v1

    float-to-int v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/ui/DottyProgressDrawable;->drawDots(Landroid/graphics/Canvas;Landroid/graphics/Rect;III)V

    .line 64
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0xa

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x28

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 95
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 98
    return-void
.end method
