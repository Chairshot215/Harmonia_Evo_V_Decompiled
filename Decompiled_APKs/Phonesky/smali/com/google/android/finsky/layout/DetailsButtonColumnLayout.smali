.class public Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;
.super Landroid/widget/LinearLayout;
.source "DetailsButtonColumnLayout.java"


# instance fields
.field private mMinimumRowCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget-object v1, Lcom/android/vending/R$styleable;->DetailsButtonColumnLayout:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->mMinimumRowCount:I

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 52
    const/4 v9, 0x0

    .line 53
    .local v9, maxButtonChildWidth:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->getChildCount()I

    move-result v4

    .line 54
    .local v4, childCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 55
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 56
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1

    .line 54
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 59
    :cond_1
    instance-of v11, v3, Landroid/widget/Button;

    if-eqz v11, :cond_0

    .line 60
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/View;->measure(II)V

    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1

    .line 66
    .end local v3           #child:Landroid/view/View;
    :cond_2
    const/high16 v11, 0x4000

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 67
    .local v2, buttonWidthSpec:I
    const/4 v7, 0x0

    .line 68
    .local v7, height:I
    const/4 v10, 0x0

    .line 69
    .local v10, notGoneButtonChildCount:I
    const/4 v1, 0x0

    .line 70
    .local v1, buttonHeight:I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_6

    .line 71
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 72
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_4

    .line 70
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 75
    :cond_4
    instance-of v11, v3, Landroid/widget/Button;

    if-eqz v11, :cond_5

    .line 76
    const/4 v11, 0x0

    invoke-virtual {v3, v2, v11}, Landroid/view/View;->measure(II)V

    .line 80
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 82
    .local v5, childLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v6, v11, v12

    .line 84
    .local v6, childMeasuredHeight:I
    add-int/2addr v7, v6

    .line 85
    instance-of v11, v3, Landroid/widget/Button;

    if-eqz v11, :cond_3

    .line 86
    add-int/lit8 v10, v10, 0x1

    .line 87
    add-int/2addr v1, v6

    goto :goto_3

    .line 78
    .end local v5           #childLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #childMeasuredHeight:I
    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 96
    .end local v3           #child:Landroid/view/View;
    :cond_6
    iget v11, p0, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->mMinimumRowCount:I

    if-lez v11, :cond_7

    if-lez v10, :cond_7

    iget v11, p0, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->mMinimumRowCount:I

    if-ge v10, v11, :cond_7

    .line 98
    div-int v0, v1, v10

    .line 99
    .local v0, averageButtonChildHeight:I
    iget v11, p0, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->mMinimumRowCount:I

    mul-int/2addr v11, v0

    sub-int v12, v7, v1

    add-int v7, v11, v12

    .line 102
    .end local v0           #averageButtonChildHeight:I
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v7, v11

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0, v11, v7}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->setMeasuredDimension(II)V

    .line 104
    return-void
.end method

.method public setMinimumRowCount(I)V
    .locals 1
    .parameter "minimumRowCount"

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->mMinimumRowCount:I

    if-eq v0, p1, :cond_0

    .line 38
    iput p1, p0, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->mMinimumRowCount:I

    .line 39
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->requestLayout()V

    .line 41
    :cond_0
    return-void
.end method
