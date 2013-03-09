.class public Lcom/google/android/finsky/layout/UnevenGridSquare;
.super Landroid/widget/RelativeLayout;
.source "UnevenGridSquare.java"


# instance fields
.field private mReflectionSeparatorPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/UnevenGridSquare;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/UnevenGridSquare;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/UnevenGridSquare;->setWillNotDraw(Z)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/UnevenGridSquare;->mReflectionSeparatorPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGridSquare;->mReflectionSeparatorPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGridSquare;->mReflectionSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 121
    const v0, 0x7f080222

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/UnevenGridSquare;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 122
    .local v9, promoImage:Landroid/widget/ImageView;
    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 123
    .local v6, promo:Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_0

    .line 140
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {v9}, Landroid/widget/ImageView;->getBottom()I

    move-result v7

    .line 129
    .local v7, promoBottom:I
    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    .line 131
    .local v8, promoHeight:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 132
    mul-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 133
    int-to-float v0, v8

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v0, v2

    .line 134
    .local v10, scale:F
    neg-float v0, v10

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 135
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 138
    int-to-float v2, v7

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGridSquare;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGridSquare;->mReflectionSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 84
    const v8, 0x7f080222

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/UnevenGridSquare;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 85
    .local v3, promoImage:Landroid/widget/ImageView;
    const v8, 0x7f080223

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/UnevenGridSquare;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 86
    .local v6, reflectionGradient:Landroid/view/View;
    const v8, 0x7f08015d

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/UnevenGridSquare;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RatingBar;

    .line 87
    .local v4, ratingBar:Landroid/widget/RatingBar;
    const v8, 0x7f080020

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/UnevenGridSquare;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    .local v1, price:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGridSquare;->getWidth()I

    move-result v7

    .line 90
    .local v7, w:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGridSquare;->getHeight()I

    move-result v0

    .line 93
    .local v0, h:I
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v3, v8, v9, v7, v10}, Landroid/widget/ImageView;->layout(IIII)V

    .line 96
    const/4 v8, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v0, v9

    invoke-virtual {v6, v8, v9, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 100
    invoke-virtual {v4}, Landroid/widget/RatingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    .local v5, ratingBarLp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v0, v9

    iget v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    iget v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int v11, v0, v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/RatingBar;->layout(IIII)V

    .line 109
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 111
    .local v2, priceLp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v7, v8

    iget v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v0, v9

    iget v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    iget v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int v10, v7, v10

    iget v11, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int v11, v0, v11

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 115
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 48
    const v10, 0x7f080222

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/layout/UnevenGridSquare;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 49
    .local v4, promoImage:Landroid/widget/ImageView;
    const v10, 0x7f080223

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/layout/UnevenGridSquare;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 50
    .local v6, reflectionGradient:Landroid/view/View;
    const v10, 0x7f08015d

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/layout/UnevenGridSquare;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RatingBar;

    .line 51
    .local v5, ratingBar:Landroid/widget/RatingBar;
    const v10, 0x7f080020

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/layout/UnevenGridSquare;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 53
    .local v2, price:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 54
    .local v3, promo:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_0

    .line 56
    const/4 v10, 0x0

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 57
    .local v9, zeroSpec:I
    invoke-virtual {v4, p1, v9}, Landroid/widget/ImageView;->measure(II)V

    .line 58
    invoke-virtual {v6, p1, v9}, Landroid/view/View;->measure(II)V

    .line 75
    .end local v9           #zeroSpec:I
    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/widget/RatingBar;->measure(II)V

    .line 76
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 78
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/google/android/finsky/layout/UnevenGridSquare;->setMeasuredDimension(II)V

    .line 80
    return-void

    .line 63
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 64
    .local v0, availableWidth:I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 65
    .local v1, intrinsicWidth:I
    int-to-float v10, v1

    int-to-float v11, v0

    div-float v8, v10, v11

    .line 66
    .local v8, scaling:F
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v8

    float-to-int v7, v10

    .line 67
    .local v7, scaledHeight:I
    const/high16 v10, 0x4000

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v4, p1, v10}, Landroid/widget/ImageView;->measure(II)V

    .line 69
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int/2addr v10, v7

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v6, p1, v10}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method
