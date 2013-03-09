.class public Lcom/google/android/finsky/layout/BucketRow;
.super Landroid/widget/LinearLayout;
.source "BucketRow.java"


# instance fields
.field private mIsCompact:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, x:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BucketRow;->getHeight()I

    move-result v1

    .line 66
    .local v1, height:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BucketRow;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 67
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/BucketRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, child:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v12, 0x4000

    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 36
    .local v8, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 37
    .local v3, height:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BucketRow;->getChildCount()I

    move-result v1

    .line 38
    .local v1, childCount:I
    div-int v2, v8, v1

    .line 40
    .local v2, childWidth:I
    const/4 v6, 0x0

    .line 41
    .local v6, maxChildHeight:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 42
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/BucketRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, child:Landroid/view/View;
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/View;->measure(II)V

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 41
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 48
    .end local v0           #child:Landroid/view/View;
    :cond_0
    iget-boolean v10, p0, Lcom/google/android/finsky/layout/BucketRow;->mIsCompact:Z

    if-eqz v10, :cond_1

    move v7, v6

    .line 49
    .local v7, rowHeight:I
    :goto_1
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 50
    .local v4, heightSpec:I
    move v9, v8

    .line 51
    .local v9, widthLeft:I
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_2

    .line 52
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/BucketRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .restart local v0       #child:Landroid/view/View;
    sub-int v10, v1, v5

    div-int v10, v9, v10

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v0, v10, v4}, Landroid/view/View;->measure(II)V

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 51
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 48
    .end local v0           #child:Landroid/view/View;
    .end local v4           #heightSpec:I
    .end local v7           #rowHeight:I
    .end local v9           #widthLeft:I
    :cond_1
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    .line 59
    .restart local v4       #heightSpec:I
    .restart local v7       #rowHeight:I
    .restart local v9       #widthLeft:I
    :cond_2
    invoke-virtual {p0, v8, v7}, Lcom/google/android/finsky/layout/BucketRow;->setMeasuredDimension(II)V

    .line 60
    return-void
.end method

.method public setCompact(Z)V
    .locals 0
    .parameter "isCompact"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/BucketRow;->mIsCompact:Z

    .line 31
    return-void
.end method
