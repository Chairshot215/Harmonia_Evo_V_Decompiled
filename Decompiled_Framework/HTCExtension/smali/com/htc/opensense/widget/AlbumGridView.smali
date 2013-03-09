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

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    iput-object v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    iput-object v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mGravity:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/opensense/widget/AlbumGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    iput v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    iput v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    iput v9, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    iput v11, p0, Lcom/htc/opensense/widget/AlbumGridView;->mGravity:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mTempRect:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumGridView;->setHorizontalSpacing(I)V

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->setVerticalSpacing(I)V

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->setStretchMode(I)V

    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->setColumnWidth(I)V

    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumGridView;->setNumColumns(I)V

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->setGravity(I)V

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    neg-int v3, v0

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getTopBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getTopBorderHeight()I

    move-result v4

    sub-int v2, v3, v4

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    :cond_0
    if-gez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomBoundary()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    :cond_4
    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v2, 0x0

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->layoutChildren()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-gez v4, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_2
    sparse-switch p1, :sswitch_data_1

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumGridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->resurrectSelection()Z

    move v2, v3

    goto :goto_0

    :sswitch_1
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumGridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_2
    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumGridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->keyPressed()V

    :cond_7
    move v2, v3

    goto :goto_0

    :sswitch_6
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_a
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/opensense/widget/AlbumAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/opensense/widget/AlbumAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 9

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBottom:I

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomBoundary()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomBorderHeight()I

    move-result v8

    sub-int v1, v7, v8

    sub-int v0, v1, v4

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lez v0, :cond_3

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    :cond_0
    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-lez v7, :cond_3

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getTopBoundary()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getTopBorderHeight()I

    move-result v9

    add-int v6, v8, v9

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBottom:I

    iget v9, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomBorderHeight()I

    move-result v9

    sub-int v0, v8, v9

    sub-int v7, v2, v6

    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    if-lez v7, :cond_3

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    :cond_0
    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    iget-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    :cond_2
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private determineColumns(I)V
    .locals 7

    const/4 v6, 0x1

    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedHorizontalSpacing:I

    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedColumnWidth:I

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedNumColumns:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    if-lez v0, :cond_1

    add-int v4, p1, v1

    add-int v5, v0, v1

    div-int/2addr v4, v5

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    :goto_0
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    if-gtz v4, :cond_0

    iput v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    :cond_0
    packed-switch v3, :pswitch_data_0

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget v5, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    packed-switch v3, :pswitch_data_1

    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x2

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedNumColumns:I

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_1
    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    div-int v4, v2, v4

    add-int/2addr v4, v0

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_2
    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    if-le v4, v6, :cond_3

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int/lit8 v4, v4, -0x1

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_3
    add-int v4, v1, v2

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_3
    iput v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    if-le v4, v6, :cond_4

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int/lit8 v4, v4, 0x1

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_4
    add-int v4, v1, v2

    iput v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBottom:I

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    :goto_0
    if-ge p2, v0, :cond_2

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-ge p1, v3, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/htc/opensense/widget/AlbumGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    :cond_1
    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int/2addr p1, v3

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    iget v9, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    iget v11, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    const/4 v6, -0x1

    iget-boolean v12, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    rem-int v12, v9, v4

    sub-int v7, v9, v12

    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Lcom/htc/opensense/widget/AlbumGridView;->getTopSelectionPixel(III)I

    move-result v10

    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    iget-boolean v12, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/htc/opensense/widget/AlbumGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    iput v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    if-nez v5, :cond_2

    :goto_2
    return-object v8

    :cond_0
    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_0

    :cond_1
    move v12, v7

    goto :goto_1

    :cond_2
    invoke-direct {p0, v5, v10, v1}, Lcom/htc/opensense/widget/AlbumGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    invoke-direct {p0, v5, v10, v1}, Lcom/htc/opensense/widget/AlbumGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    iget-boolean v12, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_3

    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    goto :goto_2

    :cond_3
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->reconcileSelectedPosition()I

    move-result v10

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    iget v12, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    const/4 v7, -0x1

    iget-boolean v13, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    rem-int v13, v10, v4

    sub-int v8, v10, v13

    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Lcom/htc/opensense/widget/AlbumGridView;->getTopSelectionPixel(III)I

    move-result v11

    iget-boolean v13, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Lcom/htc/opensense/widget/AlbumGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    if-nez v6, :cond_2

    :goto_2
    return-object v9

    :cond_0
    iget v13, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    iget v13, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_0

    :cond_1
    move v13, v8

    goto :goto_1

    :cond_2
    iget-boolean v13, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_3

    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->pinToBottom(I)V

    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    goto :goto_2

    :cond_3
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p1}, Lcom/htc/opensense/widget/AlbumGridView;->pinToTop(I)V

    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12

    iget v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    const/4 v4, -0x1

    iget-boolean v10, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    rem-int v10, p1, v6

    sub-int v5, p1, v10

    :goto_0
    iget-boolean v10, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/htc/opensense/widget/AlbumGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    iput v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget-object v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    iget v9, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v7, :cond_0

    iget-boolean v10, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_3

    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v6, v9, v2}, Lcom/htc/opensense/widget/AlbumGridView;->correctTooHigh(III)V

    :cond_0
    :goto_2
    if-eqz v8, :cond_4

    :goto_3
    return-object v8

    :cond_1
    iget v10, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    iget v10, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :cond_2
    move v10, v5

    goto :goto_1

    :cond_3
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v6, v9, v2}, Lcom/htc/opensense/widget/AlbumGridView;->correctTooLow(III)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    move-object v8, v0

    goto :goto_3

    :cond_5
    move-object v8, v1

    goto :goto_3
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    invoke-direct {p0, p1, p2, v5}, Lcom/htc/opensense/widget/AlbumGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    :cond_1
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    :cond_3
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3

    move v0, p1

    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    sub-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1

    move v0, p1

    if-lez p3, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    iget-boolean v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    iget v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    iget v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    sparse-switch p2, :sswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    iget v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    :sswitch_0
    if-ne p1, v3, :cond_2

    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    goto :goto_1

    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

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

    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumGridView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense/widget/AlbumGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    :cond_0
    return-object v1
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 15

    iget v8, p0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    iget v10, p0, Lcom/htc/opensense/widget/AlbumGridView;->mHorizontalSpacing:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    move v0, v10

    :goto_0
    add-int v4, v2, v0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int v0, v0, p1

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_0
    :goto_1
    const/4 v14, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->shouldShowSelector()Z

    move-result v9

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->touchModeDrawsInPressedState()Z

    move-result v11

    iget v13, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    move/from16 v1, p1

    :goto_2
    if-ge v1, v12, :cond_8

    if-ne v1, v13, :cond_6

    const/4 v5, 0x1

    :goto_3
    if-eqz p3, :cond_7

    const/4 v6, -0x1

    :goto_4
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense/widget/AlbumGridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    add-int/2addr v4, v8

    add-int/lit8 v0, v12, -0x1

    if-ge v1, v0, :cond_1

    add-int/2addr v4, v10

    :cond_1
    if-eqz v5, :cond_3

    if-nez v9, :cond_2

    if-eqz v11, :cond_3

    :cond_2
    move-object v14, v7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    add-int/lit8 v12, p1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v0, v12, p1

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    sub-int v2, v12, p1

    sub-int/2addr v0, v2

    add-int v2, v8, v10

    mul-int/2addr v0, v2

    add-int/2addr v4, v0

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    sub-int v6, v1, p1

    goto :goto_4

    :cond_8
    if-eqz v14, :cond_9

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    :cond_9
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    rem-int v19, v16, v7

    sub-int v14, v16, v19

    :goto_0
    sub-int v12, v14, v9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Lcom/htc/opensense/widget/AlbumGridView;->getTopSelectionPixel(III)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

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

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/htc/opensense/widget/AlbumGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    :goto_3
    if-nez v11, :cond_9

    :goto_4
    return-object v15

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_1

    :cond_2
    move/from16 v19, v14

    goto :goto_2

    :cond_3
    if-gez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

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

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/htc/opensense/widget/AlbumGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    :cond_5
    move/from16 v19, v14

    goto :goto_6

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v10, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

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

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceView:Landroid/view/View;

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    :cond_8
    move/from16 v19, v14

    goto :goto_8

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    goto/16 :goto_4

    :cond_a
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

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

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v1

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v0, p1, v1

    if-gez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->offsetChildrenTopAndBottom(I)V

    goto :goto_0
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 18

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumGridView;->shouldShowSelector()Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v10, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v15

    if-eq v10, v15, :cond_6

    const/4 v13, 0x1

    :goto_2
    if-eqz p7, :cond_2

    if-nez v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_2
    const/4 v11, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    if-nez v12, :cond_3

    new-instance v12, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v15, v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;-><init>(III)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v12, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;->viewType:I

    if-eqz p7, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/opensense/widget/AlbumGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    if-eqz v13, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setSelected(Z)V

    if-eqz v10, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestFocus()Z

    :cond_4
    if-eqz v11, :cond_9

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    const/16 v16, 0x0

    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    const/high16 v16, 0x4000

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    const/16 v16, 0x0

    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v4}, Landroid/view/View;->measure(II)V

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-eqz p4, :cond_a

    move/from16 v7, p3

    :goto_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/widget/AlbumGridView;->mGravity:I

    and-int/lit8 v15, v15, 0x7

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    move/from16 v5, p5

    :goto_7
    if-eqz v11, :cond_b

    add-int v6, v5, v14

    add-int v3, v7, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v6, v3}, Landroid/view/View;->layout(IIII)V

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCachingStarted:Z

    if-eqz v15, :cond_0

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v12, v15}, Lcom/htc/opensense/widget/AlbumGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_4

    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/htc/opensense/widget/AlbumGridView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_5

    :cond_a
    sub-int v7, p3, v9

    goto :goto_6

    :pswitch_1
    move/from16 v5, p5

    goto :goto_7

    :pswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    sub-int/2addr v15, v14

    div-int/lit8 v15, v15, 0x2

    add-int v5, p5, v15

    goto :goto_7

    :pswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    add-int v15, v15, p5

    sub-int v5, v15, v14

    goto :goto_7

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v15, v7, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_8

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

    const/4 v9, 0x0

    const/4 v8, 0x6

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    const/4 v2, 0x0

    iget-boolean v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_2

    div-int v6, v4, v3

    mul-int v5, v6, v3

    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V

    :cond_1
    return v2

    :cond_2
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :sswitch_0
    if-lez v5, :cond_0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    add-int v6, v4, v3

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    if-le v4, v5, :cond_0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    if-ge v4, v0, :cond_0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

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

    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    iget-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

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

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    mul-int/lit8 v2, v5, 0x64

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 7

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    div-int v3, v5, v6

    mul-int/lit8 v5, v3, 0x64

    mul-int/lit8 v6, v1, 0x64

    div-int/2addr v6, v0

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_0
    return v4
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method fillGap(Z)V
    .locals 7

    iget v1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    iget v4, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_2

    if-lez v0, :cond_1

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int v3, v5, v4

    :goto_0
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int v2, v5, v0

    iget-boolean v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_0

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v2, v5

    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillDown(II)Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lcom/htc/opensense/widget/AlbumGridView;->correctTooHigh(III)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getListPaddingTop()I

    move-result v3

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v3, v5, v4

    :goto_2
    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget-boolean v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v5, :cond_4

    sub-int/2addr v2, v1

    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lcom/htc/opensense/widget/AlbumGridView;->correctTooLow(III)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getListPaddingBottom()I

    move-result v6

    sub-int v3, v5, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    iget v2, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    :goto_1
    return v3

    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/16 v1, 0x21

    if-ne p1, v1, :cond_1

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getNumColumns()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 15

    const/4 v14, 0x0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invalidate()V

    iget-object v12, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v12, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->resetList()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iput-boolean v14, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v12, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getTopBorderHeight()I

    move-result v13

    add-int v3, v12, v13

    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBottom:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mTop:I

    sub-int/2addr v12, v13

    iget-object v13, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomBorderHeight()I

    move-result v13

    sub-int v2, v12, v13

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v1

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget v12, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    packed-switch v12, :pswitch_data_0

    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v6, v12, v13

    if-ltz v6, :cond_3

    if-ge v6, v1, :cond_3

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    :cond_3
    if-lez v1, :cond_4

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->handleDataChanged()V

    :cond_5
    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-nez v12, :cond_6

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->resetList()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    iput-boolean v14, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    goto :goto_0

    :pswitch_1
    :try_start_2
    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v6, v12, v13

    if-ltz v6, :cond_4

    if-ge v6, v1, :cond_4

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    goto :goto_1

    :pswitch_2
    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    if-ltz v12, :cond_4

    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    sub-int v5, v12, v13

    goto :goto_1

    :cond_6
    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v12}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->detachAllViewsFromParent()V

    iget v12, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    packed-switch v12, :pswitch_data_1

    if-nez v1, :cond_b

    iget-boolean v12, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_a

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectedPositionInt(I)V

    invoke-direct {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v11

    :goto_2
    if-eqz v11, :cond_10

    invoke-virtual {p0, v11}, Lcom/htc/opensense/widget/AlbumGridView;->positionSelector(Landroid/view/View;)V

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    :goto_3
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v12}, Lcom/htc/opensense/widget/AlbumGridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->updateScrollIndicators()V

    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-lez v12, :cond_7

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->checkSelectionChanged()V

    :cond_7
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    iput-boolean v14, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    :pswitch_3
    if-eqz v8, :cond_8

    :try_start_3
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-direct {p0, v12, v3, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v11

    goto :goto_2

    :cond_8
    invoke-direct {p0, v3, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillSelection(II)Landroid/view/View;

    move-result-object v11

    goto :goto_2

    :pswitch_4
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-direct {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v11

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v12

    if-nez v0, :cond_9

    iput-boolean v14, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    :cond_9
    throw v12

    :pswitch_5
    :try_start_4
    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    invoke-direct {p0, v12, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillUp(II)Landroid/view/View;

    move-result-object v11

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumGridView;->adjustViewsUpOrDown()V

    goto :goto_2

    :pswitch_6
    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSpecificTop:I

    invoke-direct {p0, v12, v13}, Lcom/htc/opensense/widget/AlbumGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v11

    goto :goto_2

    :pswitch_7
    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSpecificTop:I

    invoke-direct {p0, v12, v13}, Lcom/htc/opensense/widget/AlbumGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v11

    goto :goto_2

    :pswitch_8
    invoke-direct {p0, v5, v3, v2}, Lcom/htc/opensense/widget/AlbumGridView;->moveSelection(III)Landroid/view/View;

    move-result-object v11

    goto :goto_2

    :cond_a
    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v7, v12, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectedPositionInt(I)V

    invoke-direct {p0, v7, v2}, Lcom/htc/opensense/widget/AlbumGridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v11

    goto :goto_2

    :cond_b
    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-ltz v12, :cond_d

    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-ge v12, v13, :cond_d

    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-nez v10, :cond_c

    :goto_4
    invoke-direct {p0, v12, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v11

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_4

    :cond_d
    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget v13, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-ge v12, v13, :cond_f

    iget v12, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-nez v9, :cond_e

    :goto_5
    invoke-direct {p0, v12, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v11

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_5

    :cond_f
    const/4 v12, 0x0

    invoke-direct {p0, v12, v3}, Lcom/htc/opensense/widget/AlbumGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v11

    goto/16 :goto_2

    :cond_10
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    iget-object v12, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

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

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    :cond_1
    :goto_0
    return p1

    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollX:I

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumGridView;->mTempRect:Landroid/graphics/Rect;

    const v4, 0x7fffffff

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-direct {p0, v3, p2}, Lcom/htc/opensense/widget/AlbumGridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v5, v6}, Lcom/htc/opensense/widget/AlbumGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v6, p2}, Lcom/htc/opensense/widget/AlbumGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    if-ge v2, v4, :cond_0

    move v4, v2

    move v1, v3

    goto :goto_1

    :cond_2
    if-ltz v1, :cond_3

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumGridView;->setSelection(I)V

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/opensense/widget/AlbumGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/opensense/widget/AlbumGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 20

    invoke-super/range {p0 .. p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    move/from16 v17, v0

    if-lez v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v17, v18

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumGridView;->getVerticalScrollbarWidth()I

    move-result v17

    add-int v16, v16, v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/opensense/widget/AlbumGridView;->determineColumns(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-lez v8, :cond_2

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->obtainView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    if-nez v14, :cond_1

    new-instance v14, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;->viewType:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v18, 0x0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/htc/opensense/widget/AlbumGridView;->getChildMeasureSpec(III)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mColumnWidth:I

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v18, 0x0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/htc/opensense/widget/AlbumGridView;->getChildMeasureSpec(III)I

    move-result v7

    invoke-virtual {v3, v7, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    :cond_2
    if-nez v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

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

    :cond_3
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v9, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v13, v17, v18

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/AlbumGridView;->mNumColumns:I

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_5

    add-int/2addr v13, v4

    add-int v17, v11, v12

    move/from16 v0, v17

    if-ge v0, v8, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    move/from16 v17, v0

    add-int v13, v13, v17

    :cond_4
    if-lt v13, v10, :cond_9

    move v13, v10

    :cond_5
    move v10, v13

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/htc/opensense/widget/AlbumGridView;->setMeasuredDimension(II)V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mWidthMeasureSpec:I

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v17, v18

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v17

    goto/16 :goto_1

    :cond_9
    add-int/2addr v11, v12

    goto :goto_2
.end method

.method pageScroll(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->invokeOnItemScrollListener()V

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

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

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->fillGap(Z)V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumGridView;->setAdapter(Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataSetObserver:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->resetList()V

    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedRowId:J

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldItemCount:I

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    iput-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->checkFocus()V

    new-instance v1, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/opensense/widget/AlbumAdapterView;)V

    iput-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataSetObserver:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataSetObserver:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/htc/opensense/widget/AlbumGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumGridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->checkSelectionChanged()V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayout()V

    return-void

    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/htc/opensense/widget/AlbumGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->checkFocus()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedColumnWidth:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mGravity:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedHorizontalSpacing:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mRequestedNumColumns:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumGridView;->setNextSelectedPositionInt(I)V

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayout()V

    return-void

    :cond_0
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumGridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->layoutChildren()V

    return-void
.end method

.method public setStretchMode(I)V
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mStretchMode:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/opensense/widget/AlbumGridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method
