.class public Lcom/htc/view/table/HTableColleague;
.super Lcom/htc/view/table/TableColleague;
.source "HTableColleague.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HTableColleague"

.field private static final localLOGV:Z


# direct methods
.method public constructor <init>(Lcom/htc/view/table/TableView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/view/table/TableColleague;-><init>(Lcom/htc/view/table/TableView;)V

    .line 20
    const/16 v0, 0x30

    iput v0, p0, Lcom/htc/view/table/HTableColleague;->mGravity:I

    .line 21
    iget-object v0, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v0, v0, Lcom/htc/view/table/TableView;->mRequestedHorizontalSpacing:I

    iput v0, p0, Lcom/htc/view/table/HTableColleague;->mHorizontalSpacing:I

    .line 22
    return-void
.end method


# virtual methods
.method public detachOffScreenChildren(Z)V
    .locals 10
    .parameter "toLeft"

    .prologue
    .line 236
    iget-object v8, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v6

    .line 237
    .local v6, numChildren:I
    iget-object v8, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, v8, Lcom/htc/view/table/TableView;->mFirstPosition:I

    .line 238
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 239
    .local v7, start:I
    const/4 v1, 0x0

    .line 241
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 242
    iget-object v8, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8}, Lcom/htc/view/table/TableView;->getPaddingLeft()I

    move-result v3

    .line 243
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 244
    iget-object v8, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8, v5}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 266
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    :cond_0
    iget-object v8, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8, v7, v1}, Lcom/htc/view/table/TableView;->detachViewsFromParent(II)V

    .line 268
    if-eqz p1, :cond_1

    .line 269
    iget-object v8, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v8, Lcom/htc/view/table/TableView;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, v8, Lcom/htc/view/table/TableView;->mFirstPosition:I

    .line 271
    :cond_1
    return-void

    .line 248
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 249
    iget-object v8, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v8, v8, Lcom/htc/view/table/TableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v8, v0}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 243
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 253
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    iget-object v8, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8}, Lcom/htc/view/table/TableView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9}, Lcom/htc/view/table/TableView;->getPaddingRight()I

    move-result v9

    sub-int v4, v8, v9

    .line 254
    .local v4, galleryRight:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 255
    iget-object v8, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8, v5}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 256
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 259
    move v7, v5

    .line 260
    add-int/lit8 v1, v1, 0x1

    .line 261
    iget-object v8, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v8, v8, Lcom/htc/view/table/TableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v8, v0}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 254
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method public findAndSetSelecionInt(IIII)Z
    .locals 5
    .parameter "direction"
    .parameter "startOfRowPos"
    .parameter "endOfRowPos"
    .parameter "selectedPosition"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 388
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 426
    :cond_1
    :goto_0
    return v0

    .line 390
    :sswitch_0
    if-le p4, p2, :cond_0

    .line 391
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v1, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 392
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v2, p4, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 393
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto :goto_0

    .line 399
    :sswitch_1
    if-ge p4, p3, :cond_0

    .line 400
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v1, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 401
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 402
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto :goto_0

    .line 408
    :sswitch_2
    if-lez p2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v2, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 410
    iget-object v2, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v3, p0, Lcom/htc/view/table/HTableColleague;->mNumColumnRows:I

    sub-int v3, p4, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 411
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto :goto_0

    .line 417
    :sswitch_3
    iget-object v2, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v2}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 418
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v1, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 419
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, p0, Lcom/htc/view/table/HTableColleague;->mNumColumnRows:I

    add-int/2addr v2, p4

    iget-object v3, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 420
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto/16 :goto_0

    .line 388
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public fling(Lcom/htc/view/table/AbstractTableView$FlingRunnable;FF)V
    .locals 2
    .parameter "runnable"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 201
    neg-float v0, p2

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->startUsingVelocity(II)V

    .line 203
    return-void
.end method

.method public getCenterOfTable()I
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/view/table/TableView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/view/table/TableView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/view/table/TableView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDefaultChildLayoutParams()Lcom/htc/view/table/AbstractTableView$LayoutParams;
    .locals 4

    .prologue
    .line 106
    new-instance v0, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/view/table/AbstractTableView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public getFadingEdgeLength()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->getHorizontalFadingEdgeLength()I

    move-result v0

    return v0
.end method

.method public getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 275
    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/TableView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 276
    .local v3, extremeItemPosition:I
    :goto_0
    iget-object v6, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v7, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v7, v7, Lcom/htc/view/table/TableView;->mFirstPosition:I

    sub-int v7, v3, v7

    invoke-virtual {v6, v7}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 278
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 324
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 275
    goto :goto_0

    .line 284
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/view/table/HTableColleague;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 285
    .local v2, extremeChildCenter:I
    invoke-virtual {p0}, Lcom/htc/view/table/HTableColleague;->getCenterOfTable()I

    move-result v4

    .line 287
    .local v4, galleryCenter:I
    iget-object v6, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v6, v6, Lcom/htc/view/table/TableView;->isScrollOverBoundary:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/htc/view/table/HTableColleague;->mCloseBouncing:Z

    if-nez v6, :cond_6

    .line 289
    if-eqz p1, :cond_4

    .line 290
    iget-object v6, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/TableView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    sub-int v0, v6, v2

    .line 291
    .local v0, centerDifference:I
    iget-object v6, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/TableView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    if-le v2, v6, :cond_0

    .line 295
    if-gt v2, v4, :cond_3

    .line 296
    div-int/lit8 p2, p2, 0x2

    .line 298
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 300
    .end local v0           #centerDifference:I
    :cond_4
    iget-object v6, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/TableView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    sub-int v0, v6, v2

    .line 301
    .restart local v0       #centerDifference:I
    iget-object v6, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/TableView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    if-ge v2, v6, :cond_0

    .line 305
    if-lt v2, v4, :cond_5

    .line 306
    div-int/lit8 p2, p2, 0x2

    .line 308
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 313
    .end local v0           #centerDifference:I
    :cond_6
    if-eqz p1, :cond_8

    .line 314
    if-le v2, v4, :cond_0

    .line 322
    :cond_7
    sub-int v0, v4, v2

    .line 324
    .restart local v0       #centerDifference:I
    if-eqz p1, :cond_9

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 318
    .end local v0           #centerDifference:I
    :cond_8
    if-lt v2, v4, :cond_7

    goto :goto_1

    .line 324
    .restart local v0       #centerDifference:I
    :cond_9
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public getOrnBottom(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 41
    iget v0, p1, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getOrnBottom(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    return v0
.end method

.method public getOrnGravity()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/htc/view/table/HTableColleague;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    sparse-switch v0, :sswitch_data_0

    .line 163
    iget v0, p0, Lcom/htc/view/table/HTableColleague;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    :goto_0
    return v0

    .line 159
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 161
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public getOrnHeight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOrnHeight(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 89
    iget v0, p1, Lcom/htc/view/table/AbstractTableView$LayoutParams;->width:I

    return v0
.end method

.method public getOrnLeft(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 26
    iget v0, p1, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getOrnLeft(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getOrnLeftRightSpacing()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/htc/view/table/HTableColleague;->mVerticalSpacing:I

    return v0
.end method

.method public getOrnMeasureSpec(II)Lcom/htc/view/table/TableColleague$OrnMeasureSpec;
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 94
    new-instance v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;

    invoke-direct {v0}, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;-><init>()V

    .line 95
    .local v0, spec:Lcom/htc/view/table/TableColleague$OrnMeasureSpec;
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMode:I

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMode:I

    .line 97
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    .line 99
    iput p2, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMeasureSpec:I

    .line 100
    iput p1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMeasureSpec:I

    .line 101
    return-object v0
.end method

.method public getOrnMeasuredHeight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getOrnMeasuredWidth(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getOrnRequestedWidthSpacing()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v0, v0, Lcom/htc/view/table/TableView;->mRequestedVerticalSpacing:I

    return v0
.end method

.method public getOrnRight(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 31
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getOrnRight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    return v0
.end method

.method public getOrnTop(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 36
    iget v0, p1, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getOrnTop(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOrnTopBottomSpacing()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/view/table/HTableColleague;->mHorizontalSpacing:I

    return v0
.end method

.method public getOrnWidth(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getOrnWidth(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 84
    iget v0, p1, Lcom/htc/view/table/AbstractTableView$LayoutParams;->height:I

    return v0
.end method

.method public getScrollbarWidth()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->getHorizontalFadingEdgeLength()I

    move-result v0

    return v0
.end method

.method public layoutView(Landroid/view/View;IIII)V
    .locals 0
    .parameter "view"
    .parameter "ornLeft"
    .parameter "ornTop"
    .parameter "ornRight"
    .parameter "ornBottom"

    .prologue
    .line 169
    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    .line 170
    return-void
.end method

.method public measureView(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "ornWidthMeasureSpec"
    .parameter "ornHeightMeasureSpec"

    .prologue
    .line 112
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    .line 113
    return-void
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 175
    return-void
.end method

.method public offsetOrnChildrenTopAndBottom(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 191
    iget-object v3, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 193
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 194
    iget-object v3, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, v1}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 195
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 180
    return-void
.end method

.method public scrollAmount(Lcom/htc/view/table/AbstractTableView$FlingRunnable;I)V
    .locals 1
    .parameter "runnable"
    .parameter "scrollAmount"

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->startUsingDistance(II)V

    .line 344
    return-void
.end method

.method public scrollIntoSlots(Lcom/htc/view/table/AbstractTableView$FlingRunnable;)V
    .locals 9
    .parameter "runnable"

    .prologue
    const/4 v8, 0x0

    .line 350
    iget-object v5, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->getAllVisibleViews()[Landroid/view/View;

    move-result-object v2

    .line 351
    .local v2, children:[Landroid/view/View;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-gtz v5, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v5, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v5, v5, Lcom/htc/view/table/TableView;->scrollControl:Lcom/htc/view/ScrollControl;

    if-nez v5, :cond_2

    .line 353
    const-string v5, "TableScroll"

    const-string v6, "scrollIntoSlot(): tableView.scrollControl == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    :cond_2
    iget-object v5, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v5, v5, Lcom/htc/view/table/TableView;->scrollControl:Lcom/htc/view/ScrollControl;

    iget-object v6, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/TableView;->mFirstPosition:I

    invoke-interface {v5, v2, v6}, Lcom/htc/view/ScrollControl;->getCenterView([Landroid/view/View;I)Lcom/htc/view/ScrollControl$CenterView;

    move-result-object v1

    .line 357
    .local v1, centerView:Lcom/htc/view/ScrollControl$CenterView;
    if-nez v1, :cond_3

    .line 358
    iget-object v5, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->onFinishedMovement()V

    .line 359
    iget-object v5, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5, v8}, Lcom/htc/view/table/TableView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 362
    :cond_3
    iget-object v5, v1, Lcom/htc/view/ScrollControl$CenterView;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, Lcom/htc/view/ScrollControl$CenterView;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v1, Lcom/htc/view/ScrollControl$CenterView;->percentage:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 363
    .local v0, centerChildCenter:I
    iget-object v5, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->getWidth()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 364
    .local v4, targetCenter:I
    sub-int v3, v4, v0

    .line 365
    .local v3, scrollAmount:I
    if-eqz v3, :cond_4

    .line 366
    invoke-virtual {p0, p1, v3}, Lcom/htc/view/table/HTableColleague;->scrollAmount(Lcom/htc/view/table/AbstractTableView$FlingRunnable;I)V

    goto :goto_0

    .line 368
    :cond_4
    iget-object v5, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->onFinishedMovement()V

    .line 369
    iget-object v5, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5, v8}, Lcom/htc/view/table/TableView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method public scrollWithConstrain(IIZ)V
    .locals 5
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "isFling"

    .prologue
    const/4 v2, 0x0

    .line 375
    if-gez p1, :cond_1

    const/4 v1, 0x1

    .line 377
    .local v1, toLeft:Z
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/htc/view/table/HTableColleague;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 378
    .local v0, newDeltaX:I
    if-eq v0, p1, :cond_0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 380
    const-string v3, "TableScroll"

    const-string v4, "newDeltaX != deltaX && newDeltaX == 0, trackMotionScroll call endFling(false)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v3, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v3, v3, Lcom/htc/view/table/TableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {v3, v2}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->endFling(Z)V

    .line 383
    :cond_0
    iget-object v3, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, v0, v2}, Lcom/htc/view/table/TableView;->trackMotionScroll(II)V

    .line 384
    return-void

    .end local v0           #newDeltaX:I
    .end local v1           #toLeft:Z
    :cond_1
    move v1, v2

    .line 375
    goto :goto_0
.end method

.method public setCloseBouncing(Z)V
    .locals 0
    .parameter "close"

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/htc/view/table/HTableColleague;->mCloseBouncing:Z

    .line 432
    return-void
.end method

.method public setOrnLeftRightSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 127
    iput p1, p0, Lcom/htc/view/table/HTableColleague;->mVerticalSpacing:I

    .line 128
    return-void
.end method

.method public setOrnTopBottomSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 137
    iput p1, p0, Lcom/htc/view/table/HTableColleague;->mHorizontalSpacing:I

    .line 138
    return-void
.end method

.method public setTableViewMeasuredDimension(II)V
    .locals 1
    .parameter "ornMeasuredWidth"
    .parameter "ornMeasuredHeight"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0, p2, p1}, Lcom/htc/view/table/TableView;->setMeasuredDimensionEx(II)V

    .line 148
    return-void
.end method

.method public trackMotionScrollOrn(II)V
    .locals 4
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    if-gez p1, :cond_0

    move v0, v1

    .line 220
    .local v0, toLeft:Z
    :goto_0
    iget-object v3, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, p1}, Lcom/htc/view/table/TableView;->offsetChildrenLeftAndRight(I)V

    .line 221
    iget-object v3, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, v1}, Lcom/htc/view/table/TableView;->blockLayoutRequests(Z)V

    .line 222
    invoke-virtual {p0, v0}, Lcom/htc/view/table/HTableColleague;->detachOffScreenChildren(Z)V

    .line 224
    invoke-virtual {p0, v0}, Lcom/htc/view/table/HTableColleague;->fillGap(Z)V

    .line 225
    iget-object v1, p0, Lcom/htc/view/table/HTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->blockLayoutRequests(Z)V

    .line 226
    return-void

    .end local v0           #toLeft:Z
    :cond_0
    move v0, v2

    .line 208
    goto :goto_0
.end method
