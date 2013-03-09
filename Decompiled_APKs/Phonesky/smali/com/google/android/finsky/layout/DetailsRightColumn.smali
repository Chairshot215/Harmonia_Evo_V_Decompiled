.class public Lcom/google/android/finsky/layout/DetailsRightColumn;
.super Landroid/widget/LinearLayout;
.source "DetailsRightColumn.java"


# instance fields
.field private mBottomBannerHeight:I

.field private mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DetailsRightColumn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private isPartOfBottomBanner(Landroid/view/View;)Z
    .locals 2
    .parameter "child"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 41
    .local v0, childId:I
    const v1, 0x7f0800e5

    if-eq v0, v1, :cond_0

    const v1, 0x7f0800e6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toApplyRightPadding(Landroid/view/View;)Z
    .locals 2
    .parameter "child"

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 46
    .local v0, childId:I
    const v1, 0x7f0800e6

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 53
    const/4 v5, 0x0

    .line 54
    .local v5, totalHeight:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsRightColumn;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 55
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/DetailsRightColumn;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 54
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 60
    .local v1, childWidth:I
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/DetailsRightColumn;->isPartOfBottomBanner(Landroid/view/View;)Z

    move-result v4

    .line 61
    .local v4, isPartOfBottomBanner:Z
    if-nez v4, :cond_2

    .line 62
    iget v6, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mRightMargin:I

    sub-int/2addr v1, v6

    .line 66
    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/DetailsRightColumn;->toApplyRightPadding(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mRightMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 70
    :cond_1
    if-eqz v4, :cond_3

    iget v6, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mBottomBannerHeight:I

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 73
    .local v2, heightSpec:I
    :goto_3
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v6, v2}, Landroid/view/View;->measure(II)V

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    .line 64
    .end local v2           #heightSpec:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mBottomBannerHeight:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 70
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 77
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidth:I
    .end local v4           #isPartOfBottomBanner:Z
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Lcom/google/android/finsky/layout/DetailsRightColumn;->setMeasuredDimension(II)V

    .line 78
    return-void
.end method

.method public setBottomBannerHeight(I)V
    .locals 0
    .parameter "bottomBannerHeight"

    .prologue
    .line 36
    iput p1, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mBottomBannerHeight:I

    .line 37
    return-void
.end method

.method public setRightMargin(I)V
    .locals 0
    .parameter "rightMargin"

    .prologue
    .line 32
    iput p1, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mRightMargin:I

    .line 33
    return-void
.end method
