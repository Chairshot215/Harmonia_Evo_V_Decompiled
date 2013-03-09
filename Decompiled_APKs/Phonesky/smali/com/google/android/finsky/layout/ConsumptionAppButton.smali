.class public Lcom/google/android/finsky/layout/ConsumptionAppButton;
.super Landroid/widget/Button;
.source "ConsumptionAppButton.java"


# instance fields
.field private mIconBitmap:Landroid/graphics/drawable/Drawable;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextWidth:F

.field private mUseHoloDarkIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mTextPaint:Landroid/graphics/Paint;

    .line 32
    sget-object v1, Lcom/android/vending/R$styleable;->ConsumptionAppButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, viewAttrs:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mUseHoloDarkIcon:Z

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->setWillNotDraw(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v6, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 80
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v2, v6, 0x2

    .line 68
    .local v2, iconY:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getPaddingLeft()I

    move-result v4

    .line 69
    .local v4, paddingLeft:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getPaddingRight()I

    move-result v5

    .line 71
    .local v5, paddingRight:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    sub-int v3, v6, v5

    .line 72
    .local v3, leftForContent:I
    iget v6, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mTextWidth:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int v0, v6, v7

    .line 74
    .local v0, contentWidth:I
    add-int v6, v4, v3

    sub-int/2addr v6, v0

    div-int/lit8 v1, v6, 0x2

    .line 76
    .local v1, iconX:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getScrollX()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    int-to-float v7, v2

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    iget-object v6, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public setDocumentBackend(I)V
    .locals 5
    .parameter "backend"

    .prologue
    const/4 v4, 0x0

    .line 42
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mUseHoloDarkIcon:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getHoloDarkOpenButtonDrawableId(I)I

    move-result v0

    .line 45
    .local v0, iconResourceId:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    .line 46
    iget-object v1, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    iget-object v1, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    iget-object v1, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mTextWidth:F

    .line 52
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->invalidate()V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->requestLayout()V

    .line 54
    return-void

    .line 42
    .end local v0           #iconResourceId:I
    :cond_0
    invoke-static {p1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getOpenButtonDrawableId(I)I

    move-result v0

    goto :goto_0
.end method
