.class public abstract Lcom/htc/opensense/widget/AlbumGridView;
.super Lcom/htc/opensense/widget/AlbumAbsListView;
.source "AlbumGridView.java"


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 26
    iput v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    .line 28
    iput v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    .line 34
    iput-object v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    .line 35
    iput-object v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mGravity:I

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mTempRect:Landroid/graphics/Rect;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/opensense/widget/AlbumGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 26
    iput v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    .line 28
    iput v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    .line 29
    iput v9, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    .line 34
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    .line 35
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 37
    iput v11, p0, Lcom/htc/opensense/widget/AlbumGridView;->mGravity:I

    .line 39
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mTempRect:Landroid/graphics/Rect;

    .line 52
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 57
    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumGridView;->setHorizontalSpacing(I)V

    .line 59
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 61
    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->setVerticalSpacing(I)V

    .line 63
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 64
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 65
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->setStretchMode(I)V

    .line 68
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 69
    .local v1, columnWidth:I
    if-lez v1, :cond_1

    .line 70
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->setColumnWidth(I)V

    .line 73
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 74
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumGridView;->setNumColumns(I)V

    .line 76
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 77
    if-ltz v3, :cond_2

    .line 78
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->setGravity(I)V

    .line 81
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 685
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 689
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 693
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 694
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 697
    .local v0, offset:I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    .line 699
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 713
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 716
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 720
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 721
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 724
    .local v0, offset:I
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    .line 726
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v1

    .line 1738
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 1742
    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 1745
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1746
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getTopBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getTopBorderHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 1747
    .local v2, delta:I
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 1750
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 1752
    :cond_0
    if-gez v2, :cond_1

    .line 1754
    const/4 v2, 0x0

    .line 1773
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1774
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    .line 1777
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 1758
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1759
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomBoundary()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 1761
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 1764
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 1767
    :cond_4
    if-lez v2, :cond_1

    .line 1769
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v3, 0x1

    .line 1350
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v4, :cond_0

    .line 1438
    :goto_0
    return v2

    .line 1354
    :cond_0
    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 1355
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->layoutChildren()V

    .line 1358
    :cond_1
    const/4 v1, 0x0

    .line 1359
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1361
    .local v0, action:I
    if-eq v0, v3, :cond_3

    .line 1362
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    if-gez v4, :cond_2

    .line 1363
    sparse-switch p1, :sswitch_data_0

    .line 1376
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 1423
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 1424
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumGridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1427
    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    .line 1428
    goto :goto_0

    .line 1371
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->resurrectSelection()Z

    move v2, v3

    .line 1372
    goto :goto_0

    .line 1378
    :sswitch_1
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumGridView;->arrowScroll(I)Z

    move-result v1

    .line 1379
    goto :goto_1

    .line 1382
    :sswitch_2
    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumGridView;->arrowScroll(I)Z

    move-result v1

    .line 1383
    goto :goto_1

    .line 1386
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1387
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1390
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->fullScroll(I)Z

    move-result v1

    .line 1392
    goto :goto_1

    .line 1395
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1396
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1398
    :cond_6
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->fullScroll(I)Z

    move-result v1

    .line 1400
    goto :goto_1

    .line 1404
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 1405
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->keyPressed()V

    :cond_7
    move v2, v3

    .line 1408
    goto :goto_0

    .line 1412
    :sswitch_6
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1413
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1414
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1416
    :cond_9
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1430
    :cond_a
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1432
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/opensense/widget/AlbumAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1434
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/opensense/widget/AlbumAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1436
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1363
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1376
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 1430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 9
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 494
    iget v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 495
    .local v6, lastPosition:I
    iget v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    .line 497
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 500
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 502
    .local v4, lastBottom:I
    iget v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mBottom:I

    iget v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomBoundary()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomBorderHeight()I

    move-result v8

    sub-int v1, v7, v8

    .line 506
    .local v1, end:I
    sub-int v0, v1, v4

    .line 508
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 509
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 513
    .local v3, firstTop:I
    if-lez v0, :cond_3

    iget v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    .line 514
    :cond_0
    iget v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 516
    iget-object v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 520
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    .line 521
    iget v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    if-lez v7, :cond_3

    .line 524
    iget v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    iget-boolean v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1
    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    .line 527
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    .line 531
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 534
    iget v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    .line 536
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 539
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 542
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getTopBoundary()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getTopBorderHeight()I

    move-result v9

    add-int v6, v8, v9

    .line 545
    .local v6, start:I
    iget v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mBottom:I

    iget v9, p0, Lcom/htc/opensense/widget/AlbumGridView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomBorderHeight()I

    move-result v9

    sub-int v0, v8, v9

    .line 549
    .local v0, end:I
    sub-int v7, v2, v6

    .line 550
    .local v7, topOffset:I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 551
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 552
    .local v3, lastBottom:I
    iget v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 556
    .local v5, lastPosition:I
    if-lez v7, :cond_3

    iget v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 557
    :cond_0
    iget v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 559
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 563
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    .line 564
    iget v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    .line 567
    iget-boolean v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1
    :cond_2
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    .line 570
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    .line 574
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_3
    return-void
.end method

.method private determineColumns(I)V
    .locals 7
    .parameter "availableSpace"

    .prologue
    const/4 v6, 0x1

    .line 829
    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedHorizontalSpacing:I

    .line 830
    .local v1, requestedHorizontalSpacing:I
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    .line 831
    .local v3, stretchMode:I
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedColumnWidth:I

    .line 833
    .local v0, requestedColumnWidth:I
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedNumColumns:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 834
    if-lez v0, :cond_1

    .line 836
    add-int v4, p1, v1

    add-int v5, v0, v1

    div-int/2addr v4, v5

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 847
    :goto_0
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    if-gtz v4, :cond_0

    .line 848
    iput v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 851
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 859
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget v5, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    .line 861
    .local v2, spaceLeftOver:I
    packed-switch v3, :pswitch_data_1

    .line 893
    .end local v2           #spaceLeftOver:I
    :goto_1
    return-void

    .line 840
    :cond_1
    const/4 v4, 0x2

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    goto :goto_0

    .line 844
    :cond_2
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedNumColumns:I

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    goto :goto_0

    .line 854
    :pswitch_0
    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    .line 855
    iput v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 864
    .restart local v2       #spaceLeftOver:I
    :pswitch_1
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    div-int v4, v2, v4

    add-int/2addr v4, v0

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    .line 865
    iput v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 870
    :pswitch_2
    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    .line 871
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    if-le v4, v6, :cond_3

    .line 872
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int/lit8 v4, v4, -0x1

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 875
    :cond_3
    add-int v4, v1, v2

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 881
    :pswitch_3
    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    .line 882
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    if-le v4, v6, :cond_4

    .line 883
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int/lit8 v4, v4, 0x1

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 886
    :cond_4
    add-int v4, v1, v2

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 851
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 861
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 5
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 196
    .local v1, selectedView:Landroid/view/View;
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mBottom:I

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 198
    .local v0, end:I
    :goto_0
    if-ge p2, v0, :cond_2

    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    if-ge p1, v3, :cond_2

    .line 199
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/htc/opensense/widget/AlbumGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 200
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 201
    move-object v1, v2

    .line 204
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 207
    :cond_1
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 208
    goto :goto_0

    .line 210
    .end local v2           #temp:Landroid/view/View;
    :cond_2
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .parameter "lastPosition"
    .parameter "nextBottom"

    .prologue
    .line 322
    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 323
    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 325
    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 326
    .local v0, invertedPosition:I
    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 328
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 588
    .local v2, fadingEdgeLength:I
    iget v9, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    .line 589
    .local v9, selectedPosition:I
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 590
    .local v4, numColumns:I
    iget v11, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    .line 593
    .local v11, verticalSpacing:I
    const/4 v6, -0x1

    .line 595
    .local v6, rowEnd:I
    iget-boolean v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    .line 596
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 607
    .local v7, rowStart:I
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Lcom/htc/opensense/widget/AlbumGridView;->getTopSelectionPixel(III)I

    move-result v10

    .line 608
    .local v10, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 611
    .local v1, bottomSelectionPixel:I
    iget-boolean v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/htc/opensense/widget/AlbumGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 613
    .local v8, sel:Landroid/view/View;
    iput v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    .line 615
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    .line 616
    .local v5, referenceView:Landroid/view/View;
    if-nez v5, :cond_2

    .line 633
    :goto_2
    return-object v8

    .line 598
    .end local v1           #bottomSelectionPixel:I
    .end local v5           #referenceView:Landroid/view/View;
    .end local v7           #rowStart:I
    .end local v8           #sel:Landroid/view/View;
    .end local v10           #topSelectionPixel:I
    :cond_0
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 600
    .local v3, invertedSelection:I
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 601
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v1       #bottomSelectionPixel:I
    .restart local v10       #topSelectionPixel:I
    :cond_1
    move v12, v7

    .line 611
    goto :goto_1

    .line 619
    .restart local v5       #referenceView:Landroid/view/View;
    .restart local v8       #sel:Landroid/view/View;
    :cond_2
    invoke-direct {p0, v5, v10, v1}, Lcom/htc/opensense/widget/AlbumGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 620
    invoke-direct {p0, v5, v10, v1}, Lcom/htc/opensense/widget/AlbumGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 622
    iget-boolean v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v12, :cond_3

    .line 623
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    .line 624
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    .line 625
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    goto :goto_2

    .line 627
    :cond_3
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    .line 628
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    .line 629
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 312
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    .line 313
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    .line 314
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    .line 317
    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    .line 318
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->reconcileSelectedPosition()I

    move-result v10

    .line 333
    .local v10, selectedPosition:I
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 334
    .local v4, numColumns:I
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    .line 337
    .local v12, verticalSpacing:I
    const/4 v7, -0x1

    .line 339
    .local v7, rowEnd:I
    iget-boolean v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    .line 340
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 348
    .local v8, rowStart:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 349
    .local v2, fadingEdgeLength:I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Lcom/htc/opensense/widget/AlbumGridView;->getTopSelectionPixel(III)I

    move-result v11

    .line 351
    .local v11, topSelectionPixel:I
    iget-boolean v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Lcom/htc/opensense/widget/AlbumGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 352
    .local v9, sel:Landroid/view/View;
    iput v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    .line 354
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    .line 356
    .local v6, referenceView:Landroid/view/View;
    if-nez v6, :cond_2

    .line 375
    :goto_2
    return-object v9

    .line 342
    .end local v2           #fadingEdgeLength:I
    .end local v6           #referenceView:Landroid/view/View;
    .end local v8           #rowStart:I
    .end local v9           #sel:Landroid/view/View;
    .end local v11           #topSelectionPixel:I
    :cond_0
    iget v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 344
    .local v3, invertedSelection:I
    iget v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 345
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v2       #fadingEdgeLength:I
    .restart local v11       #topSelectionPixel:I
    :cond_1
    move v13, v8

    .line 351
    goto :goto_1

    .line 359
    .restart local v6       #referenceView:Landroid/view/View;
    .restart local v9       #sel:Landroid/view/View;
    :cond_2
    iget-boolean v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v13, :cond_3

    .line 360
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    .line 361
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->pinToBottom(I)V

    .line 362
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    .line 363
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    goto :goto_2

    .line 365
    :cond_3
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 367
    .local v1, bottomSelectionPixel:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 368
    .local v5, offset:I
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    .line 369
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    .line 370
    invoke-direct/range {p0 .. p1}, Lcom/htc/opensense/widget/AlbumGridView;->pinToTop(I)V

    .line 371
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    .line 372
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "top"

    .prologue
    .line 436
    iget v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 439
    .local v6, numColumns:I
    const/4 v4, -0x1

    .line 441
    .local v4, motionRowEnd:I
    iget-boolean v10, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    .line 442
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 450
    .local v5, motionRowStart:I
    :goto_0
    iget-boolean v10, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/htc/opensense/widget/AlbumGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 453
    .local v8, temp:Landroid/view/View;
    iput v5, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    .line 455
    iget-object v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    .line 456
    .local v7, referenceView:Landroid/view/View;
    iget v9, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    .line 458
    .local v9, verticalSpacing:I
    const/4 v0, 0x0

    .line 459
    .local v0, above:Landroid/view/View;
    const/4 v1, 0x0

    .line 461
    .local v1, below:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 462
    iget-boolean v10, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v10, :cond_3

    .line 463
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 464
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    .line 465
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 467
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v2

    .line 468
    .local v2, childCount:I
    if-lez v2, :cond_0

    .line 469
    invoke-direct {p0, v6, v9, v2}, Lcom/htc/opensense/widget/AlbumGridView;->correctTooHigh(III)V

    .line 483
    .end local v2           #childCount:I
    :cond_0
    :goto_2
    if-eqz v8, :cond_4

    .line 488
    .end local v8           #temp:Landroid/view/View;
    :goto_3
    return-object v8

    .line 444
    .end local v0           #above:Landroid/view/View;
    .end local v1           #below:Landroid/view/View;
    .end local v5           #motionRowStart:I
    .end local v7           #referenceView:Landroid/view/View;
    .end local v9           #verticalSpacing:I
    :cond_1
    iget v10, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 446
    .local v3, invertedSelection:I
    iget v10, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 447
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #motionRowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    :cond_2
    move v10, v5

    .line 450
    goto :goto_1

    .line 472
    .restart local v0       #above:Landroid/view/View;
    .restart local v1       #below:Landroid/view/View;
    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v8       #temp:Landroid/view/View;
    .restart local v9       #verticalSpacing:I
    :cond_3
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 473
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    .line 474
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 476
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v2

    .line 477
    .restart local v2       #childCount:I
    if-lez v2, :cond_0

    .line 478
    invoke-direct {p0, v6, v9, v2}, Lcom/htc/opensense/widget/AlbumGridView;->correctTooLow(III)V

    goto :goto_2

    .line 485
    .end local v2           #childCount:I
    :cond_4
    if-eqz v0, :cond_5

    move-object v8, v0

    .line 486
    goto :goto_3

    :cond_5
    move-object v8, v1

    .line 488
    goto :goto_3
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v5, 0x0

    .line 277
    const/4 v1, 0x0

    .line 279
    .local v1, selectedView:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 281
    .local v0, end:I
    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    .line 283
    invoke-direct {p0, p1, p2, v5}, Lcom/htc/opensense/widget/AlbumGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 284
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 285
    move-object v1, v2

    .line 288
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 289
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 291
    :cond_1
    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    .line 293
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 294
    goto :goto_0

    .line 296
    .end local v2           #temp:Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    .line 297
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    .line 300
    :cond_3
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "numColumns"
    .parameter "rowStart"

    .prologue
    .line 648
    move v0, p1

    .line 649
    .local v0, bottomSelectionPixel:I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 650
    sub-int/2addr v0, p2

    .line 652
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "rowStart"

    .prologue
    .line 665
    move v0, p1

    .line 666
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 667
    add-int/2addr v0, p2

    .line 669
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1603
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v0

    .line 1604
    .local v0, count:I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 1609
    .local v1, invertedIndex:I
    iget-boolean v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 1610
    iget v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 1611
    .local v3, rowStart:I
    iget v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1617
    .local v2, rowEnd:I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 1632
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1613
    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 1614
    .restart local v2       #rowEnd:I
    iget v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_0

    .line 1621
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 1630
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 1621
    goto :goto_1

    .line 1624
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 1627
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 1630
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 1617
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "where"

    .prologue
    .line 1204
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumGridView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 1206
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1207
    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense/widget/AlbumGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 1209
    :cond_0
    return-object v1
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 15
    .parameter "startPos"
    .parameter "y"
    .parameter "flow"

    .prologue
    .line 214
    iget v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    .line 215
    .local v8, columnWidth:I
    iget v10, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    .line 218
    .local v10, horizontalSpacing:I
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    move v0, v10

    :goto_0
    add-int v4, v2, v0

    .line 220
    .local v4, nextLeft:I
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v0, :cond_5

    .line 221
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int v0, v0, p1

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 231
    .local v12, last:I
    :cond_0
    :goto_1
    const/4 v14, 0x0

    .line 233
    .local v14, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->shouldShowSelector()Z

    move-result v9

    .line 234
    .local v9, hasFocus:Z
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->touchModeDrawsInPressedState()Z

    move-result v11

    .line 235
    .local v11, inClick:Z
    iget v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    .line 237
    .local v13, selectedPosition:I
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    .line 239
    move/from16 v1, p1

    .local v1, pos:I
    :goto_2
    if-ge v1, v12, :cond_8

    .line 241
    if-ne v1, v13, :cond_6

    const/4 v5, 0x1

    .line 244
    .local v5, selected:Z
    :goto_3
    if-eqz p3, :cond_7

    const/4 v6, -0x1

    .local v6, where:I
    :goto_4
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 245
    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense/widget/AlbumGridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 246
    .local v7, child:Landroid/view/View;
    iput-object v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    .line 248
    add-int/2addr v4, v8

    .line 249
    add-int/lit8 v0, v12, -0x1

    if-ge v1, v0, :cond_1

    .line 250
    add-int/2addr v4, v10

    .line 253
    :cond_1
    if-eqz v5, :cond_3

    if-nez v9, :cond_2

    if-eqz v11, :cond_3

    .line 254
    :cond_2
    move-object v14, v7

    .line 239
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 218
    .end local v1           #pos:I
    .end local v4           #nextLeft:I
    .end local v5           #selected:Z
    .end local v6           #where:I
    .end local v7           #child:Landroid/view/View;
    .end local v9           #hasFocus:Z
    .end local v11           #inClick:Z
    .end local v12           #last:I
    .end local v13           #selectedPosition:I
    .end local v14           #selectedView:Landroid/view/View;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 223
    .restart local v4       #nextLeft:I
    :cond_5
    add-int/lit8 v12, p1, 0x1

    .line 224
    .restart local v12       #last:I
    const/4 v0, 0x0

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 226
    sub-int v0, v12, p1

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    if-ge v0, v2, :cond_0

    .line 227
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    sub-int v2, v12, p1

    sub-int/2addr v0, v2

    add-int v2, v8, v10

    mul-int/2addr v0, v2

    add-int/2addr v4, v0

    goto :goto_1

    .line 241
    .restart local v1       #pos:I
    .restart local v9       #hasFocus:Z
    .restart local v11       #inClick:Z
    .restart local v13       #selectedPosition:I
    .restart local v14       #selectedView:Landroid/view/View;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 244
    .restart local v5       #selected:Z
    :cond_7
    sub-int v6, v1, p1

    goto :goto_4

    .line 258
    .end local v5           #selected:Z
    :cond_8
    if-eqz v14, :cond_9

    .line 259
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 263
    :cond_9
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 743
    .local v5, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 744
    .local v16, selectedPosition:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 745
    .local v7, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 749
    .local v18, verticalSpacing:I
    const/4 v13, -0x1

    .line 751
    .local v13, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 752
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 754
    .local v9, oldRowStart:I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 766
    .local v14, rowStart:I
    :goto_0
    sub-int v12, v14, v9

    .line 768
    .local v12, rowDelta:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Lcom/htc/opensense/widget/AlbumGridView;->getTopSelectionPixel(III)I

    move-result v17

    .line 769
    .local v17, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 773
    .local v4, bottomSelectionPixel:I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    .line 778
    if-lez v12, :cond_3

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    .line 786
    .local v8, oldBottom:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v13

    :goto_2
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/opensense/widget/AlbumGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 787
    .local v15, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    .line 789
    .local v11, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/htc/opensense/widget/AlbumGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 812
    .end local v8           #oldBottom:I
    :goto_3
    if-nez v11, :cond_9

    .line 825
    :goto_4
    return-object v15

    .line 756
    .end local v4           #bottomSelectionPixel:I
    .end local v9           #oldRowStart:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v12           #rowDelta:I
    .end local v14           #rowStart:I
    .end local v15           #sel:Landroid/view/View;
    .end local v17           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 758
    .local v6, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 759
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 761
    .restart local v14       #rowStart:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 762
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 763
    .restart local v9       #oldRowStart:I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    .line 783
    .end local v6           #invertedSelection:I
    .restart local v4       #bottomSelectionPixel:I
    .restart local v12       #rowDelta:I
    .restart local v17       #topSelectionPixel:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_1

    .restart local v8       #oldBottom:I
    :cond_2
    move/from16 v19, v14

    .line 786
    goto :goto_2

    .line 790
    .end local v8           #oldBottom:I
    :cond_3
    if-gez v12, :cond_6

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v10, 0x0

    .line 797
    .local v10, oldTop:I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v13

    :goto_6
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/opensense/widget/AlbumGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 798
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    .line 800
    .restart local v11       #referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/htc/opensense/widget/AlbumGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 794
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    .restart local v10       #oldTop:I
    :cond_5
    move/from16 v19, v14

    .line 797
    goto :goto_6

    .line 805
    .end local v10           #oldTop:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v10, 0x0

    .line 808
    .restart local v10       #oldTop:I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v13

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Lcom/htc/opensense/widget/AlbumGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 809
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    .restart local v11       #referenceView:Landroid/view/View;
    goto/16 :goto_3

    .line 805
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    .restart local v10       #oldTop:I
    :cond_8
    move/from16 v19, v14

    .line 808
    goto :goto_8

    .line 815
    .end local v10           #oldTop:I
    .restart local v11       #referenceView:Landroid/view/View;
    .restart local v15       #sel:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 816
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    .line 818
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    goto/16 :goto_4

    .line 820
    :cond_a
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    .line 821
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    .line 822
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .parameter "childrenBottom"

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v1

    .line 391
    .local v1, count:I
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 392
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 393
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 394
    .local v2, offset:I
    if-lez v2, :cond_0

    .line 395
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    .line 398
    .end local v0           #bottom:I
    .end local v2           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .parameter "childrenTop"

    .prologue
    .line 379
    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 382
    .local v1, top:I
    sub-int v0, p1, v1

    .line 383
    .local v0, offset:I
    if-gez v0, :cond_0

    .line 384
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    goto :goto_0
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 18
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"
    .parameter "where"

    .prologue
    .line 1230
    if-nez p1, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    if-eqz p6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumGridView;->shouldShowSelector()Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v10, 0x1

    .line 1233
    .local v10, isSelected:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v15

    if-eq v10, v15, :cond_6

    const/4 v13, 0x1

    .line 1234
    .local v13, updateChildSelected:Z
    :goto_2
    if-eqz p7, :cond_2

    if-nez v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_2
    const/4 v11, 0x1

    .line 1238
    .local v11, needToMeasure:Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    .line 1239
    .local v12, p:Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    if-nez v12, :cond_3

    .line 1240
    new-instance v12, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    .end local v12           #p:Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v15, v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;-><init>(III)V

    .line 1243
    .restart local v12       #p:Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v12, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;->viewType:I

    .line 1245
    if-eqz p7, :cond_8

    .line 1246
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/opensense/widget/AlbumGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    :goto_4
    if-eqz v13, :cond_4

    .line 1252
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setSelected(Z)V

    .line 1253
    if-eqz v10, :cond_4

    .line 1254
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestFocus()Z

    .line 1258
    :cond_4
    if-eqz v11, :cond_9

    .line 1259
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    const/16 v16, 0x0

    iget v0, v12, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;->height:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 1262
    .local v4, childHeightSpec:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    const/high16 v16, 0x4000

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    const/16 v16, 0x0

    iget v0, v12, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;->width:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1264
    .local v8, childWidthSpec:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v4}, Landroid/view/View;->measure(II)V

    .line 1269
    .end local v4           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1270
    .local v14, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1273
    .local v9, h:I
    if-eqz p4, :cond_a

    move/from16 v7, p3

    .line 1275
    .local v7, childTop:I
    :goto_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/widget/AlbumGridView;->mGravity:I

    and-int/lit8 v15, v15, 0x7

    packed-switch v15, :pswitch_data_0

    .line 1286
    :pswitch_0
    move/from16 v5, p5

    .line 1290
    .local v5, childLeft:I
    :goto_7
    if-eqz v11, :cond_b

    .line 1291
    add-int v6, v5, v14

    .line 1292
    .local v6, childRight:I
    add-int v3, v7, v9

    .line 1293
    .local v3, childBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v6, v3}, Landroid/view/View;->layout(IIII)V

    .line 1299
    .end local v3           #childBottom:I
    .end local v6           #childRight:I
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/opensense/widget/AlbumGridView;->mCachingStarted:Z

    if-eqz v15, :cond_0

    .line 1300
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_0

    .line 1231
    .end local v5           #childLeft:I
    .end local v7           #childTop:I
    .end local v9           #h:I
    .end local v10           #isSelected:Z
    .end local v11           #needToMeasure:Z
    .end local v12           #p:Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    .end local v13           #updateChildSelected:Z
    .end local v14           #w:I
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1233
    .restart local v10       #isSelected:Z
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1234
    .restart local v13       #updateChildSelected:Z
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1248
    .restart local v11       #needToMeasure:Z
    .restart local v12       #p:Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    :cond_8
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v12, v15}, Lcom/htc/opensense/widget/AlbumGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_4

    .line 1266
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/htc/opensense/widget/AlbumGridView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_5

    .line 1273
    .restart local v9       #h:I
    .restart local v14       #w:I
    :cond_a
    sub-int v7, p3, v9

    goto :goto_6

    .line 1277
    .restart local v7       #childTop:I
    :pswitch_1
    move/from16 v5, p5

    .line 1278
    .restart local v5       #childLeft:I
    goto :goto_7

    .line 1280
    .end local v5           #childLeft:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    sub-int/2addr v15, v14

    div-int/lit8 v15, v15, 0x2

    add-int v5, p5, v15

    .line 1281
    .restart local v5       #childLeft:I
    goto :goto_7

    .line 1283
    .end local v5           #childLeft:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    add-int v15, v15, p5

    sub-int v5, v15, v14

    .line 1284
    .restart local v5       #childLeft:I
    goto :goto_7

    .line 1295
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1296
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v15, v7, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_8

    .line 1275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 1500
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    .line 1501
    .local v4, selectedPosition:I
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 1506
    .local v3, numColumns:I
    const/4 v2, 0x0

    .line 1508
    .local v2, moved:Z
    iget-boolean v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v6, :cond_2

    .line 1509
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1510
    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1517
    .local v0, endOfRowPos:I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1548
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1549
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->playSoundEffect(I)V

    .line 1550
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V

    .line 1553
    :cond_1
    return v2

    .line 1512
    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_2
    iget v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 1513
    .local v1, invertedSelection:I
    iget v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1514
    .restart local v0       #endOfRowPos:I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_0

    .line 1519
    .end local v1           #invertedSelection:I
    :sswitch_0
    if-lez v5, :cond_0

    .line 1520
    iput v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mLayoutMode:I

    .line 1521
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    .line 1522
    const/4 v2, 0x1

    goto :goto_1

    .line 1526
    :sswitch_1
    iget v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 1527
    iput v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mLayoutMode:I

    .line 1528
    add-int v6, v4, v3

    iget v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    .line 1529
    const/4 v2, 0x1

    goto :goto_1

    .line 1533
    :sswitch_2
    if-le v4, v5, :cond_0

    .line 1534
    iput v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mLayoutMode:I

    .line 1535
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    .line 1536
    const/4 v2, 0x1

    goto :goto_1

    .line 1540
    :sswitch_3
    if-ge v4, v0, :cond_0

    .line 1541
    iput v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mLayoutMode:I

    .line 1542
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    .line 1543
    const/4 v2, 0x1

    goto :goto_1

    .line 1517
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 975
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 978
    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 979
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 980
    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 983
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 984
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 985
    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 986
    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 988
    iget-boolean v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 989
    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 990
    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 997
    :goto_0
    return-void

    .line 992
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 994
    .local v1, invertedIndex:I
    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 995
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1781
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v1

    .line 1782
    .local v1, count:I
    if-lez v1, :cond_2

    .line 1783
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 1784
    .local v4, numColumns:I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 1786
    .local v5, rowCount:I
    mul-int/lit8 v2, v5, 0x64

    .line 1788
    .local v2, extent:I
    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1789
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1790
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1791
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1792
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 1795
    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1796
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1797
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1798
    if-lez v3, :cond_1

    .line 1799
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 1804
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #numColumns:I
    .end local v5           #rowCount:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1809
    iget v5, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 1810
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1811
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1812
    .local v1, top:I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1813
    .local v0, height:I
    if-lez v0, :cond_0

    .line 1814
    iget v5, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    iget v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    div-int v3, v5, v6

    .line 1815
    .local v3, whichRow:I
    mul-int/lit8 v5, v3, 0x64

    mul-int/lit8 v6, v1, 0x64

    div-int/2addr v6, v0

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1818
    .end local v0           #height:I
    .end local v1           #top:I
    .end local v2           #view:Landroid/view/View;
    .end local v3           #whichRow:I
    :cond_0
    return v4
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 1824
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 1825
    .local v0, numColumns:I
    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    .line 1826
    .local v1, rowCount:I
    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method fillGap(Z)V
    .locals 7
    .parameter "down"

    .prologue
    .line 154
    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 155
    .local v1, numColumns:I
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    .line 157
    .local v4, verticalSpacing:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v0

    .line 159
    .local v0, count:I
    if-eqz p1, :cond_2

    .line 160
    if-lez v0, :cond_1

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int v3, v5, v4

    .line 162
    .local v3, startOffset:I
    :goto_0
    iget v5, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    add-int v2, v5, v0

    .line 163
    .local v2, position:I
    iget-boolean v5, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_0

    .line 164
    add-int/lit8 v5, v1, -0x1

    add-int/2addr v2, v5

    .line 166
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    .line 167
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lcom/htc/opensense/widget/AlbumGridView;->correctTooHigh(III)V

    .line 180
    :goto_1
    return-void

    .line 160
    .end local v2           #position:I
    .end local v3           #startOffset:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getListPaddingTop()I

    move-result v3

    goto :goto_0

    .line 169
    :cond_2
    if-lez v0, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v3, v5, v4

    .line 171
    .restart local v3       #startOffset:I
    :goto_2
    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    .line 172
    .restart local v2       #position:I
    iget-boolean v5, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v5, :cond_4

    .line 173
    sub-int/2addr v2, v1

    .line 177
    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    .line 178
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lcom/htc/opensense/widget/AlbumGridView;->correctTooLow(III)V

    goto :goto_1

    .line 169
    .end local v2           #position:I
    .end local v3           #startOffset:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getListPaddingBottom()I

    move-result v6

    sub-int v3, v5, v6

    goto :goto_2

    .line 175
    .restart local v2       #position:I
    .restart local v3       #startOffset:I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v0

    .line 403
    .local v0, childCount:I
    if-lez v0, :cond_4

    .line 405
    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 406
    .local v2, numColumns:I
    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 407
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 408
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 409
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 422
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1
    return v3

    .line 407
    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 413
    .end local v1           #i:I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 414
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 415
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 413
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 420
    :cond_3
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 422
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_4
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    .line 1475
    const/4 v0, 0x0

    .line 1476
    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_1

    .line 1477
    iput v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mLayoutMode:I

    .line 1478
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    .line 1479
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V

    .line 1480
    const/4 v0, 0x1

    .line 1488
    :cond_0
    :goto_0
    return v0

    .line 1481
    :cond_1
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1482
    iput v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mLayoutMode:I

    .line 1483
    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    .line 1484
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V

    .line 1485
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getNumColumns()I
    .locals 1

    .prologue
    .line 1830
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 1700
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .prologue
    .line 1834
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1001
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mBlockLayoutRequests:Z

    .line 1002
    .local v0, blockLayoutRequests:Z
    if-nez v0, :cond_0

    .line 1003
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mBlockLayoutRequests:Z

    .line 1007
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    .line 1009
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invalidate()V

    .line 1011
    iget-object v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v12, :cond_2

    .line 1012
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->resetList()V

    .line 1013
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1166
    if-nez v0, :cond_1

    .line 1167
    iput-boolean v14, p0, Lcom/htc/opensense/widget/AlbumGridView;->mBlockLayoutRequests:Z

    .line 1170
    :cond_1
    :goto_0
    return-void

    .line 1017
    :cond_2
    :try_start_1
    iget-object v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getTopBorderHeight()I

    move-result v13

    add-int v3, v12, v13

    .line 1018
    .local v3, childrenTop:I
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mBottom:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mTop:I

    sub-int/2addr v12, v13

    iget-object v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomBorderHeight()I

    move-result v13

    sub-int v2, v12, v13

    .line 1020
    .local v2, childrenBottom:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v1

    .line 1022
    .local v1, childCount:I
    const/4 v5, 0x0

    .line 1025
    .local v5, delta:I
    const/4 v10, 0x0

    .line 1026
    .local v10, oldSel:Landroid/view/View;
    const/4 v9, 0x0

    .line 1027
    .local v9, oldFirst:Landroid/view/View;
    const/4 v8, 0x0

    .line 1030
    .local v8, newSel:Landroid/view/View;
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mLayoutMode:I

    packed-switch v12, :pswitch_data_0

    .line 1049
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    sub-int v6, v12, v13

    .line 1050
    .local v6, index:I
    if-ltz v6, :cond_3

    if-ge v6, v1, :cond_3

    .line 1051
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1055
    :cond_3
    if-lez v1, :cond_4

    .line 1056
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1059
    .end local v6           #index:I
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mDataChanged:Z

    .line 1060
    .local v4, dataChanged:Z
    if-eqz v4, :cond_5

    .line 1061
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->handleDataChanged()V

    .line 1066
    :cond_5
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    if-nez v12, :cond_6

    .line 1067
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->resetList()V

    .line 1068
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1166
    if-nez v0, :cond_1

    .line 1167
    iput-boolean v14, p0, Lcom/htc/opensense/widget/AlbumGridView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1032
    .end local v4           #dataChanged:Z
    :pswitch_1
    :try_start_2
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNextSelectedPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    sub-int v6, v12, v13

    .line 1033
    .restart local v6       #index:I
    if-ltz v6, :cond_4

    if-ge v6, v1, :cond_4

    .line 1034
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    goto :goto_1

    .line 1043
    .end local v6           #index:I
    :pswitch_2
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNextSelectedPosition:I

    if-ltz v12, :cond_4

    .line 1044
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNextSelectedPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    sub-int v5, v12, v13

    goto :goto_1

    .line 1072
    .restart local v4       #dataChanged:Z
    :cond_6
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNextSelectedPosition:I

    invoke-virtual {p0, v12}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectedPositionInt(I)V

    .line 1089
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->detachAllViewsFromParent()V

    .line 1091
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mLayoutMode:I

    packed-switch v12, :pswitch_data_1

    .line 1119
    if-nez v1, :cond_b

    .line 1120
    iget-boolean v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-nez v12, :cond_a

    .line 1121
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectedPositionInt(I)V

    .line 1122
    invoke-direct {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v11

    .line 1145
    .end local v3           #childrenTop:I
    .local v11, sel:Landroid/view/View;
    :goto_2
    if-eqz v11, :cond_10

    .line 1146
    invoke-virtual {p0, v11}, Lcom/htc/opensense/widget/AlbumGridView;->positionSelector(Landroid/view/View;)V

    .line 1147
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedTop:I

    .line 1153
    :goto_3
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mLayoutMode:I

    .line 1154
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mDataChanged:Z

    .line 1155
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNeedSync:Z

    .line 1156
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    invoke-virtual {p0, v12}, Lcom/htc/opensense/widget/AlbumGridView;->setNextSelectedPositionInt(I)V

    .line 1158
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->updateScrollIndicators()V

    .line 1160
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    if-lez v12, :cond_7

    .line 1161
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->checkSelectionChanged()V

    .line 1164
    :cond_7
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1166
    if-nez v0, :cond_1

    .line 1167
    iput-boolean v14, p0, Lcom/htc/opensense/widget/AlbumGridView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1093
    .end local v11           #sel:Landroid/view/View;
    .restart local v3       #childrenTop:I
    :pswitch_3
    if-eqz v8, :cond_8

    .line 1094
    :try_start_3
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-direct {p0, v12, v3, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v11

    .restart local v11       #sel:Landroid/view/View;
    goto :goto_2

    .line 1096
    .end local v11           #sel:Landroid/view/View;
    :cond_8
    invoke-direct {p0, v3, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillSelection(II)Landroid/view/View;

    move-result-object v11

    .line 1098
    .restart local v11       #sel:Landroid/view/View;
    goto :goto_2

    .line 1100
    .end local v11           #sel:Landroid/view/View;
    :pswitch_4
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    .line 1101
    invoke-direct {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v11

    .line 1102
    .restart local v11       #sel:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1166
    .end local v1           #childCount:I
    .end local v2           #childrenBottom:I
    .end local v3           #childrenTop:I
    .end local v4           #dataChanged:Z
    .end local v5           #delta:I
    .end local v8           #newSel:Landroid/view/View;
    .end local v9           #oldFirst:Landroid/view/View;
    .end local v10           #oldSel:Landroid/view/View;
    .end local v11           #sel:Landroid/view/View;
    :catchall_0
    move-exception v12

    if-nez v0, :cond_9

    .line 1167
    iput-boolean v14, p0, Lcom/htc/opensense/widget/AlbumGridView;->mBlockLayoutRequests:Z

    :cond_9
    throw v12

    .line 1105
    .restart local v1       #childCount:I
    .restart local v2       #childrenBottom:I
    .restart local v3       #childrenTop:I
    .restart local v4       #dataChanged:Z
    .restart local v5       #delta:I
    .restart local v8       #newSel:Landroid/view/View;
    .restart local v9       #oldFirst:Landroid/view/View;
    .restart local v10       #oldSel:Landroid/view/View;
    :pswitch_5
    :try_start_4
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    invoke-direct {p0, v12, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    move-result-object v11

    .line 1106
    .restart local v11       #sel:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    goto :goto_2

    .line 1109
    .end local v11           #sel:Landroid/view/View;
    :pswitch_6
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSpecificTop:I

    invoke-direct {p0, v12, v13}, Lcom/htc/opensense/widget/AlbumGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v11

    .line 1110
    .restart local v11       #sel:Landroid/view/View;
    goto :goto_2

    .line 1112
    .end local v11           #sel:Landroid/view/View;
    :pswitch_7
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSyncPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSpecificTop:I

    invoke-direct {p0, v12, v13}, Lcom/htc/opensense/widget/AlbumGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v11

    .line 1113
    .restart local v11       #sel:Landroid/view/View;
    goto :goto_2

    .line 1116
    .end local v11           #sel:Landroid/view/View;
    :pswitch_8
    invoke-direct {p0, v5, v3, v2}, Lcom/htc/opensense/widget/AlbumGridView;->moveSelection(III)Landroid/view/View;

    move-result-object v11

    .line 1117
    .restart local v11       #sel:Landroid/view/View;
    goto :goto_2

    .line 1124
    .end local v11           #sel:Landroid/view/View;
    :cond_a
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v7, v12, -0x1

    .line 1125
    .local v7, last:I
    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectedPositionInt(I)V

    .line 1126
    invoke-direct {p0, v7, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v11

    .line 1127
    .restart local v11       #sel:Landroid/view/View;
    goto :goto_2

    .line 1129
    .end local v7           #last:I
    .end local v11           #sel:Landroid/view/View;
    :cond_b
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    if-ltz v12, :cond_d

    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    if-ge v12, v13, :cond_d

    .line 1130
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    if-nez v10, :cond_c

    .end local v3           #childrenTop:I
    :goto_4
    invoke-direct {p0, v12, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v11

    .restart local v11       #sel:Landroid/view/View;
    goto/16 :goto_2

    .end local v11           #sel:Landroid/view/View;
    .restart local v3       #childrenTop:I
    :cond_c
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_4

    .line 1132
    :cond_d
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    if-ge v12, v13, :cond_f

    .line 1133
    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    if-nez v9, :cond_e

    .end local v3           #childrenTop:I
    :goto_5
    invoke-direct {p0, v12, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v11

    .restart local v11       #sel:Landroid/view/View;
    goto/16 :goto_2

    .end local v11           #sel:Landroid/view/View;
    .restart local v3       #childrenTop:I
    :cond_e
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_5

    .line 1136
    :cond_f
    const/4 v12, 0x0

    invoke-direct {p0, v12, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v11

    .restart local v11       #sel:Landroid/view/View;
    goto/16 :goto_2

    .line 1149
    .end local v3           #childrenTop:I
    :cond_10
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedTop:I

    .line 1150
    iget-object v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 1030
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1091
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v1, -0x1

    .line 138
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 139
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .line 146
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 143
    .restart local p1
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    .line 144
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1558
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1560
    const/4 v1, -0x1

    .line 1561
    .local v1, closestChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1562
    iget v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mScrollX:I

    iget v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1566
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mTempRect:Landroid/graphics/Rect;

    .line 1567
    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1568
    .local v4, minDistance:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v0

    .line 1569
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1571
    invoke-direct {p0, v3, p2}, Lcom/htc/opensense/widget/AlbumGridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1569
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1575
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1576
    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1577
    invoke-virtual {p0, v5, v6}, Lcom/htc/opensense/widget/AlbumGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1578
    invoke-static {p3, v6, p2}, Lcom/htc/opensense/widget/AlbumGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1580
    .local v2, distance:I
    if-ge v2, v4, :cond_0

    .line 1581
    move v4, v2

    .line 1582
    move v1, v3

    goto :goto_1

    .line 1587
    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 1588
    iget v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumGridView;->setSelection(I)V

    .line 1592
    :goto_2
    return-void

    .line 1590
    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1336
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/opensense/widget/AlbumGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1341
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1346
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/opensense/widget/AlbumGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 898
    invoke-super/range {p0 .. p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->onMeasure(II)V

    .line 900
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 901
    .local v15, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 902
    .local v9, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 903
    .local v16, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 905
    .local v10, heightSize:I
    if-nez v15, :cond_0

    .line 906
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 907
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v17, v18

    .line 911
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumGridView;->getVerticalScrollbarWidth()I

    move-result v17

    add-int v16, v16, v17

    .line 914
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 915
    .local v6, childWidth:I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->determineColumns(I)V

    .line 917
    const/4 v4, 0x0

    .line 919
    .local v4, childHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    .line 920
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    .line 921
    .local v8, count:I
    if-lez v8, :cond_2

    .line 922
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->obtainView(I)Landroid/view/View;

    move-result-object v3

    .line 924
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    .line 925
    .local v14, p:Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    if-nez v14, :cond_1

    .line 926
    new-instance v14, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    .end local v14           #p:Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;-><init>(III)V

    .line 928
    .restart local v14       #p:Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;->viewType:I

    .line 932
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v18, 0x0

    iget v0, v14, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;->height:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/htc/opensense/widget/AlbumGridView;->getChildMeasureSpec(III)I

    move-result v5

    .line 934
    .local v5, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v18, 0x0

    iget v0, v14, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;->width:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/htc/opensense/widget/AlbumGridView;->getChildMeasureSpec(III)I

    move-result v7

    .line 936
    .local v7, childWidthSpec:I
    invoke-virtual {v3, v7, v5}, Landroid/view/View;->measure(II)V

    .line 938
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 945
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childHeightSpec:I
    .end local v7           #childWidthSpec:I
    .end local v14           #p:Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    :cond_2
    if-nez v9, :cond_3

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v17, v17, v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumGridView;->getVerticalFadingEdgeLength()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2

    add-int v10, v17, v18

    .line 950
    :cond_3
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v9, v0, :cond_6

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v13, v17, v18

    .line 953
    .local v13, ourSize:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    .line 954
    .local v12, numColumns:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v8, :cond_5

    .line 955
    add-int/2addr v13, v4

    .line 956
    add-int v17, v11, v12

    move/from16 v0, v17

    if-ge v0, v8, :cond_4

    .line 957
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    move/from16 v17, v0

    add-int v13, v13, v17

    .line 959
    :cond_4
    if-lt v13, v10, :cond_9

    .line 960
    move v13, v10

    .line 964
    :cond_5
    move v10, v13

    .line 967
    .end local v11           #i:I
    .end local v12           #numColumns:I
    .end local v13           #ourSize:I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/htc/opensense/widget/AlbumGridView;->setMeasuredDimension(II)V

    .line 968
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumGridView;->mWidthMeasureSpec:I

    .line 969
    return-void

    .line 909
    .end local v4           #childHeight:I
    .end local v6           #childWidth:I
    .end local v8           #count:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v17, v18

    goto/16 :goto_0

    .line 919
    .restart local v4       #childHeight:I
    .restart local v6       #childWidth:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v17

    goto/16 :goto_1

    .line 954
    .restart local v8       #count:I
    .restart local v11       #i:I
    .restart local v12       #numColumns:I
    .restart local v13       #ourSize:I
    :cond_9
    add-int/2addr v11, v12

    goto :goto_2
.end method

.method pageScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 1450
    const/4 v0, -0x1

    .line 1452
    .local v0, nextPage:I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 1453
    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1458
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 1459
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    .line 1460
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V

    .line 1461
    const/4 v1, 0x1

    .line 1464
    :cond_1
    return v1

    .line 1454
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 1455
    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method protected rescanScreen()V
    .locals 1

    .prologue
    .line 1838
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->fillGap(Z)V

    .line 1839
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Landroid/widget/BaseAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumGridView;->setAdapter(Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mDataSetObserver:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->resetList()V

    .line 102
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mOldSelectedPosition:I

    .line 105
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mOldSelectedRowId:J

    .line 107
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_2

    .line 108
    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mOldItemCount:I

    .line 109
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    .line 110
    iput-boolean v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mDataChanged:Z

    .line 111
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->checkFocus()V

    .line 113
    new-instance v1, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/opensense/widget/AlbumAdapterView;)V

    iput-object v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mDataSetObserver:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;

    .line 114
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mDataSetObserver:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 119
    iget-boolean v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 120
    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/htc/opensense/widget/AlbumGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 124
    .local v0, position:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectedPositionInt(I)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->setNextSelectedPositionInt(I)V

    .line 126
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->checkSelectionChanged()V

    .line 133
    .end local v0           #position:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayout()V

    .line 134
    return-void

    .line 122
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/htc/opensense/widget/AlbumGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_0

    .line 128
    .end local v0           #position:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->checkFocus()V

    .line 130
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1
    .parameter "columnWidth"

    .prologue
    .line 1711
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 1712
    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedColumnWidth:I

    .line 1713
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayoutIfNecessary()V

    .line 1715
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1645
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1646
    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mGravity:I

    .line 1647
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayoutIfNecessary()V

    .line 1649
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .parameter "horizontalSpacing"

    .prologue
    .line 1661
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1662
    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedHorizontalSpacing:I

    .line 1663
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayoutIfNecessary()V

    .line 1665
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .parameter "numColumns"

    .prologue
    .line 1725
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 1726
    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedNumColumns:I

    .line 1727
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayoutIfNecessary()V

    .line 1729
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1314
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1315
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumGridView;->setNextSelectedPositionInt(I)V

    .line 1319
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mLayoutMode:I

    .line 1320
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayout()V

    .line 1321
    return-void

    .line 1317
    :cond_0
    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1330
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumGridView;->setNextSelectedPositionInt(I)V

    .line 1331
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->layoutChildren()V

    .line 1332
    return-void
.end method

.method public setStretchMode(I)V
    .locals 1
    .parameter "stretchMode"

    .prologue
    .line 1693
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 1694
    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    .line 1695
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayoutIfNecessary()V

    .line 1697
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .parameter "verticalSpacing"

    .prologue
    .line 1678
    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1679
    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    .line 1680
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayoutIfNecessary()V

    .line 1682
    :cond_0
    return-void
.end method
