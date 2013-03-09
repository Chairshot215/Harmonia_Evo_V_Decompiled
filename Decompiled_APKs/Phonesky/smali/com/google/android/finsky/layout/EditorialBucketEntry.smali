.class public Lcom/google/android/finsky/layout/EditorialBucketEntry;
.super Landroid/widget/FrameLayout;
.source "EditorialBucketEntry.java"


# instance fields
.field private final mHalfSeparatorThickness:I

.field private final mSeparatorPaint:Landroid/graphics/Paint;

.field private final mSeparatorThickness:F

.field private mShowLeft:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/EditorialBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/EditorialBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mSeparatorThickness:F

    .line 39
    iget v1, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mSeparatorThickness:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mHalfSeparatorThickness:I

    .line 40
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mSeparatorThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialBucketEntry;->getHeight()I

    move-result v7

    .line 54
    .local v7, height:I
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mShowLeft:Z

    if-eqz v0, :cond_0

    .line 55
    iget v8, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mHalfSeparatorThickness:I

    .line 56
    .local v8, leftX:I
    int-to-float v1, v8

    int-to-float v3, v8

    int-to-float v4, v7

    iget-object v5, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 59
    .end local v8           #leftX:I
    :cond_0
    iget v9, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mHalfSeparatorThickness:I

    .line 60
    .local v9, topY:I
    int-to-float v3, v9

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialBucketEntry;->getWidth()I

    move-result v0

    int-to-float v4, v0

    int-to-float v5, v9

    iget-object v6, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 62
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    return-void
.end method

.method public setLeftSeparatorVisibility(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mShowLeft:Z

    .line 47
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialBucketEntry;->invalidate()V

    .line 48
    return-void
.end method
