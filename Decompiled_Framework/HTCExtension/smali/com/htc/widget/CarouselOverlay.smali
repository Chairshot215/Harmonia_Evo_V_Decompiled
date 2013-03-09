.class Lcom/htc/widget/CarouselOverlay;
.super Landroid/view/ViewGroup;
.source "CarouselOverlay.java"


# instance fields
.field mGroupOffset:I

.field mIcon:Landroid/widget/ImageView;

.field mIconPos:[I

.field mText:Landroid/widget/TextView;

.field mTextOffset:I

.field mTextPos:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    invoke-virtual {p0}, Lcom/htc/widget/CarouselOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselOverlay;->mTextOffset:I

    invoke-virtual {p0}, Lcom/htc/widget/CarouselOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselOverlay;->mGroupOffset:I

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    const v0, 0x20200c4

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    const v0, 0x20200c3

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/CarouselOverlay;->mIcon:Landroid/widget/ImageView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    sub-int v2, p4, p2

    sub-int v0, p5, p3

    div-int/lit8 v3, v2, 0x2

    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/widget/CarouselOverlay;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v3, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v3, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/CarouselOverlay;->mTextOffset:I

    add-int v1, v4, v5

    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v5, 0x1

    sub-int v6, v0, v1

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/htc/widget/CarouselOverlay;->mGroupOffset:I

    add-int/2addr v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    iget v7, p0, Lcom/htc/widget/CarouselOverlay;->mTextOffset:I

    add-int/2addr v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/htc/widget/CarouselOverlay;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/CarouselOverlay;->mIconPos:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/htc/widget/CarouselOverlay;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v4, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/CarouselOverlay;->mTextPos:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/CarouselOverlay;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p1, p2}, Lcom/htc/widget/CarouselOverlay;->measureChild(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/htc/widget/CarouselOverlay;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/CarouselOverlay;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0, v3, v0}, Lcom/htc/widget/CarouselOverlay;->setMeasuredDimension(II)V

    return-void
.end method
