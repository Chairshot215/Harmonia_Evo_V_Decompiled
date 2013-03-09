.class public abstract Lcom/htc/view/table/TableColleague;
.super Ljava/lang/Object;
.source "TableColleague.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/view/table/TableColleague$OrnMeasureSpec;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TableColleague"

.field private static final localLOGV:Z


# instance fields
.field protected mCloseBouncing:Z

.field protected mGravity:I

.field protected mHorizontalSpacing:I

.field protected mMultiStop:Z

.field protected mNumColumnRows:I

.field protected mOrnWidth:I

.field protected mReferenceView:Landroid/view/View;

.field protected mReferenceViewInSelectedRow:Landroid/view/View;

.field protected mRepeatEnable:Z

.field protected mScrollDownRight:Landroid/view/View;

.field protected mScrollUpLeft:Landroid/view/View;

.field mStopExcept:I

.field mStops:[I

.field protected mVerticalSpacing:I

.field protected tableView:Lcom/htc/view/table/TableView;


# direct methods
.method public constructor <init>(Lcom/htc/view/table/TableView;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    iput v1, p0, Lcom/htc/view/table/TableColleague;->mHorizontalSpacing:I

    iput v1, p0, Lcom/htc/view/table/TableColleague;->mVerticalSpacing:I

    iput-object v2, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    iput-object v2, p0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/TableColleague;->mCloseBouncing:Z

    iput-boolean v1, p0, Lcom/htc/view/table/TableColleague;->mRepeatEnable:Z

    iput-boolean v1, p0, Lcom/htc/view/table/TableColleague;->mMultiStop:Z

    iput-object v2, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    iput v3, p0, Lcom/htc/view/table/TableColleague;->mStopExcept:I

    iput-object p1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    return-void
.end method

.method private determineColumnRows(I)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnRequestedWidthSpacing()I

    move-result v0

    iget-object v4, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v3, v4, Lcom/htc/view/table/TableView;->mStretchMode:I

    iget-object v4, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v4, Lcom/htc/view/table/TableView;->mRequestedOrnWidth:I

    iget-object v4, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v4, v4, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    if-lez v1, :cond_1

    add-int v4, p1, v0

    add-int v5, v1, v0

    div-int/2addr v4, v5

    iput v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    :goto_0
    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    if-gtz v4, :cond_0

    iput v6, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    :cond_0
    packed-switch v3, :pswitch_data_0

    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    mul-int/2addr v4, v1

    sub-int v4, p1, v4

    iget v5, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v0

    sub-int v2, v4, v5

    packed-switch v3, :pswitch_data_1

    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x2

    iput v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v4, v4, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    iput v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableColleague;->setOrnLeftRightSpacing(I)V

    goto :goto_1

    :pswitch_1
    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableColleague;->setOrnLeftRightSpacing(I)V

    goto :goto_1

    :pswitch_2
    iput v1, p0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    if-le v4, v6, :cond_3

    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/lit8 v4, v4, -0x1

    div-int v4, v2, v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableColleague;->setOrnLeftRightSpacing(I)V

    goto :goto_1

    :cond_3
    add-int v4, v0, v2

    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableColleague;->setOrnLeftRightSpacing(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getBottomSelectionPixel(IIIII)I
    .locals 3

    move v0, p0

    add-int v1, p3, p2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, p4, -0x1

    if-ge v1, v2, :cond_0

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public static getTopSelectionPixel(III)I
    .locals 1

    move v0, p0

    if-lez p2, :cond_0

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10

    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/view/table/TableColleague;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    :goto_0
    return-object v9

    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/view/table/TableColleague;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    goto :goto_0
.end method

.method private pinToBottom(I)V
    .locals 5

    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v1

    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v3, v3, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v4, v4, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, v2, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v0, p1, v1

    if-gez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v3

    if-le v3, p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    sub-int v1, v3, p2

    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v3

    sub-int v2, v3, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    neg-int v3, v0

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method protected adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    if-ge v3, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    sub-int v1, p2, v3

    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v3

    sub-int v2, p3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method public abstract detachOffScreenChildren(Z)V
.end method

.method protected fillDown(II)Landroid/view/View;
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v0

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v4

    sub-int v5, v0, v4

    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v6, v6, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v6

    sub-int v1, v5, v6

    :goto_0
    if-ge p2, v1, :cond_1

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v5, v5, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-ge p1, v5, :cond_1

    invoke-virtual {p0, p1, p2, v8}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v2, v3

    :cond_0
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v6

    add-int p2, v5, v6

    iget v5, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/2addr p1, v5

    goto :goto_0

    :cond_1
    iget-boolean v5, p0, Lcom/htc/view/table/TableColleague;->mRepeatEnable:Z

    if-eqz v5, :cond_3

    if-ge p2, v1, :cond_3

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v5, v5, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-lt p1, v5, :cond_3

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v6, v5, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v7, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v7, v7, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v5, v5, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    sub-int/2addr p1, v5

    :goto_1
    if-ge p2, v1, :cond_3

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v5, v5, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-ge p1, v5, :cond_3

    invoke-virtual {p0, p1, p2, v8}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v2, v3

    :cond_2
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v6

    add-int p2, v5, v6

    iget v5, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/2addr p1, v5

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method protected fillFromBottom(II)Landroid/view/View;
    .locals 3

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    invoke-virtual {p0, p1, p2}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected fillFromSelection(III)Landroid/view/View;
    .locals 14

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v2

    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v10, v12, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v5

    const/4 v7, -0x1

    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v12, v12, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    rem-int v12, v10, v4

    sub-int v8, v10, v12

    :goto_0
    move/from16 v0, p2

    invoke-static {v0, v2, v8}, Lcom/htc/view/table/TableColleague;->getTopSelectionPixel(III)I

    move-result v11

    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v12, v12, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v0, p3

    invoke-static {v0, v2, v4, v8, v12}, Lcom/htc/view/table/TableColleague;->getBottomSelectionPixel(IIIII)I

    move-result v1

    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v12, v12, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v7

    :goto_1
    const/4 v13, 0x1

    invoke-virtual {p0, v12, p1, v13}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v9

    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v8, v12, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0, v6, v11, v1}, Lcom/htc/view/table/TableColleague;->adjustForTopFadingEdge(Landroid/view/View;II)V

    invoke-virtual {p0, v6, v11, v1}, Lcom/htc/view/table/TableColleague;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v12, v12, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    sub-int v12, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-virtual {p0, v12, v13}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    add-int v12, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {p0, v12, v13}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    :goto_2
    return-object v9

    :cond_0
    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v12, v12, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v10

    iget-object v12, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v12, v12, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v7, v12, v13

    const/4 v12, 0x0

    sub-int v13, v7, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_0

    :cond_1
    move v12, v8

    goto :goto_1

    :cond_2
    add-int v12, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {p0, v12, v13}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-virtual {p0, v12, v13}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method protected fillFromTop(I)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, v2, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v1, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, v2, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v2, v2, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget v3, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v0, p1}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected fillGap(Z)V
    .locals 7

    iget v1, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v2

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_2

    if-lez v0, :cond_1

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v5

    add-int v4, v5, v2

    :goto_0
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v5, v5, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int v3, v5, v0

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v5, v5, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v5, :cond_0

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v3, v5

    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v5, v5, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v4

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v5

    sub-int v4, v5, v2

    :goto_2
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v3, v5, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v5, v5, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v5, :cond_4

    sub-int/2addr v3, v1

    :goto_3
    invoke-virtual {p0, v3, v4}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->getOrnHeight(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v6, v6, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v6

    sub-int v4, v5, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3
.end method

.method protected fillSelection(II)Landroid/view/View;
    .locals 15

    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v13}, Lcom/htc/view/table/TableView;->reconcileSelectedPosition()I

    move-result v11

    iget v4, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v6

    const/4 v8, -0x1

    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v13, v13, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    rem-int v13, v11, v4

    sub-int v9, v11, v13

    :goto_0
    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v2

    move/from16 v0, p1

    invoke-static {v0, v2, v9}, Lcom/htc/view/table/TableColleague;->getTopSelectionPixel(III)I

    move-result v12

    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v13, v13, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v8

    :goto_1
    const/4 v14, 0x1

    invoke-virtual {p0, v13, v12, v14}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v10

    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v9, v13, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v7, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v13, v13, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v13, :cond_2

    add-int v13, v9, v4

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v14

    add-int/2addr v14, v6

    invoke-virtual {p0, v13, v14}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/view/table/TableColleague;->pinToBottom(I)V

    sub-int v13, v9, v4

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v14

    sub-int/2addr v14, v6

    invoke-virtual {p0, v13, v14}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    :goto_2
    return-object v10

    :cond_0
    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v13, v13, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v11

    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v13, v13, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v8, v13, v14

    const/4 v13, 0x0

    sub-int v14, v8, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_0

    :cond_1
    move v13, v9

    goto :goto_1

    :cond_2
    iget-object v13, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v13, v13, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v0, p2

    invoke-static {v0, v2, v4, v9, v13}, Lcom/htc/view/table/TableColleague;->getBottomSelectionPixel(IIIII)I

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    add-int/lit8 v13, v9, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v6

    invoke-virtual {p0, v13, v14}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p1}, Lcom/htc/view/table/TableColleague;->pinToTop(I)V

    add-int v13, v8, v4

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v6

    invoke-virtual {p0, v13, v14}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    goto :goto_2
.end method

.method protected fillSpecific(II)Landroid/view/View;
    .locals 11

    iget v5, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    const/4 v3, -0x1

    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v9, v9, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v9, :cond_0

    rem-int v9, p1, v5

    sub-int v4, p1, v9

    :goto_0
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v9, v9, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v9, :cond_1

    move v9, v3

    :goto_1
    const/4 v10, 0x1

    invoke-virtual {p0, v9, p2, v10}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v4, v9, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v7, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v6

    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v9, v9, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v9, :cond_2

    sub-int v9, v4, v5

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {p0, v9, v10}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    move-result-object v0

    add-int v9, v4, v5

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {p0, v9, v10}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    move-result-object v1

    :goto_2
    if-eqz v8, :cond_3

    :goto_3
    return-object v8

    :cond_0
    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v9, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    sub-int v2, v9, p1

    iget-object v9, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v9, v9, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    rem-int v10, v2, v5

    sub-int v10, v2, v10

    sub-int v3, v9, v10

    const/4 v9, 0x0

    sub-int v10, v3, v5

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    :cond_1
    move v9, v4

    goto :goto_1

    :cond_2
    add-int v9, v3, v5

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {p0, v9, v10}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {p0, v9, v10}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    move-object v8, v0

    goto :goto_3

    :cond_4
    move-object v8, v1

    goto :goto_3
.end method

.method protected fillUp(II)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v3, v3, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v0

    :goto_0
    if-le p2, v0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1, p2, v5}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v4

    sub-int p2, v3, v4

    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput p1, v3, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget v3, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/htc/view/table/TableColleague;->mRepeatEnable:Z

    if-eqz v3, :cond_3

    if-le p2, v0, :cond_3

    if-gez p1, :cond_3

    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v3, v3, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/2addr p1, v3

    :goto_1
    if-le p2, v0, :cond_3

    if-ltz p1, :cond_3

    invoke-virtual {p0, p1, p2, v5}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_2
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v4

    sub-int p2, v3, v4

    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput p1, v3, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget v3, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    sub-int/2addr p1, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v3, v3, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    :cond_4
    return-object v1
.end method

.method public abstract findAndSetSelecionInt(IIII)Z
.end method

.method public abstract fling(Lcom/htc/view/table/AbstractTableView$FlingRunnable;FF)V
.end method

.method public abstract getCenterOfTable()I
.end method

.method public abstract getCenterOfView(Landroid/view/View;)I
.end method

.method public abstract getDefaultChildLayoutParams()Lcom/htc/view/table/AbstractTableView$LayoutParams;
.end method

.method public abstract getFadingEdgeLength()I
.end method

.method public abstract getLimitedMotionScrollAmount(ZI)I
.end method

.method public abstract getOrnBottom(Landroid/graphics/Rect;)I
.end method

.method public abstract getOrnBottom(Landroid/view/View;)I
.end method

.method public abstract getOrnGravity()I
.end method

.method public abstract getOrnHeight(Landroid/view/View;)I
.end method

.method public abstract getOrnHeight(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I
.end method

.method public abstract getOrnLeft(Landroid/graphics/Rect;)I
.end method

.method public abstract getOrnLeft(Landroid/view/View;)I
.end method

.method public abstract getOrnLeftRightSpacing()I
.end method

.method public abstract getOrnMeasureSpec(II)Lcom/htc/view/table/TableColleague$OrnMeasureSpec;
.end method

.method public abstract getOrnMeasuredHeight(Landroid/view/View;)I
.end method

.method public abstract getOrnMeasuredWidth(Landroid/view/View;)I
.end method

.method public abstract getOrnRequestedWidthSpacing()I
.end method

.method public abstract getOrnRight(Landroid/graphics/Rect;)I
.end method

.method public abstract getOrnRight(Landroid/view/View;)I
.end method

.method public abstract getOrnTop(Landroid/graphics/Rect;)I
.end method

.method public abstract getOrnTop(Landroid/view/View;)I
.end method

.method public abstract getOrnTopBottomSpacing()I
.end method

.method public abstract getOrnWidth(Landroid/view/View;)I
.end method

.method public abstract getOrnWidth(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I
.end method

.method public abstract getScrollbarWidth()I
.end method

.method public abstract layoutView(Landroid/view/View;IIII)V
.end method

.method protected makeRowColumn(IIZ)Landroid/view/View;
    .locals 14

    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableColleague;->getOrnLeft(Landroid/graphics/Rect;)I

    move-result v4

    iget v11, p0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/2addr v0, p1

    iget-object v2, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v2}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_0
    const/4 v13, 0x0

    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->shouldShowSelector()Z

    move-result v8

    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/view/table/TableView;->touchModeDrawsInPressedState()Z

    move-result v9

    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v12, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    move v1, p1

    :goto_1
    if-ge v1, v10, :cond_6

    if-ne v1, v12, :cond_4

    const/4 v5, 0x1

    :goto_2
    if-eqz p3, :cond_5

    const/4 v6, -0x1

    :goto_3
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/view/table/TableColleague;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    add-int/2addr v4, v11

    add-int/lit8 v0, v10, -0x1

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnLeftRightSpacing()I

    move-result v0

    add-int/2addr v4, v0

    :cond_0
    if-eqz v5, :cond_2

    if-nez v8, :cond_1

    if-eqz v9, :cond_2

    :cond_1
    move-object v13, v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v10, p1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    sub-int v6, v1, p1

    goto :goto_3

    :cond_6
    if-eqz v13, :cond_7

    iget-object v0, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    :cond_7
    return-object v13
.end method

.method public abstract measureView(Landroid/view/View;II)V
.end method

.method protected moveSelection(III)Landroid/view/View;
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v11

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    sub-int v19, v17, p1

    sub-int v20, v17, p1

    rem-int v20, v20, v7

    sub-int v10, v19, v20

    rem-int v19, v17, v7

    sub-int v15, v17, v19

    :goto_0
    sub-int v13, v15, v10

    move/from16 v0, p2

    invoke-static {v0, v5, v15}, Lcom/htc/view/table/TableColleague;->getTopSelectionPixel(III)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v5, v7, v15, v1}, Lcom/htc/view/table/TableColleague;->getBottomSelectionPixel(IIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v15, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v14

    :goto_2
    add-int v20, v8, v11

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1, v4}, Lcom/htc/view/table/TableColleague;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    sub-int v19, v15, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v20

    sub-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    add-int v19, v15, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    :goto_4
    return-object v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v14, v19, v20

    const/16 v19, 0x0

    sub-int v20, v14, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v17, p1

    sub-int v6, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v10, v19, v20

    const/16 v19, 0x0

    sub-int v20, v10, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v8

    goto/16 :goto_1

    :cond_2
    move/from16 v19, v15

    goto/16 :goto_2

    :cond_3
    if-gez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v14

    :goto_6
    sub-int v20, v9, v11

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1, v4}, Lcom/htc/view/table/TableColleague;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v9

    goto :goto_5

    :cond_5
    move/from16 v19, v15

    goto :goto_6

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v9, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v14

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v9, v2}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v9

    goto :goto_7

    :cond_8
    move/from16 v19, v15

    goto :goto_8

    :cond_9
    add-int v19, v14, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    add-int/lit8 v19, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v20

    sub-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method protected moveSelectionCenter(IIIII)Landroid/view/View;
    .locals 10

    iget v1, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v2

    const/4 v4, -0x1

    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v8, v8, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v8, :cond_0

    rem-int v8, p1, v1

    sub-int v5, p1, v8

    :goto_0
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v8, v8, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v8, v8, Lcom/htc/view/table/TableView;->mTableViewOrnHeight:I

    mul-int/lit8 v8, v8, 0x32

    mul-int v9, p4, p5

    sub-int/2addr v8, v9

    div-int/lit8 v7, v8, 0x64

    :goto_1
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iput v5, v8, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    const/4 v8, 0x1

    invoke-virtual {p0, v5, v7, v8}, Lcom/htc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v6

    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    sub-int v8, v5, v1

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {p0, v8, v9}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    add-int v8, v5, v1

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {p0, v8, v9}, Lcom/htc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    return-object v6

    :cond_0
    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v8, v8, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    sub-int v0, v8, p1

    iget-object v8, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget v8, v8, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    rem-int v9, v0, v1

    sub-int v9, v0, v9

    sub-int v4, v8, v9

    const/4 v8, 0x0

    sub-int v9, v4, v1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :cond_1
    sub-int v8, p3, p2

    sub-int/2addr v8, p4

    div-int/lit8 v7, v8, 0x2

    goto :goto_1
.end method

.method public abstract offsetLeftAndRight(Landroid/view/View;I)V
.end method

.method public abstract offsetOrnChildrenTopAndBottom(I)V
.end method

.method public abstract offsetTopAndBottom(Landroid/view/View;I)V
.end method

.method protected onMeasure(II)V
    .locals 23

    invoke-virtual/range {p0 .. p2}, Lcom/htc/view/table/TableColleague;->getOrnMeasureSpec(II)Lcom/htc/view/table/TableColleague$OrnMeasureSpec;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnLeft(Landroid/graphics/Rect;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnRight(Landroid/graphics/Rect;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v14

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMode:I

    move/from16 v20, v0

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    move/from16 v20, v0

    add-int v20, v20, v15

    add-int v20, v20, v16

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    :goto_0
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getScrollbarWidth()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    :cond_0
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    move/from16 v20, v0

    sub-int v20, v20, v15

    sub-int v6, v20, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/view/table/TableColleague;->determineColumnRows(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_8

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, v21

    iput v0, v1, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v9, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-lez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/view/table/TableView;->obtainView(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    if-nez v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getDefaultChildLayoutParams()Lcom/htc/view/table/AbstractTableView$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iput v8, v11, Lcom/htc/view/table/AbstractTableView$LayoutParams;->viewType:I

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMeasureSpec:I

    move/from16 v20, v0

    add-int v21, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/view/table/TableColleague;->getOrnWidth(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I

    move-result v22

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/view/table/TableColleague;->getOrnHeight(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I

    move-result v12

    if-lez v12, :cond_9

    const/high16 v20, 0x4000

    move/from16 v0, v20

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7, v5}, Lcom/htc/view/table/TableColleague;->measureView(Landroid/view/View;II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/view/table/TableColleague;->getOrnMeasuredHeight(Landroid/view/View;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_2
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMode:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    add-int v20, v17, v14

    add-int v20, v20, v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMode:I

    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMode:I

    move/from16 v20, v0

    const/high16 v21, -0x8000

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    add-int v18, v17, v14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_5

    add-int v18, v18, v4

    add-int v20, v10, v13

    move/from16 v0, v20

    if-ge v0, v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v20

    add-int v18, v18, v20

    :cond_4
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_a

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    move/from16 v18, v0

    :cond_5
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    :cond_6
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->setTableViewMeasuredDimension(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/view/table/AbstractTableView;->mWidthHeightMeasureSpec:I

    return-void

    :cond_7
    add-int v20, v15, v16

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    goto/16 :goto_1

    :cond_9
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto/16 :goto_2

    :cond_a
    add-int/2addr v10, v13

    goto :goto_3
.end method

.method public abstract scrollAmount(Lcom/htc/view/table/AbstractTableView$FlingRunnable;I)V
.end method

.method public abstract scrollIntoSlots(Lcom/htc/view/table/AbstractTableView$FlingRunnable;)V
.end method

.method public abstract scrollWithConstrain(IIZ)V
.end method

.method public abstract setCloseBouncing(Z)V
.end method

.method public setMultiStop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/view/table/TableColleague;->mMultiStop:Z

    return-void
.end method

.method public setMultiStopDistance(I)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    iput-boolean v3, p0, Lcom/htc/view/table/TableColleague;->mMultiStop:Z

    const/4 v5, 0x5

    if-lt p1, v5, :cond_0

    const/16 v5, 0x1e

    if-le p1, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v5}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v5

    div-int v0, v5, p1

    if-lt v0, v4, :cond_0

    new-array v3, v0, [I

    iput-object v3, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    add-int/lit8 v2, p1, -0x1

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v3}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/htc/view/table/TableColleague;->mStops:[I

    aput v2, v3, v1

    add-int/2addr v2, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v4, p0, Lcom/htc/view/table/TableColleague;->mMultiStop:Z

    move v3, v4

    goto :goto_0
.end method

.method protected setNumColumnRows(I)V
    .locals 0

    iput p1, p0, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    return-void
.end method

.method public abstract setOrnLeftRightSpacing(I)V
.end method

.method public abstract setOrnTopBottomSpacing(I)V
.end method

.method public setRepeatEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/view/table/TableColleague;->mRepeatEnable:Z

    return-void
.end method

.method public setStopExcept(I)V
    .locals 0

    iput p1, p0, Lcom/htc/view/table/TableColleague;->mStopExcept:I

    return-void
.end method

.method public abstract setTableViewMeasuredDimension(II)V
.end method

.method protected setupChild(Landroid/view/View;IIZIZZI)V
    .locals 17

    if-eqz p6, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v2}, Lcom/htc/view/table/TableView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v10, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eq v10, v2, :cond_5

    const/4 v15, 0x1

    :goto_1
    if-eqz p7, :cond_0

    if-nez v15, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    const/4 v11, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    if-nez v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getDefaultChildLayoutParams()Lcom/htc/view/table/AbstractTableView$LayoutParams;

    move-result-object v14

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-object v2, v2, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v14, Lcom/htc/view/table/AbstractTableView$LayoutParams;->viewType:I

    if-eqz p7, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1, v14}, Lcom/htc/view/table/TableView;->attachViewToParent(Landroid/view/View;ILcom/htc/view/table/AbstractTableView$LayoutParams;)V

    :goto_3
    if-eqz v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setSelected(Z)V

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v2}, Lcom/htc/view/table/TableView;->requestFocus()Z

    :cond_2
    if-eqz v11, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/view/table/TableColleague;->getOrnHeight(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/view/table/TableColleague;->getOrnWidth(Lcom/htc/view/table/AbstractTableView$LayoutParams;)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v8}, Lcom/htc/view/table/TableColleague;->measureView(Landroid/view/View;II)V

    :goto_4
    invoke-virtual/range {p0 .. p1}, Lcom/htc/view/table/TableColleague;->getOrnMeasuredWidth(Landroid/view/View;)I

    move-result v13

    invoke-virtual/range {p0 .. p1}, Lcom/htc/view/table/TableColleague;->getOrnMeasuredHeight(Landroid/view/View;)I

    move-result v12

    if-eqz p4, :cond_9

    move/from16 v5, p3

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableColleague;->getOrnGravity()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move/from16 v4, p5

    :goto_6
    if-eqz v11, :cond_a

    add-int v6, v4, v13

    add-int v7, v5, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/view/table/TableColleague;->layoutView(Landroid/view/View;IIII)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    iget-boolean v2, v2, Lcom/htc/view/table/AbstractTableView;->mCachingStarted:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1, v14, v3}, Lcom/htc/view/table/TableView;->addViewInLayout(Landroid/view/View;ILcom/htc/view/table/AbstractTableView$LayoutParams;Z)V

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableColleague;->tableView:Lcom/htc/view/table/TableView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/htc/view/table/TableView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    sub-int v5, p3, v12

    goto :goto_5

    :pswitch_1
    move/from16 v4, p5

    goto :goto_6

    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    sub-int/2addr v2, v13

    div-int/lit8 v2, v2, 0x2

    add-int v4, p5, v2

    goto :goto_6

    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableColleague;->mOrnWidth:I

    add-int v2, v2, p5

    sub-int v4, v2, v13

    goto :goto_6

    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/htc/view/table/TableColleague;->getOrnLeft(Landroid/view/View;)I

    move-result v2

    sub-int v2, v4, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->offsetLeftAndRight(Landroid/view/View;I)V

    invoke-virtual/range {p0 .. p1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v2

    sub-int v2, v5, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/table/TableColleague;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_7

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

.method protected abstract trackMotionScrollOrn(II)V
.end method
