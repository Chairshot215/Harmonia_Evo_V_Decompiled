.class public Lcom/google/android/voicesearch/CountdownDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CountdownDrawable.java"


# instance fields
.field private mDrawingBounds:Landroid/graphics/RectF;

.field private mInset:F

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:F

.field private mRingSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "colorResId"

    .prologue
    const/high16 v4, 0x4080

    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 58
    .local v0, density:F
    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mRingSize:F

    .line 59
    mul-float v2, v0, v4

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mInset:F

    .line 61
    iget-object v2, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v2, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v2, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v2, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    mul-float v3, v0, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/voicesearch/CountdownDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/CountdownDrawable;->setRingBounds(Landroid/graphics/Rect;)V

    .line 67
    return-void
.end method

.method private setRingBounds(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "bounds"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mRingSize:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 77
    .local v0, diff:F
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mDrawingBounds:Landroid/graphics/RectF;

    .line 78
    iget-object v1, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mDrawingBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mInset:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mInset:F

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 79
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 83
    const v0, 0xffffff

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 84
    iget-object v1, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mDrawingBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x4387

    iget v0, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mProgress:F

    const/high16 v3, 0x43b4

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 85
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "bounds"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/CountdownDrawable;->setRingBounds(Landroid/graphics/Rect;)V

    .line 72
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 73
    return-void
.end method

.method public onLevelChange(I)Z
    .locals 2
    .parameter "level"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 95
    int-to-float v0, p1

    const v1, 0x461c4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/voicesearch/CountdownDrawable;->mProgress:F

    .line 96
    invoke-virtual {p0}, Lcom/google/android/voicesearch/CountdownDrawable;->invalidateSelf()V

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 101
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 104
    return-void
.end method
