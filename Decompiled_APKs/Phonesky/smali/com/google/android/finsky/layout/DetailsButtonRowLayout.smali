.class public Lcom/google/android/finsky/layout/DetailsButtonRowLayout;
.super Landroid/widget/LinearLayout;
.source "DetailsButtonRowLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method private getSingleVisibleChild()Landroid/view/View;
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonRowLayout;->getChildCount()I

    move-result v1

    .line 40
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 41
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/DetailsButtonRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 46
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return-object v0

    .line 40
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getVisibleChildrenCount()I
    .locals 4

    .prologue
    .line 28
    const/4 v2, 0x0

    .line 29
    .local v2, result:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonRowLayout;->getChildCount()I

    move-result v0

    .line 30
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 31
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DetailsButtonRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_1
    return v2
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 69
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 72
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsButtonRowLayout;->getVisibleChildrenCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsButtonRowLayout;->getSingleVisibleChild()Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, visibleChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonRowLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonRowLayout;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 79
    .local v0, right:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 54
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsButtonRowLayout;->getVisibleChildrenCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsButtonRowLayout;->getSingleVisibleChild()Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, visibleChild:Landroid/view/View;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonRowLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonRowLayout;->getPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 62
    .local v2, widthSpecSize:I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    .local v0, heightSpecSize:I
    div-int/lit8 v3, v2, 0x2

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method
