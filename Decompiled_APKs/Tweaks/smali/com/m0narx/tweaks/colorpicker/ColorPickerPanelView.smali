.class public Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;
.super Landroid/view/View;
.source "ColorPickerPanelView.java"


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f


# instance fields
.field private mAlphaPattern:Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorPaint:Landroid/graphics/Paint;

.field private mColorRect:Landroid/graphics/RectF;

.field private mDensity:F

.field private mDrawingRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mDensity:F

    .line 21
    const v0, -0x919192

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mBorderColor:I

    .line 22
    const/high16 v0, -0x100

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mColor:I

    .line 43
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mDensity:F

    .line 50
    return-void
.end method

.method private setUpColorRect()V
    .locals 10

    .prologue
    const/high16 v6, 0x3f80

    .line 96
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    .line 98
    .local v1, dRect:Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v6

    .line 99
    .local v2, left:F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v6

    .line 100
    .local v4, top:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v6

    .line 101
    .local v0, bottom:F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v6

    .line 103
    .local v3, right:F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    .line 105
    new-instance v5, Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;

    const/high16 v6, 0x40a0

    iget v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;

    .line 107
    iget-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;

    .line 108
    iget-object v6, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 109
    iget-object v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 110
    iget-object v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 111
    iget-object v9, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 107
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;->setBounds(IIII)V

    .line 114
    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    .line 59
    .local v0, rect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 63
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;

    invoke-virtual {v1, p1}, Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 70
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 76
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 78
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->setMeasuredDimension(II)V

    .line 79
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    .line 86
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 87
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 88
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 89
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 91
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->setUpColorRect()V

    .line 93
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 138
    iput p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mBorderColor:I

    .line 139
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->invalidate()V

    .line 140
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 121
    iput p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->mColor:I

    .line 122
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPanelView;->invalidate()V

    .line 123
    return-void
.end method
