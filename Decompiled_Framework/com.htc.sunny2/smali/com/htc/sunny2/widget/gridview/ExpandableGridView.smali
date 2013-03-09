.class public Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
.super Lcom/htc/sunny2/widget/gridview/GridView;
.source "ExpandableGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;
    }
.end annotation


# static fields
.field private static final INVALID_INTEGER_SCREEN_POSITION:I = 0x7fffffff

.field private static final INVALID_SCREEN_POSITION:F = 3.4028235E38f

.field private static final TAG:Ljava/lang/String; = "ExpandableGridView"


# instance fields
.field private mExpandableMediaData:Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaData;

.field private mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

.field private mGLViewHeight:I

.field private mGLViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableMediaData:Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaData;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Lcom/htc/sunny2/view/SView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->measureChild(Lcom/htc/sunny2/view/SView;II)V

    return-void
.end method


# virtual methods
.method protected fillDown()V
    .locals 7

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    sub-int v0, v4, v5

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->parentIdx:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->parentIdx:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->height()I

    move-result v4

    sub-int/2addr v0, v4

    :cond_1
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    :goto_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mGLViewHeight:I

    neg-int v4, v4

    if-le v0, v4, :cond_3

    if-ge v3, v2, :cond_3

    if-lt v3, v2, :cond_2

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->makeItemRow(IIIZ)I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    sub-int v0, v4, v5

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public freeResource()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->recycle()V

    :cond_0
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeResource()V

    return-void
.end method

.method protected makeItemRow(IIIZ)I
    .locals 19

    const-string v5, "ExpandableGridView"

    const-string v7, "++++++++++++++++++ makeItemRow +++++++++++++++++++++++ "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ExpandableGridView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "startIdx: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    add-int/lit8 v10, p2, 0x14

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v5, v7

    add-int p2, p2, v5

    move/from16 v14, p3

    move/from16 v3, p1

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-ge v13, v5, :cond_6

    if-ge v3, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v5, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaData;

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v2, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v5, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaData;

    if-nez v2, :cond_0

    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    :cond_0
    const v5, 0x7fffffff

    const v6, 0x7fffffff

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    const-string v5, "ExpandableGridView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "expMediaData.isRequestChildViewItemExpanded():"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaData;->isRequestChildViewItemExpanded()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaData;->isRequestChildViewItemExpanded()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->parentIdx:I

    if-ne v5, v3, :cond_2

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->height()I

    move-result v11

    :cond_1
    :goto_3
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v5, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v5, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    invoke-interface {v4, v3, v5, v7}, Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaData;->getChildViewItem(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/view/SView;)Lcom/htc/sunny2/view/SView;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableMediaData:Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaData;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    if-eq v9, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableMediaData:Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaData;

    invoke-interface {v5}, Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaData;->onCloseChildViewItem()V

    :cond_3
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableMediaData:Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaData;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->recycle()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iput v3, v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->parentIdx:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iput-object v9, v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->initUnit()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->measureLayout()V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->parentIdx:I

    if-ne v5, v3, :cond_1

    const-string v5, "ExpandableGridView"

    const-string v7, "<<<<<<<<<<< here >>>>>>>>>>>>>"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->recycle()V

    goto :goto_3

    :cond_6
    if-nez p4, :cond_d

    add-int v6, v14, v11

    :goto_4
    move/from16 v3, p1

    const/4 v13, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-ge v13, v5, :cond_c

    if-ge v3, v15, :cond_c

    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v2, v0
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v5, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaData;

    if-nez v2, :cond_7

    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    :cond_7
    const/4 v7, 0x0

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaData;->isRequestChildViewItemExpanded()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iput v10, v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v7

    sub-int v7, v6, v7

    iput v7, v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v10

    int-to-float v7, v7

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v17

    sub-int v17, v6, v17

    div-int/lit8 v18, v11, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v7, v0, v1}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    :cond_8
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v16

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int v5, v5, v16

    add-int p2, p2, v5

    if-ge v8, v12, :cond_9

    move v8, v12

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v3, v5, :cond_a

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v3, v5, :cond_b

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    :cond_b
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    :cond_c
    const-string v5, "ExpandableGridView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "expand_H:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v8, v11

    const-string v5, "ExpandableGridView"

    const-string v7, "--------------------- makeItemRow ---------------------"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v5, v6, v8

    return v5

    :catch_0
    move-exception v5

    goto/16 :goto_6

    :catch_1
    move-exception v5

    goto/16 :goto_1

    :cond_d
    move v6, v14

    goto/16 :goto_4
.end method

.method public onLayout(ZFFFII)V
    .locals 0

    iput p5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mGLViewWidth:I

    iput p6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mGLViewHeight:I

    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/widget/gridview/GridView;->onLayout(ZFFFII)V

    return-void
.end method

.method protected onScrollMotionIRT(I)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f7fffff

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v1, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_0

    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(I)V

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget-object v0, v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget v5, v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->y:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->y:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->y:I

    sub-int/2addr v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    invoke-virtual {v0, v6, v6, v7}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->y:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mGLViewHeight:I

    neg-int v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v6, v6, v7}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->x:I

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandableUnit:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->y:I

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5, v7}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    goto :goto_0
.end method

.method public setMediaList(Lcom/htc/sunny2/IMediaList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should set the instance of IExpandableGridViewMediaList to ExpandableGridView."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    return-void
.end method

.method public setMediaList(Lcom/htc/sunny2/widget/gridview/IExpandableGridViewMediaList;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    return-void
.end method
