.class public Lcom/google/android/finsky/layout/CellTitleOverlay;
.super Lcom/google/android/finsky/layout/DecoratedTextView;
.source "CellTitleOverlay.java"


# instance fields
.field private mBackgroundColor:I

.field private mCornerSize:I

.field private mMaxWidthPercent:F

.field private mMinWidthPercent:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/CellTitleOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/CellTitleOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/DecoratedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    sget-object v2, Lcom/android/vending/R$styleable;->CellTitleOverlay:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const/high16 v2, 0x3e80

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mMinWidthPercent:F

    .line 69
    const/4 v2, 0x1

    const v3, 0x3f59999a

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mMaxWidthPercent:F

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mBackgroundColor:I

    .line 76
    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mCornerSize:I

    .line 78
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/CellTitleOverlay;->setWillNotDraw(Z)V

    .line 79
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mPath:Landroid/graphics/Path;

    .line 81
    return-void
.end method


# virtual methods
.method public getMaxWidthPercent()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mMaxWidthPercent:F

    return v0
.end method

.method public getMinWidthPercent()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mMinWidthPercent:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getWidth()I

    move-result v1

    .line 100
    .local v1, w:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getHeight()I

    move-result v0

    .line 101
    .local v0, h:I
    iget-object v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 102
    iget-object v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 103
    iget-object v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mPath:Landroid/graphics/Path;

    int-to-float v3, v1

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 104
    iget-object v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mPath:Landroid/graphics/Path;

    int-to-float v3, v1

    iget v4, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mCornerSize:I

    sub-int v4, v0, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    iget-object v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mCornerSize:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 106
    iget-object v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mPath:Landroid/graphics/Path;

    int-to-float v3, v0

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    iget-object v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 108
    iget-object v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v2, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 112
    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/DecoratedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "backgroundColor"

    .prologue
    .line 93
    iput p1, p0, Lcom/google/android/finsky/layout/CellTitleOverlay;->mBackgroundColor:I

    .line 94
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/CellTitleOverlay;->invalidate()V

    .line 95
    return-void
.end method
