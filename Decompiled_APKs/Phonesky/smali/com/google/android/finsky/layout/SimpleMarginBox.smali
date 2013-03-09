.class public Lcom/google/android/finsky/layout/SimpleMarginBox;
.super Lcom/google/android/finsky/layout/MarginBox;
.source "SimpleMarginBox.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/MarginBox;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/MarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/MarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 52
    sub-int v5, p4, p2

    .line 53
    .local v5, width:I
    sub-int v2, p5, p3

    .line 54
    .local v2, height:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SimpleMarginBox;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 55
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/SimpleMarginBox;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 57
    .local v4, measuredWidth:I
    sub-int v6, v5, v4

    div-int/lit8 v1, v6, 0x2

    .line 58
    .local v1, childLeft:I
    const/4 v6, 0x0

    add-int v7, v1, v4

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/view/View;->layout(IIII)V

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childLeft:I
    .end local v4           #measuredWidth:I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x0

    .line 27
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 29
    .local v7, width:I
    iget v8, p0, Lcom/google/android/finsky/layout/SimpleMarginBox;->mMaxContentWidth:I

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 30
    .local v3, childWidth:I
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 31
    .local v4, childWidthSpec:I
    const/4 v5, 0x0

    .line 32
    .local v5, height:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SimpleMarginBox;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 33
    invoke-virtual {p0, v6}, Lcom/google/android/finsky/layout/SimpleMarginBox;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    .local v1, childHeightParam:I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_0

    .line 36
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 37
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, v4, v8}, Landroid/view/View;->measure(II)V

    .line 32
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 42
    .local v2, childHeightSpec:I
    invoke-virtual {v0, v4, v2}, Landroid/view/View;->measure(II)V

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 47
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightParam:I
    .end local v2           #childHeightSpec:I
    :cond_1
    invoke-virtual {p0, v7, v5}, Lcom/google/android/finsky/layout/SimpleMarginBox;->setMeasuredDimension(II)V

    .line 48
    return-void
.end method
