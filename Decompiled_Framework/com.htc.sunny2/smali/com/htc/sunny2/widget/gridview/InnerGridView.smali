.class public Lcom/htc/sunny2/widget/gridview/InnerGridView;
.super Lcom/htc/sunny2/widget/gridview/GridView;
.source "InnerGridView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZFFFII)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/widget/gridview/GridView;->onLayout(ZFFFII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/InnerGridView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/htc/sunny2/widget/gridview/InnerGridView;->getDefaultSize(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/InnerGridView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/htc/sunny2/widget/gridview/InnerGridView;->getDefaultSize(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/InnerGridView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    iget v1, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/InnerGridView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    iget v2, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/InnerGridView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/InnerGridView;->layout(FFFII)V

    move v8, v5

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v7

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v1, v0, v1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int/2addr v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int v6, v1, v0

    mul-int v0, v7, v6

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/lit8 v2, v6, -0x1

    mul-int/2addr v1, v2

    add-int v8, v0, v1

    :cond_0
    invoke-virtual {p0, v4, v8}, Lcom/htc/sunny2/widget/gridview/InnerGridView;->setMeasuredDimension(II)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
