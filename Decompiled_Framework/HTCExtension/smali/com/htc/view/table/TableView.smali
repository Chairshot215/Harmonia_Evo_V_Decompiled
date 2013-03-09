.class public Lcom/htc/view/table/TableView;
.super Lcom/htc/view/table/AbstractTableView;
.source "TableView.java"


# static fields
.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_ROW_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TableView"

.field private static final layoutLOG:Z

.field private static final localLOGV:Z


# instance fields
.field isSetTableViewHeight:Z

.field private mPercentage:I

.field protected mRequestedHorizontalSpacing:I

.field protected mRequestedNumColumnRows:I

.field protected mRequestedOrnWidth:I

.field protected mRequestedVerticalSpacing:I

.field protected mStretchMode:I

.field mTableViewOrnHeight:I

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/view/table/AbstractTableView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/view/table/TableView;->mTempRect:Landroid/graphics/Rect;

    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/view/table/TableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v8, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/htc/view/table/TableView;->mTempRect:Landroid/graphics/Rect;

    const/16 v6, 0x32

    iput v6, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    iput-boolean v7, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    sget-object v6, Landroid/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/view/table/TableView;->setHorizontalSpacing(I)V

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableView;->setVerticalSpacing(I)V

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableView;->setStretchMode(I)V

    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->setColumnRowWidth(I)V

    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->setNumColumnRows(I)V

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableView;->setGravity(I)V

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v2, 0x0

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-boolean v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-gez v4, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_2
    sparse-switch p1, :sswitch_data_1

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/view/table/TableView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->resurrectSelection()Z

    move v2, v3

    goto :goto_0

    :sswitch_1
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_2
    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->keyPressed()V

    :cond_7
    move v2, v3

    goto :goto_0

    :sswitch_6
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_a
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/view/table/AbstractTableView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/view/table/AbstractTableView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractTableView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

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

.method private isCandidateSelection(II)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    iget-boolean v6, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v6, v6, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v6, v6, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

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

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v7, v7, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v6, v6, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

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


# virtual methods
.method protected addViewInLayout(Landroid/view/View;ILcom/htc/view/table/AbstractTableView$LayoutParams;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/view/table/AbstractTableView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method protected arrowScroll(I)Z
    .locals 8

    iget v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v3, v6, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    const/4 v2, 0x0

    iget-boolean v6, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v6, :cond_1

    div-int v6, v4, v3

    mul-int v5, v6, v3

    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v6, p1, v5, v0, v4}, Lcom/htc/view/table/TableColleague;->findAndSetSelecionInt(IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableView;->playSoundEffect(I)V

    :cond_0
    return v2

    :cond_1
    iget v6, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    iget v6, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    const/4 v6, 0x0

    sub-int v7, v0, v3

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0
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

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    iget-boolean v2, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v3, v3, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v3, v3, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected attachViewToParent(Landroid/view/View;ILcom/htc/view/table/AbstractTableView$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractTableView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractTableView;->cleanupLayoutState(Landroid/view/View;)V

    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v3

    add-int v9, v0, v3

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v3

    mul-int/lit8 v1, v5, 0x64

    invoke-virtual {p0, v8}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    mul-int/lit8 v8, v2, 0x64

    div-int/2addr v8, v7

    add-int/2addr v1, v8

    :cond_0
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v8

    sub-int v8, v4, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v7

    sub-int/2addr v1, v8

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v8

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 7

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v6

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

.method protected computeHorizontalScrollRange()I
    .locals 4

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v0

    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v4

    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    mul-int/lit8 v2, v5, 0x64

    invoke-virtual {p0, v8}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

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

    invoke-virtual {p0, v8}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getHeight()I

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

    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v6

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

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v0

    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public disableProxyAdapter()V
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/htc/view/util/ProxyListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/htc/view/util/ProxyListAdapter;

    invoke-virtual {v0}, Lcom/htc/view/util/ProxyListAdapter;->getTarget()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public enableProxyAdapter(Lcom/htc/view/util/ProxyListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Lcom/htc/view/util/ProxyListAdapter;->setTarget(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->invalidateViews()V

    return-void
.end method

.method findMotionRow(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v3, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    iget-boolean v3, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

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

    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    sget v3, Lcom/htc/view/table/TableView;->INVALID_POSITION:I

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/16 v1, 0x21

    if-ne p1, v1, :cond_1

    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getDefaultHTableColleague()Lcom/htc/view/table/HTableColleague;
    .locals 1

    new-instance v0, Lcom/htc/view/table/HTableColleague;

    invoke-direct {v0, p0}, Lcom/htc/view/table/HTableColleague;-><init>(Lcom/htc/view/table/TableView;)V

    return-object v0
.end method

.method public getDefaultVTableColleague()Lcom/htc/view/table/VTableColleague;
    .locals 1

    new-instance v0, Lcom/htc/view/table/VTableColleague;

    invoke-direct {v0, p0}, Lcom/htc/view/table/VTableColleague;-><init>(Lcom/htc/view/table/TableView;)V

    return-object v0
.end method

.method public getNumColumnRows()I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    return v0
.end method

.method protected initTableColleague()V
    .locals 2

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mTableLayoutParams:Lcom/htc/view/table/TableLayoutParams;

    invoke-virtual {v0}, Lcom/htc/view/table/TableLayoutParams;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getDefaultVTableColleague()Lcom/htc/view/table/VTableColleague;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    :goto_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v1, p0, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->setNumColumnRows(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getDefaultHTableColleague()Lcom/htc/view/table/HTableColleague;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    if-nez v8, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/view/table/AbstractTableView;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v3

    sub-int v5, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v9

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    sub-int v14, v2, v3

    if-ltz v14, :cond_3

    if-ge v14, v9, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->handleDataChanged()V

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    goto :goto_0

    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    sub-int v14, v2, v3

    if-ltz v14, :cond_4

    if-ge v14, v9, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    if-ltz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    sub-int v11, v2, v3

    goto :goto_1

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/view/table/TableColleague;->getOrnHeight(Landroid/view/View;)I

    move-result v6

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    move-object/from16 v19, v0

    if-eqz v10, :cond_8

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v9, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v12}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->fillActiveViews(II)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->detachAllViewsFromParent()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    if-nez v9, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-nez v2, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v4}, Lcom/htc/view/table/TableColleague;->fillFromTop(I)Landroid/view/View;

    move-result-object v20

    :goto_3
    invoke-virtual/range {v19 .. v19}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->scrapActiveViews()V

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableView;->positionSelector(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setNextSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-lez v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->checkSelectionChanged()V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    :pswitch_4
    if-eqz v16, :cond_b

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/view/table/TableColleague;->fillFromSelection(III)Landroid/view/View;

    move-result-object v20

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v4, v5}, Lcom/htc/view/table/TableColleague;->fillSelection(II)Landroid/view/View;

    move-result-object v20

    goto :goto_3

    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v4}, Lcom/htc/view/table/TableColleague;->fillFromTop(I)Landroid/view/View;

    move-result-object v20

    goto :goto_3

    :pswitch_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v5}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    move-result-object v20

    goto/16 :goto_3

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/table/AbstractAdapterView;->mSpecificTop:I

    invoke-virtual {v2, v3, v7}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    goto/16 :goto_3

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/table/AbstractAdapterView;->mSpecificTop:I

    invoke-virtual {v2, v3, v7}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    goto/16 :goto_3

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v11, v4, v5}, Lcom/htc/view/table/TableColleague;->moveSelection(III)Landroid/view/View;

    move-result-object v20

    goto/16 :goto_3

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/table/TableView;->mPercentage:I

    invoke-virtual/range {v2 .. v7}, Lcom/htc/view/table/TableColleague;->moveSelectionCenter(IIIII)Landroid/view/View;

    move-result-object v20

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v15, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v15, v5}, Lcom/htc/view/table/TableColleague;->fillFromBottom(II)Landroid/view/View;

    move-result-object v20

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-ge v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-nez v18, :cond_e

    :goto_5
    invoke-virtual {v2, v3, v4}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v4

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-ge v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-nez v17, :cond_10

    :goto_6
    invoke-virtual {v2, v3, v4}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v4

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    goto/16 :goto_3

    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    if-nez v8, :cond_13

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    :cond_13
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected lookForSelectablePosition(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget p1, Lcom/htc/view/table/TableView;->INVALID_POSITION:I

    :cond_1
    :goto_0
    return p1

    :cond_2
    if-ltz p1, :cond_3

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-lt p1, v1, :cond_1

    :cond_3
    sget p1, Lcom/htc/view/table/TableView;->INVALID_POSITION:I

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractTableView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iget v7, p0, Lcom/htc/view/table/AbstractTableView;->mScrollX:I

    iget v8, p0, Lcom/htc/view/table/AbstractTableView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, p0, Lcom/htc/view/table/TableView;->mTempRect:Landroid/graphics/Rect;

    const v4, 0x7fffffff

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-direct {p0, v3, p2}, Lcom/htc/view/table/TableView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v5, v6}, Lcom/htc/view/table/TableView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v6, p2}, Lcom/htc/view/table/TableView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    if-ge v2, v4, :cond_0

    move v4, v2

    move v1, v3

    goto :goto_1

    :cond_2
    if-ltz v1, :cond_3

    iget v7, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableView;->setSelection(I)V

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/view/table/TableView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/view/table/TableView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/view/table/TableView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->onMeasure(II)V

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getDefaultVTableColleague()Lcom/htc/view/table/VTableColleague;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1, p2}, Lcom/htc/view/table/TableColleague;->onMeasure(II)V

    return-void
.end method

.method pageScroll(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mDataSetObserver:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->resetList()V

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->clear()V

    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    sget v1, Lcom/htc/view/table/TableView;->INVALID_POSITION:I

    iput v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedPosition:I

    sget-wide v1, Lcom/htc/view/table/TableView;->INVALID_ROW_ID:J

    iput-wide v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedRowId:J

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldItemCount:I

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    iput-boolean v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->checkFocus()V

    new-instance v1, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/view/table/AbstractAdapterView;)V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mDataSetObserver:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mDataSetObserver:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/htc/view/table/TableView;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->checkSelectionChanged()V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayout()V

    return-void

    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/htc/view/table/TableView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->checkFocus()V

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setCenterView(I)V
    .locals 3

    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, "TableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCenterView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is invalid(0 ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    goto :goto_0
.end method

.method public setCenterView(II)V
    .locals 3

    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, "TableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCenterView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is invalid(0 ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    iput p2, p0, Lcom/htc/view/table/TableView;->mTableViewOrnHeight:I

    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    goto :goto_0
.end method

.method public setCenterView(III)V
    .locals 3

    iput p3, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, "TableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCenterView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is invalid(0 ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    iput p2, p0, Lcom/htc/view/table/TableView;->mTableViewOrnHeight:I

    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    goto :goto_0
.end method

.method public setColumnRowWidth(I)V
    .locals 0

    iput p1, p0, Lcom/htc/view/table/TableView;->mRequestedOrnWidth:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v0, v0, Lcom/htc/view/table/TableColleague;->mGravity:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iput p1, v0, Lcom/htc/view/table/TableColleague;->mGravity:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/htc/view/table/TableView;->mRequestedHorizontalSpacing:I

    return-void
.end method

.method protected setMeasuredDimensionEx(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMultiStop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setMultiStop(Z)V

    return-void
.end method

.method public setMultiStopDistance(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setMultiStopDistance(I)Z

    move-result v0

    return v0
.end method

.method public setNumColumnRows(I)V
    .locals 2

    iput p1, p0, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v1, p0, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->setNumColumnRows(I)V

    :cond_0
    return-void
.end method

.method public setRepeatEnable(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableView;->setCycling(Z)V

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setRepeatEnable(Z)V

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setCloseBouncing(Z)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setNextSelectedPositionInt(I)V

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayout()V

    return-void

    :cond_0
    iput p1, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method protected setSelectionInt(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    return-void
.end method

.method public setStopExcept(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setStopExcept(I)V

    return-void
.end method

.method public setStretchMode(I)V
    .locals 1

    iget v0, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/htc/view/table/TableView;->mRequestedVerticalSpacing:I

    return-void
.end method
