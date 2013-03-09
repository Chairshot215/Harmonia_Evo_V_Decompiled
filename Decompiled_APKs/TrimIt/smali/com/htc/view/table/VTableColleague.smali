.class public Lcom/htc/view/table/VTableColleague;
.super Lcom/htc/view/table/TableColleague;
.source "VTableColleague.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTableColleague"

.field private static final localLOGV:Z


# direct methods
.method public constructor <init>(Lcom/htc/view/table/TableView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/view/table/TableColleague;-><init>(Lcom/htc/view/table/TableView;)V

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/view/table/VTableColleague;->mGravity:I

    .line 21
    iget-object v0, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v0, v0, Lcom/htc/view/table/TableView;->mRequestedVerticalSpacing:I

    iput v0, p0, Lcom/htc/view/table/VTableColleague;->mVerticalSpacing:I

    .line 22
    return-void
.end method


# virtual methods
.method public detachOffScreenChildren(Z)V
    .locals 10
    .parameter "toTop"

    .prologue
    .line 230
    iget-object v8, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v6

    .line 231
    .local v6, numChildren:I
    iget-object v8, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, v8, Lcom/htc/view/table/TableView;->mFirstPosition:I

    .line 232
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 233
    .local v7, start:I
    const/4 v1, 0x0

    .line 235
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 236
    iget-object v8, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8}, Lcom/htc/view/table/TableView;->getPaddingTop()I

    move-result v4

    .line 237
    .local v4, galleryTop:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 238
    iget-object v8, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8, v5}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    if-lt v8, v4, :cond_2

    .line 260
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryTop:I
    :cond_0
    iget-object v8, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8, v7, v1}, Lcom/htc/view/table/TableView;->detachViewsFromParent(II)V

    .line 262
    if-eqz p1, :cond_1

    .line 263
    iget-object v8, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v8, Lcom/htc/view/table/TableView;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, v8, Lcom/htc/view/table/TableView;->mFirstPosition:I

    .line 266
    :cond_1
    return-void

    .line 242
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #galleryTop:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 243
    iget-object v8, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v8, v8, Lcom/htc/view/table/TableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v8, v0}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 237
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 247
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryTop:I
    .end local v5           #i:I
    :cond_3
    iget-object v8, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9}, Lcom/htc/view/table/TableView;->getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 248
    .local v3, galleryBottom:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 249
    iget-object v8, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v8, v5}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 250
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    if-le v8, v3, :cond_0

    .line 253
    move v7, v5

    .line 254
    add-int/lit8 v1, v1, 0x1

    .line 255
    iget-object v8, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v8, v8, Lcom/htc/view/table/TableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v8, v0}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 248
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

    .line 510
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 548
    :cond_1
    :goto_0
    return v0

    .line 512
    :sswitch_0
    if-lez p2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v2, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 514
    iget-object v2, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v3, p0, Lcom/htc/view/table/VTableColleague;->mNumColumnRows:I

    sub-int v3, p4, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 515
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto :goto_0

    .line 521
    :sswitch_1
    iget-object v2, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v2}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 522
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v1, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 523
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, p0, Lcom/htc/view/table/VTableColleague;->mNumColumnRows:I

    add-int/2addr v2, p4

    iget-object v3, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 524
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto :goto_0

    .line 530
    :sswitch_2
    if-le p4, p2, :cond_0

    .line 531
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v1, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 532
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v2, p4, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 533
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto :goto_0

    .line 539
    :sswitch_3
    if-ge p4, p3, :cond_0

    .line 540
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v3, v1, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 541
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 542
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/view/table/TableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget-object v2, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-interface {v1, v2, v4}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    goto/16 :goto_0

    .line 510
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
    .line 195
    const/4 v0, 0x0

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->startUsingVelocity(II)V

    .line 196
    return-void
.end method

.method public getCenterOfTable()I
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/view/table/TableView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/view/table/TableView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/view/table/TableView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

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

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/view/table/AbstractTableView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public getFadingEdgeLength()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->getVerticalFadingEdgeLength()I

    move-result v0

    return v0
.end method

.method public getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToTop"
    .parameter "deltaY"

    .prologue
    const/4 v5, 0x0

    .line 270
    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/TableView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 271
    .local v3, extremeItemPosition:I
    :goto_0
    iget-object v6, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v7, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v7, v7, Lcom/htc/view/table/TableView;->mFirstPosition:I

    sub-int v7, v3, v7

    invoke-virtual {v6, v7}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 273
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 318
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 270
    goto :goto_0

    .line 279
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/view/table/VTableColleague;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 280
    .local v2, extremeChildCenter:I
    invoke-virtual {p0}, Lcom/htc/view/table/VTableColleague;->getCenterOfTable()I

    move-result v4

    .line 283
    .local v4, galleryCenter:I
    iget-object v6, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v6, v6, Lcom/htc/view/table/TableView;->isScrollOverBoundary:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/htc/view/table/VTableColleague;->mCloseBouncing:Z

    if-nez v6, :cond_6

    .line 284
    if-eqz p1, :cond_4

    .line 285
    iget-object v6, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/TableView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    sub-int v0, v6, v2

    .line 286
    .local v0, centerDifference:I
    iget-object v6, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/TableView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    if-le v2, v6, :cond_0

    .line 290
    if-gt v2, v4, :cond_3

    .line 291
    div-int/lit8 p2, p2, 0x2

    .line 293
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 295
    .end local v0           #centerDifference:I
    :cond_4
    iget-object v6, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/TableView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    sub-int v0, v6, v2

    .line 296
    .restart local v0       #centerDifference:I
    iget-object v6, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/TableView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    if-ge v2, v6, :cond_0

    .line 300
    if-lt v2, v4, :cond_5

    .line 301
    div-int/lit8 p2, p2, 0x2

    .line 303
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 307
    .end local v0           #centerDifference:I
    :cond_6
    if-eqz p1, :cond_8

    .line 308
    if-le v2, v4, :cond_0

    .line 316
    :cond_7
    sub-int v0, v4, v2

    .line 318
    .restart local v0       #centerDifference:I
    if-eqz p1, :cond_9

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 312
    .end local v0           #centerDifference:I
    :cond_8
    if-lt v2, v4, :cond_7

    goto :goto_1

    .line 318
    .restart local v0       #centerDifference:I
    :cond_9
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public getLimitedMotionScrollAmount2(ZI)I
    .locals 12
    .parameter "motionToTop"
    .parameter "deltaY"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 333
    const/4 v2, 0x0

    .line 334
    .local v2, extremeChild:Landroid/view/View;
    iget-boolean v9, p0, Lcom/htc/view/table/VTableColleague;->mMultiStop:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/htc/view/table/VTableColleague;->mStopExcept:I

    if-ltz v9, :cond_2

    .line 335
    if-eqz p1, :cond_4

    .line 336
    const/4 v6, 0x2

    .line 337
    .local v6, idx:I
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v6}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 339
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v6}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 340
    .local v8, willbeCenter:I
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 342
    .local v0, center:I
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->mStops:[I

    array-length v9, v9

    add-int/lit8 v7, v9, -0x1

    .line 343
    .local v7, stop_index:I
    :goto_0
    const/4 v9, -0x1

    if-le v7, v9, :cond_0

    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->mStops:[I

    aget v9, v9, v7

    if-ge v8, v9, :cond_0

    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->mStops:[I

    aget v9, v9, v7

    if-eq v0, v9, :cond_0

    .line 344
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 346
    :cond_0
    if-ltz v7, :cond_1

    iget v9, p0, Lcom/htc/view/table/VTableColleague;->mStopExcept:I

    rsub-int/lit8 v9, v9, 0x3b

    iget-object v11, p0, Lcom/htc/view/table/VTableColleague;->mStops:[I

    aget v11, v11, v7

    if-ne v9, v11, :cond_3

    .line 347
    :cond_1
    const/4 v2, 0x0

    .line 376
    .end local v0           #center:I
    .end local v6           #idx:I
    .end local v7           #stop_index:I
    .end local v8           #willbeCenter:I
    :cond_2
    :goto_1
    if-nez v2, :cond_8

    move v9, p2

    .line 436
    :goto_2
    return v9

    .line 349
    .restart local v0       #center:I
    .restart local v6       #idx:I
    .restart local v7       #stop_index:I
    .restart local v8       #willbeCenter:I
    :cond_3
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v10}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 350
    .local v4, firstChild:I
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v11, p0, Lcom/htc/view/table/VTableColleague;->mStops:[I

    aget v11, v11, v7

    sub-int/2addr v11, v4

    invoke-virtual {v9, v11}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 355
    .end local v0           #center:I
    .end local v4           #firstChild:I
    .end local v6           #idx:I
    .end local v7           #stop_index:I
    .end local v8           #willbeCenter:I
    :cond_4
    const/4 v6, 0x0

    .line 356
    .restart local v6       #idx:I
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v6}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 358
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v6}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 359
    .restart local v8       #willbeCenter:I
    const/4 v7, 0x0

    .line 360
    .restart local v7       #stop_index:I
    :goto_3
    if-ge v7, v11, :cond_5

    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->mStops:[I

    aget v9, v9, v7

    if-le v8, v9, :cond_5

    .line 361
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 363
    :cond_5
    if-ge v7, v11, :cond_6

    iget v9, p0, Lcom/htc/view/table/VTableColleague;->mStopExcept:I

    rsub-int/lit8 v9, v9, 0x3b

    iget-object v11, p0, Lcom/htc/view/table/VTableColleague;->mStops:[I

    aget v11, v11, v7

    if-ne v9, v11, :cond_7

    .line 364
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 366
    :cond_7
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v10}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 367
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v9, v10}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 368
    .restart local v4       #firstChild:I
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v11, p0, Lcom/htc/view/table/VTableColleague;->mStops:[I

    aget v11, v11, v7

    sub-int/2addr v11, v4

    invoke-virtual {v9, v11}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 382
    .end local v4           #firstChild:I
    .end local v6           #idx:I
    .end local v7           #stop_index:I
    .end local v8           #willbeCenter:I
    :cond_8
    invoke-virtual {p0, v2}, Lcom/htc/view/table/VTableColleague;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    .line 383
    .local v3, extremeChildCenter:I
    invoke-virtual {p0}, Lcom/htc/view/table/VTableColleague;->getCenterOfTable()I

    move-result v5

    .line 386
    .local v5, galleryCenter:I
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v9, v9, Lcom/htc/view/table/TableView;->isScrollOverBoundary:Z

    if-eqz v9, :cond_e

    iget-boolean v9, p0, Lcom/htc/view/table/VTableColleague;->mCloseBouncing:Z

    if-nez v9, :cond_e

    .line 387
    if-eqz p1, :cond_b

    .line 388
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v9, Lcom/htc/view/table/TableView;->mMaxScrollOverhead:I

    sub-int v9, v5, v9

    sub-int v1, v9, v3

    .line 389
    .local v1, centerDifference:I
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v9, Lcom/htc/view/table/TableView;->mMaxScrollOverhead:I

    sub-int v9, v5, v9

    if-gt v3, v9, :cond_9

    move v9, v10

    .line 391
    goto/16 :goto_2

    .line 393
    :cond_9
    if-gt v3, v5, :cond_a

    .line 394
    div-int/lit8 p2, p2, 0x2

    .line 396
    :cond_a
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_2

    .line 398
    .end local v1           #centerDifference:I
    :cond_b
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v9, Lcom/htc/view/table/TableView;->mMaxScrollOverhead:I

    add-int/2addr v9, v5

    sub-int v1, v9, v3

    .line 399
    .restart local v1       #centerDifference:I
    iget-object v9, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v9, Lcom/htc/view/table/TableView;->mMaxScrollOverhead:I

    add-int/2addr v9, v5

    if-lt v3, v9, :cond_c

    move v9, v10

    .line 401
    goto/16 :goto_2

    .line 403
    :cond_c
    if-lt v3, v5, :cond_d

    .line 404
    div-int/lit8 p2, p2, 0x2

    .line 406
    :cond_d
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_2

    .line 412
    .end local v1           #centerDifference:I
    :cond_e
    if-eqz p1, :cond_10

    .line 413
    if-ne v3, v5, :cond_f

    move v9, v10

    .line 414
    goto/16 :goto_2

    .line 416
    :cond_f
    if-ge v3, v5, :cond_12

    move v9, p2

    .line 417
    goto/16 :goto_2

    .line 422
    :cond_10
    sub-int v1, v5, v3

    .line 424
    .restart local v1       #centerDifference:I
    if-ne v3, v5, :cond_11

    move v9, v10

    .line 426
    goto/16 :goto_2

    .line 429
    :cond_11
    if-le v3, v5, :cond_12

    move v9, p2

    .line 430
    goto/16 :goto_2

    .line 434
    .end local v1           #centerDifference:I
    :cond_12
    sub-int v1, v5, v3

    .line 436
    .restart local v1       #centerDifference:I
    if-eqz p1, :cond_13

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_2

    :cond_13
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_2
.end method

.method public getOrnBottom(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 31
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getOrnBottom(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    return v0
.end method

.method public getOrnGravity()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/htc/view/table/VTableColleague;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getOrnHeight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getOrnHeight(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 89
    iget v0, p1, Lcom/htc/view/table/AbstractTableView$LayoutParams;->height:I

    return v0
.end method

.method public getOrnLeft(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 36
    iget v0, p1, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getOrnLeft(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOrnLeftRightSpacing()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/htc/view/table/VTableColleague;->mHorizontalSpacing:I

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
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMode:I

    .line 96
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMode:I

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    .line 98
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    .line 99
    iput p1, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMeasureSpec:I

    .line 100
    iput p2, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMeasureSpec:I

    .line 101
    return-object v0
.end method

.method public getOrnMeasuredHeight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getOrnMeasuredWidth(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getOrnRequestedWidthSpacing()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v0, v0, Lcom/htc/view/table/TableView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getOrnRight(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 41
    iget v0, p1, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getOrnRight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    return v0
.end method

.method public getOrnTop(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 26
    iget v0, p1, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getOrnTop(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getOrnTopBottomSpacing()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/view/table/VTableColleague;->mVerticalSpacing:I

    return v0
.end method

.method public getOrnWidth(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOrnWidth(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 84
    iget v0, p1, Lcom/htc/view/table/AbstractTableView$LayoutParams;->width:I

    return v0
.end method

.method public getScrollbarWidth()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->getVerticalScrollbarWidth()I

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
    .line 163
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 164
    return-void
.end method

.method public measureView(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "ornWidthMeasureSpec"
    .parameter "ornHeightMeasureSpec"

    .prologue
    .line 112
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 113
    return-void
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 169
    return-void
.end method

.method public offsetOrnChildrenTopAndBottom(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 185
    iget-object v3, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 187
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 188
    iget-object v3, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, v1}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "offset"

    .prologue
    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 174
    return-void
.end method

.method public scrollAmount(Lcom/htc/view/table/AbstractTableView$FlingRunnable;I)V
    .locals 1
    .parameter "runnable"
    .parameter "scrollAmount"

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->startUsingDistance(II)V

    .line 456
    return-void
.end method

.method public scrollIntoSlots(Lcom/htc/view/table/AbstractTableView$FlingRunnable;)V
    .locals 9
    .parameter "runnable"

    .prologue
    const/4 v8, 0x0

    .line 462
    iget-object v5, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->getAllVisibleViews()[Landroid/view/View;

    move-result-object v2

    .line 463
    .local v2, children:[Landroid/view/View;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-gtz v5, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v5, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v5, v5, Lcom/htc/view/table/TableView;->scrollControl:Lcom/htc/view/ScrollControl;

    if-nez v5, :cond_2

    .line 465
    const-string v5, "TableScroll"

    const-string v6, "scrollIntoSlot(): tableView.scrollControl == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_2
    iget-object v5, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v5, v5, Lcom/htc/view/table/TableView;->scrollControl:Lcom/htc/view/ScrollControl;

    iget-object v6, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v6, Lcom/htc/view/table/TableView;->mFirstPosition:I

    invoke-interface {v5, v2, v6}, Lcom/htc/view/ScrollControl;->getCenterView([Landroid/view/View;I)Lcom/htc/view/ScrollControl$CenterView;

    move-result-object v1

    .line 469
    .local v1, centerView:Lcom/htc/view/ScrollControl$CenterView;
    if-nez v1, :cond_3

    .line 470
    iget-object v5, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->onFinishedMovement()V

    .line 471
    iget-object v5, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5, v8}, Lcom/htc/view/table/TableView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 474
    :cond_3
    iget-object v5, v1, Lcom/htc/view/ScrollControl$CenterView;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, Lcom/htc/view/ScrollControl$CenterView;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v1, Lcom/htc/view/ScrollControl$CenterView;->percentage:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 475
    .local v0, centerChildCenter:I
    iget-object v5, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 476
    .local v4, targetCenter:I
    sub-int v3, v4, v0

    .line 477
    .local v3, scrollAmount:I
    if-eqz v3, :cond_4

    .line 478
    invoke-virtual {p0, p1, v3}, Lcom/htc/view/table/VTableColleague;->scrollAmount(Lcom/htc/view/table/AbstractTableView$FlingRunnable;I)V

    goto :goto_0

    .line 480
    :cond_4
    iget-object v5, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->onFinishedMovement()V

    .line 481
    iget-object v5, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5, v8}, Lcom/htc/view/table/TableView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method public scrollWithConstrain(IIZ)V
    .locals 4
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "isFling"

    .prologue
    const/4 v2, 0x0

    .line 487
    if-gez p2, :cond_1

    const/4 v1, 0x1

    .line 492
    .local v1, toTop:Z
    :goto_0
    iget-boolean v3, p0, Lcom/htc/view/table/VTableColleague;->mMultiStop:Z

    if-nez v3, :cond_3

    .line 493
    iget-boolean v3, p0, Lcom/htc/view/table/VTableColleague;->mRepeatEnable:Z

    if-eqz v3, :cond_2

    move v0, p2

    .line 500
    .local v0, newDeltaY:I
    :goto_1
    if-eq v0, p2, :cond_0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 503
    iget-object v3, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v3, v3, Lcom/htc/view/table/TableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {v3, v2}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->endFling(Z)V

    .line 505
    :cond_0
    iget-object v3, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, v2, v0}, Lcom/htc/view/table/TableView;->trackMotionScroll(II)V

    .line 506
    return-void

    .end local v0           #newDeltaY:I
    .end local v1           #toTop:Z
    :cond_1
    move v1, v2

    .line 487
    goto :goto_0

    .line 493
    .restart local v1       #toTop:Z
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/htc/view/table/VTableColleague;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    goto :goto_1

    .line 495
    :cond_3
    iget v3, p0, Lcom/htc/view/table/VTableColleague;->mStopExcept:I

    if-gez v3, :cond_5

    .line 496
    iget-boolean v3, p0, Lcom/htc/view/table/VTableColleague;->mRepeatEnable:Z

    if-eqz v3, :cond_4

    move v0, p2

    .restart local v0       #newDeltaY:I
    :goto_2
    goto :goto_1

    .end local v0           #newDeltaY:I
    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/htc/view/table/VTableColleague;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    goto :goto_2

    .line 498
    :cond_5
    iget-boolean v3, p0, Lcom/htc/view/table/VTableColleague;->mRepeatEnable:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0, v1, p2}, Lcom/htc/view/table/VTableColleague;->getLimitedMotionScrollAmount2(ZI)I

    move-result v0

    .restart local v0       #newDeltaY:I
    :goto_3
    goto :goto_1

    .end local v0           #newDeltaY:I
    :cond_6
    invoke-virtual {p0, v1, p2}, Lcom/htc/view/table/VTableColleague;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    goto :goto_3
.end method

.method public setCloseBouncing(Z)V
    .locals 0
    .parameter "close"

    .prologue
    .line 553
    iput-boolean p1, p0, Lcom/htc/view/table/VTableColleague;->mCloseBouncing:Z

    .line 554
    return-void
.end method

.method public setOrnLeftRightSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 127
    iput p1, p0, Lcom/htc/view/table/VTableColleague;->mHorizontalSpacing:I

    .line 128
    return-void
.end method

.method public setOrnTopBottomSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 137
    iput p1, p0, Lcom/htc/view/table/VTableColleague;->mVerticalSpacing:I

    .line 138
    return-void
.end method

.method public setTableViewMeasuredDimension(II)V
    .locals 1
    .parameter "ornMeasuredWidth"
    .parameter "ornMeasuredHeight"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/view/table/TableView;->setMeasuredDimensionEx(II)V

    .line 148
    return-void
.end method

.method protected trackMotionScrollOrn(II)V
    .locals 4
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    if-gez p2, :cond_0

    move v0, v1

    .line 214
    .local v0, toTop:Z
    :goto_0
    iget-object v3, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, p2}, Lcom/htc/view/table/TableView;->offsetChildrenTopAndBottom(I)V

    .line 215
    iget-object v3, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3, v1}, Lcom/htc/view/table/TableView;->blockLayoutRequests(Z)V

    .line 216
    invoke-virtual {p0, v0}, Lcom/htc/view/table/VTableColleague;->detachOffScreenChildren(Z)V

    .line 218
    invoke-virtual {p0, v0}, Lcom/htc/view/table/VTableColleague;->fillGap(Z)V

    .line 219
    iget-object v1, p0, Lcom/htc/view/table/VTableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->blockLayoutRequests(Z)V

    .line 220
    return-void

    .end local v0           #toTop:Z
    :cond_0
    move v0, v2

    .line 202
    goto :goto_0
.end method
