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
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/htc/view/table/AbstractTableView;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/view/table/TableView;->mTempRect:Landroid/graphics/Rect;

    .line 875
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    .line 881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/view/table/TableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v8, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    .line 37
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/htc/view/table/TableView;->mTempRect:Landroid/graphics/Rect;

    .line 875
    const/16 v6, 0x32

    iput v6, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    .line 881
    iput-boolean v7, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    .line 49
    sget-object v6, Landroid/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 54
    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Lcom/htc/view/table/TableView;->setHorizontalSpacing(I)V

    .line 56
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 58
    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableView;->setVerticalSpacing(I)V

    .line 60
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 61
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 62
    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableView;->setStretchMode(I)V

    .line 65
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 66
    .local v1, columnWidth:I
    if-lez v1, :cond_1

    .line 67
    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->setColumnRowWidth(I)V

    .line 70
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 71
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->setNumColumnRows(I)V

    .line 73
    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 74
    if-ltz v3, :cond_2

    .line 75
    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableView;->setGravity(I)V

    .line 78
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
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

    .line 475
    iget-object v4, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 566
    :goto_0
    return v2

    .line 479
    :cond_0
    iget-boolean v4, p0, Lcom/htc/view/table/TableView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    .line 484
    :cond_1
    const/4 v1, 0x0

    .line 485
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 487
    .local v0, action:I
    if-eq v0, v3, :cond_3

    .line 488
    iget v4, p0, Lcom/htc/view/table/TableView;->mSelectedPosition:I

    if-gez v4, :cond_2

    .line 489
    sparse-switch p1, :sswitch_data_0

    .line 502
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 551
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 552
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/view/table/TableView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 555
    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    .line 556
    goto :goto_0

    .line 497
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->resurrectSelection()Z

    move v2, v3

    .line 498
    goto :goto_0

    .line 504
    :sswitch_1
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->arrowScroll(I)Z

    move-result v1

    .line 505
    goto :goto_1

    .line 509
    :sswitch_2
    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->arrowScroll(I)Z

    move-result v1

    .line 510
    goto :goto_1

    .line 513
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 514
    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 517
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableView;->fullScroll(I)Z

    move-result v1

    .line 519
    goto :goto_1

    .line 522
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 523
    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 525
    :cond_6
    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableView;->fullScroll(I)Z

    move-result v1

    .line 527
    goto :goto_1

    .line 531
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 532
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->keyPressed()V

    :cond_7
    move v2, v3

    .line 535
    goto :goto_0

    .line 539
    :sswitch_6
    iget-object v4, p0, Lcom/htc/view/table/TableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/view/table/TableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 540
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 541
    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 543
    :cond_9
    invoke-virtual {p0, v5}, Lcom/htc/view/table/TableView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 558
    :cond_a
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 560
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/view/table/AbstractTableView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 562
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/view/table/AbstractTableView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 564
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractTableView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 489
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

    .line 502
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

    .line 558
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 699
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 700
    .local v0, count:I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 705
    .local v1, invertedIndex:I
    iget-boolean v6, p0, Lcom/htc/view/table/TableView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 706
    iget-object v6, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v6, v6, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 707
    .local v3, rowStart:I
    iget-object v6, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v6, v6, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 713
    .local v2, rowEnd:I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 728
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 709
    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget-object v7, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v7, v7, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 710
    .restart local v2       #rowEnd:I
    iget-object v6, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v6, v6, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_0

    .line 717
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 726
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 717
    goto :goto_1

    .line 720
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 723
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 726
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 713
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
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 840
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/view/table/AbstractTableView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 841
    return-void
.end method

.method protected arrowScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    .line 625
    iget v4, p0, Lcom/htc/view/table/TableView;->mSelectedPosition:I

    .line 626
    .local v4, selectedPosition:I
    iget-object v6, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v3, v6, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 631
    .local v3, numColumns:I
    const/4 v2, 0x0

    .line 633
    .local v2, moved:Z
    iget-boolean v6, p0, Lcom/htc/view/table/TableView;->mStackFromBottom:Z

    if-nez v6, :cond_1

    .line 634
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 635
    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/view/table/TableView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 642
    .local v0, endOfRowPos:I
    :goto_0
    iget-object v6, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v6, p1, v5, v0, v4}, Lcom/htc/view/table/TableColleague;->findAndSetSelecionInt(IIII)Z

    move-result v2

    .line 645
    if-eqz v2, :cond_0

    .line 646
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/view/table/TableView;->playSoundEffect(I)V

    .line 649
    :cond_0
    return v2

    .line 637
    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_1
    iget v6, p0, Lcom/htc/view/table/TableView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 638
    .local v1, invertedSelection:I
    iget v6, p0, Lcom/htc/view/table/TableView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 639
    .restart local v0       #endOfRowPos:I
    const/4 v6, 0x0

    sub-int v7, v0, v3

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 205
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 208
    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 209
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 210
    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 213
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 214
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 215
    iget-object v2, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 216
    iget-object v2, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 218
    iget-boolean v2, p0, Lcom/htc/view/table/TableView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 220
    iget-object v2, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 224
    .local v1, invertedIndex:I
    iget-object v2, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v2, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v3, v3, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 225
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v3, v3, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected attachViewToParent(Landroid/view/View;ILcom/htc/view/table/AbstractTableView$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 836
    invoke-super {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractTableView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 837
    return-void
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 844
    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractTableView;->cleanupLayoutState(Landroid/view/View;)V

    .line 845
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 967
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 968
    .local v0, count:I
    if-lez v0, :cond_2

    .line 969
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v3

    .line 970
    .local v3, numColumns:I
    add-int v9, v0, v3

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v3

    .line 972
    .local v5, rowCount:I
    mul-int/lit8 v1, v5, 0x64

    .line 974
    .local v1, extent:I
    invoke-virtual {p0, v8}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 975
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 976
    .local v2, left:I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 977
    .local v7, width:I
    if-lez v7, :cond_0

    .line 978
    mul-int/lit8 v8, v2, 0x64

    div-int/2addr v8, v7

    add-int/2addr v1, v8

    .line 981
    :cond_0
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 982
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v4

    .line 983
    .local v4, right:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 984
    if-lez v7, :cond_1

    .line 985
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v8

    sub-int v8, v4, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v7

    sub-int/2addr v1, v8

    .line 990
    .end local v1           #extent:I
    .end local v2           #left:I
    .end local v3           #numColumns:I
    .end local v4           #right:I
    .end local v5           #rowCount:I
    .end local v6           #view:Landroid/view/View;
    .end local v7           #width:I
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v8

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 995
    iget v5, p0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 996
    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 997
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 998
    .local v1, left:I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 999
    .local v0, height:I
    if-lez v0, :cond_0

    .line 1000
    iget v5, p0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v6

    div-int v3, v5, v6

    .line 1001
    .local v3, whichRow:I
    mul-int/lit8 v5, v3, 0x64

    mul-int/lit8 v6, v1, 0x64

    div-int/2addr v6, v0

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1004
    .end local v0           #height:I
    .end local v1           #left:I
    .end local v2           #view:Landroid/view/View;
    .end local v3           #whichRow:I
    :cond_0
    return v4
.end method

.method protected computeHorizontalScrollRange()I
    .locals 4

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v0

    .line 1011
    .local v0, numColumns:I
    iget v2, p0, Lcom/htc/view/table/TableView;->mItemCount:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    .line 1012
    .local v1, rowCount:I
    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 917
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v1

    .line 918
    .local v1, count:I
    if-lez v1, :cond_2

    .line 919
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v4

    .line 920
    .local v4, numColumns:I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 922
    .local v5, rowCount:I
    mul-int/lit8 v2, v5, 0x64

    .line 924
    .local v2, extent:I
    invoke-virtual {p0, v8}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 925
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 926
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 927
    .local v3, height:I
    if-lez v3, :cond_0

    .line 928
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 931
    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 932
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 933
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 934
    if-lez v3, :cond_1

    .line 935
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 940
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

    .line 945
    iget v5, p0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 946
    invoke-virtual {p0, v4}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 947
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 948
    .local v1, top:I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 949
    .local v0, height:I
    if-lez v0, :cond_0

    .line 950
    iget v5, p0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v6

    div-int v3, v5, v6

    .line 951
    .local v3, whichRow:I
    mul-int/lit8 v5, v3, 0x64

    mul-int/lit8 v6, v1, 0x64

    div-int/2addr v6, v0

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 954
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
    .line 960
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getNumColumnRows()I

    move-result v0

    .line 961
    .local v0, numColumns:I
    iget v2, p0, Lcom/htc/view/table/TableView;->mItemCount:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    .line 962
    .local v1, rowCount:I
    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public disableProxyAdapter()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/htc/view/util/ProxyListAdapter;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/htc/view/util/ProxyListAdapter;

    invoke-virtual {v0}, Lcom/htc/view/util/ProxyListAdapter;->getTarget()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    .line 149
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->invalidateViews()V

    .line 151
    :cond_0
    return-void
.end method

.method public enableProxyAdapter(Lcom/htc/view/util/ProxyListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Lcom/htc/view/util/ProxyListAdapter;->setTarget(Landroid/widget/ListAdapter;)V

    .line 142
    iput-object p1, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    .line 143
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->invalidateViews()V

    .line 144
    return-void
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 169
    .local v0, childCount:I
    if-lez v0, :cond_4

    .line 171
    iget-object v3, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v2, v3, Lcom/htc/view/table/TableColleague;->mNumColumnRows:I

    .line 172
    .local v2, numColumns:I
    iget-boolean v3, p0, Lcom/htc/view/table/TableView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 173
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 174
    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 175
    iget v3, p0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 188
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1
    return v3

    .line 173
    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 179
    .end local v1           #i:I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 180
    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 181
    iget v3, p0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 179
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 186
    :cond_3
    iget v3, p0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 188
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_4
    sget v3, Lcom/htc/view/table/TableView;->INVALID_POSITION:I

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_1

    .line 604
    iput v2, p0, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 605
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 606
    const/4 v0, 0x1

    .line 613
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 608
    iput v2, p0, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 609
    iget v1, p0, Lcom/htc/view/table/TableView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 610
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getDefaultHTableColleague()Lcom/htc/view/table/HTableColleague;
    .locals 1

    .prologue
    .line 832
    new-instance v0, Lcom/htc/view/table/HTableColleague;

    invoke-direct {v0, p0}, Lcom/htc/view/table/HTableColleague;-><init>(Lcom/htc/view/table/TableView;)V

    return-object v0
.end method

.method public getDefaultVTableColleague()Lcom/htc/view/table/VTableColleague;
    .locals 1

    .prologue
    .line 828
    new-instance v0, Lcom/htc/view/table/VTableColleague;

    invoke-direct {v0, p0}, Lcom/htc/view/table/VTableColleague;-><init>(Lcom/htc/view/table/TableView;)V

    return-object v0
.end method

.method public getNumColumnRows()I
    .locals 1

    .prologue
    .line 813
    iget v0, p0, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 786
    iget v0, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    return v0
.end method

.method protected initTableColleague()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/htc/view/table/TableView;->mTableLayoutParams:Lcom/htc/view/table/TableLayoutParams;

    invoke-virtual {v0}, Lcom/htc/view/table/TableLayoutParams;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getDefaultVTableColleague()Lcom/htc/view/table/VTableColleague;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    .line 824
    :goto_0
    iget-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v1, p0, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->setNumColumnRows(I)V

    .line 825
    return-void

    .line 821
    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getDefaultHTableColleague()Lcom/htc/view/table/HTableColleague;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/view/table/TableView;->mBlockLayoutRequests:Z

    .line 232
    .local v8, blockLayoutRequests:Z
    if-nez v8, :cond_0

    .line 233
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/TableView;->mBlockLayoutRequests:Z

    .line 237
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/view/table/AbstractTableView;->layoutChildren()V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->invalidate()V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_2

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->resetList()V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    if-nez v8, :cond_1

    .line 417
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/TableView;->mBlockLayoutRequests:Z

    .line 420
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/view/table/TableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v4

    .line 248
    .local v4, childrenOrnTop:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/view/table/TableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v3

    sub-int v5, v2, v3

    .line 253
    .local v5, childrenOrnBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v9

    .line 255
    .local v9, childCount:I
    const/4 v11, 0x0

    .line 256
    .local v11, delta:I
    const/4 v6, 0x0

    .line 259
    .local v6, childHeight:I
    const/16 v18, 0x0

    .line 260
    .local v18, oldSel:Landroid/view/View;
    const/16 v17, 0x0

    .line 261
    .local v17, oldFirst:Landroid/view/View;
    const/16 v16, 0x0

    .line 264
    .local v16, newSel:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 291
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    sub-int v14, v2, v3

    .line 292
    .local v14, index:I
    if-ltz v14, :cond_3

    if-ge v14, v9, :cond_3

    .line 293
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 297
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 300
    .end local v14           #index:I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/view/table/TableView;->mDataChanged:Z

    .line 301
    .local v10, dataChanged:Z
    if-eqz v10, :cond_5

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->handleDataChanged()V

    .line 307
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mItemCount:I

    if-nez v2, :cond_7

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->resetList()V

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    if-nez v8, :cond_1

    .line 417
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/TableView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 266
    .end local v10           #dataChanged:Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    sub-int v14, v2, v3

    .line 267
    .restart local v14       #index:I
    if-ltz v14, :cond_4

    if-ge v14, v9, :cond_4

    .line 268
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    goto :goto_1

    .line 277
    .end local v14           #index:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mNextSelectedPosition:I

    if-ltz v2, :cond_4

    .line 278
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/TableView;->mSelectedPosition:I

    sub-int v11, v2, v3

    goto :goto_1

    .line 282
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 283
    const/4 v6, 0x0

    goto :goto_1

    .line 285
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/view/table/TableColleague;->getOrnHeight(Landroid/view/View;)I

    move-result v6

    .line 288
    goto :goto_1

    .line 313
    .restart local v10       #dataChanged:Z
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    .line 317
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    .line 318
    .local v12, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/TableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    move-object/from16 v19, v0

    .line 320
    .local v19, recycleBin:Lcom/htc/view/table/AbstractTableView$RecycleBin;
    if-eqz v10, :cond_8

    .line 321
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    if-ge v13, v9, :cond_9

    .line 322
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 321
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 325
    .end local v13           #i:I
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v12}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->fillActiveViews(II)V

    .line 330
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->detachAllViewsFromParent()V

    .line 332
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 367
    if-nez v9, :cond_d

    .line 368
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/view/table/TableView;->mStackFromBottom:Z

    if-nez v2, :cond_c

    .line 370
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v4}, Lcom/htc/view/table/TableColleague;->fillFromTop(I)Landroid/view/View;

    move-result-object v20

    .line 393
    .end local v4           #childrenOrnTop:I
    .local v20, sel:Landroid/view/View;
    :goto_3
    invoke-virtual/range {v19 .. v19}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->scrapActiveViews()V

    .line 395
    if-eqz v20, :cond_12

    .line 396
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableView;->positionSelector(Landroid/view/View;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/view/table/TableView;->mSelectedOrnTop:I

    .line 403
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 404
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/TableView;->mDataChanged:Z

    .line 405
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/TableView;->mNeedSync:Z

    .line 406
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setNextSelectedPositionInt(I)V

    .line 410
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mItemCount:I

    if-lez v2, :cond_a

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->checkSelectionChanged()V

    .line 414
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/TableView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    if-nez v8, :cond_1

    .line 417
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/view/table/TableView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 334
    .end local v20           #sel:Landroid/view/View;
    .restart local v4       #childrenOrnTop:I
    :pswitch_4
    if-eqz v16, :cond_b

    .line 335
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/view/table/TableColleague;->fillFromSelection(III)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto :goto_3

    .line 337
    .end local v20           #sel:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v4, v5}, Lcom/htc/view/table/TableColleague;->fillSelection(II)Landroid/view/View;

    move-result-object v20

    .line 339
    .restart local v20       #sel:Landroid/view/View;
    goto :goto_3

    .line 341
    .end local v20           #sel:Landroid/view/View;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    .line 343
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v4}, Lcom/htc/view/table/TableColleague;->fillFromTop(I)Landroid/view/View;

    move-result-object v20

    .line 346
    .restart local v20       #sel:Landroid/view/View;
    goto :goto_3

    .line 349
    .end local v20           #sel:Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/TableView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v5}, Lcom/htc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    move-result-object v20

    .line 352
    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 354
    .end local v20           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/TableView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/table/TableView;->mSpecificTop:I

    invoke-virtual {v2, v3, v7}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    .line 355
    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 357
    .end local v20           #sel:Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/TableView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/table/TableView;->mSpecificTop:I

    invoke-virtual {v2, v3, v7}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    .line 358
    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 361
    .end local v20           #sel:Landroid/view/View;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v11, v4, v5}, Lcom/htc/view/table/TableColleague;->moveSelection(III)Landroid/view/View;

    move-result-object v20

    .line 362
    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 364
    .end local v20           #sel:Landroid/view/View;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/TableView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/table/TableView;->mPercentage:I

    invoke-virtual/range {v2 .. v7}, Lcom/htc/view/table/TableColleague;->moveSelectionCenter(IIIII)Landroid/view/View;

    move-result-object v20

    .line 365
    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 373
    .end local v20           #sel:Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mItemCount:I

    add-int/lit8 v15, v2, -0x1

    .line 375
    .local v15, last:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v2, v15, v5}, Lcom/htc/view/table/TableColleague;->fillFromBottom(II)Landroid/view/View;

    move-result-object v20

    .line 377
    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 379
    .end local v15           #last:I
    .end local v20           #sel:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mSelectedPosition:I

    if-ltz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/TableView;->mItemCount:I

    if-ge v2, v3, :cond_f

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/TableView;->mSelectedPosition:I

    if-nez v18, :cond_e

    .end local v4           #childrenOrnTop:I
    :goto_5
    invoke-virtual {v2, v3, v4}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v20           #sel:Landroid/view/View;
    .restart local v4       #childrenOrnTop:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v4

    goto :goto_5

    .line 382
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/TableView;->mItemCount:I

    if-ge v2, v3, :cond_11

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    if-nez v17, :cond_10

    .end local v4           #childrenOrnTop:I
    :goto_6
    invoke-virtual {v2, v3, v4}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v20           #sel:Landroid/view/View;
    .restart local v4       #childrenOrnTop:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v4

    goto :goto_6

    .line 386
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/view/table/TableColleague;->fillSpecific(II)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 399
    .end local v4           #childrenOrnTop:I
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/view/table/TableView;->mSelectedOrnTop:I

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/view/table/TableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 416
    .end local v5           #childrenOrnBottom:I
    .end local v6           #childHeight:I
    .end local v9           #childCount:I
    .end local v10           #dataChanged:Z
    .end local v11           #delta:I
    .end local v12           #firstPosition:I
    .end local v16           #newSel:Landroid/view/View;
    .end local v17           #oldFirst:Landroid/view/View;
    .end local v18           #oldSel:Landroid/view/View;
    .end local v19           #recycleBin:Lcom/htc/view/table/AbstractTableView$RecycleBin;
    .end local v20           #sel:Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v8, :cond_13

    .line 417
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/view/table/TableView;->mBlockLayoutRequests:Z

    :cond_13
    throw v2

    .line 264
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

    .line 332
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
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    .line 156
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    :cond_0
    sget p1, Lcom/htc/view/table/TableView;->INVALID_POSITION:I

    .line 163
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 160
    .restart local p1
    :cond_2
    if-ltz p1, :cond_3

    iget v1, p0, Lcom/htc/view/table/TableView;->mItemCount:I

    if-lt p1, v1, :cond_1

    .line 161
    :cond_3
    sget p1, Lcom/htc/view/table/TableView;->INVALID_POSITION:I

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 654
    invoke-super {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractTableView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 656
    const/4 v1, -0x1

    .line 657
    .local v1, closestChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 658
    iget v7, p0, Lcom/htc/view/table/TableView;->mScrollX:I

    iget v8, p0, Lcom/htc/view/table/TableView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 662
    iget-object v6, p0, Lcom/htc/view/table/TableView;->mTempRect:Landroid/graphics/Rect;

    .line 663
    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 664
    .local v4, minDistance:I
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 665
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 667
    invoke-direct {p0, v3, p2}, Lcom/htc/view/table/TableView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 665
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 671
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 672
    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 673
    invoke-virtual {p0, v5, v6}, Lcom/htc/view/table/TableView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 674
    invoke-static {p3, v6, p2}, Lcom/htc/view/table/TableView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 676
    .local v2, distance:I
    if-ge v2, v4, :cond_0

    .line 677
    move v4, v2

    .line 678
    move v1, v3

    goto :goto_1

    .line 683
    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 684
    iget v7, p0, Lcom/htc/view/table/TableView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/htc/view/table/TableView;->setSelection(I)V

    .line 688
    :goto_2
    return-void

    .line 686
    :cond_3
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 460
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/view/table/TableView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 465
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/view/table/TableView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 470
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/view/table/TableView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->onMeasure(II)V

    .line 195
    iget-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getDefaultVTableColleague()Lcom/htc/view/table/VTableColleague;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1, p2}, Lcom/htc/view/table/TableColleague;->onMeasure(II)V

    .line 199
    return-void
.end method

.method pageScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 578
    const/4 v0, -0x1

    .line 580
    .local v0, nextPage:I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 581
    iget v2, p0, Lcom/htc/view/table/TableView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 586
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 587
    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 588
    const/4 v1, 0x1

    .line 591
    :cond_1
    return v1

    .line 582
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 583
    iget v2, p0, Lcom/htc/view/table/TableView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/view/table/TableView;->mSelectedPosition:I

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
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    iget-object v1, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/view/table/TableView;->mDataSetObserver:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->resetList()V

    .line 98
    iget-object v1, p0, Lcom/htc/view/table/TableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->clear()V

    .line 99
    iput-object p1, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    .line 101
    sget v1, Lcom/htc/view/table/TableView;->INVALID_POSITION:I

    iput v1, p0, Lcom/htc/view/table/TableView;->mOldSelectedPosition:I

    .line 102
    sget-wide v1, Lcom/htc/view/table/TableView;->INVALID_ROW_ID:J

    iput-wide v1, p0, Lcom/htc/view/table/TableView;->mOldSelectedRowId:J

    .line 104
    iget-object v1, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 105
    iget v1, p0, Lcom/htc/view/table/TableView;->mItemCount:I

    iput v1, p0, Lcom/htc/view/table/TableView;->mOldItemCount:I

    .line 106
    iget-object v1, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/view/table/TableView;->mItemCount:I

    .line 107
    iput-boolean v4, p0, Lcom/htc/view/table/TableView;->mDataChanged:Z

    .line 108
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->checkFocus()V

    .line 110
    new-instance v1, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/view/table/AbstractAdapterView;)V

    iput-object v1, p0, Lcom/htc/view/table/TableView;->mDataSetObserver:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    .line 111
    iget-object v1, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/view/table/TableView;->mDataSetObserver:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 113
    iget-object v1, p0, Lcom/htc/view/table/TableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    iget-object v2, p0, Lcom/htc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->setViewTypeCount(I)V

    .line 116
    iget-boolean v1, p0, Lcom/htc/view/table/TableView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 117
    iget v1, p0, Lcom/htc/view/table/TableView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/htc/view/table/TableView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 122
    .local v0, position:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableView;->setSelectedPositionInt(I)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableView;->setNextSelectedPositionInt(I)V

    .line 124
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->checkSelectionChanged()V

    .line 131
    .end local v0           #position:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayout()V

    .line 132
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/htc/view/table/TableView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_0

    .line 126
    .end local v0           #position:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->checkFocus()V

    .line 128
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setCenterView(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 852
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    .line 853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    .line 855
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 856
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

    .line 864
    :goto_0
    return-void

    .line 861
    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    .line 862
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 863
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    goto :goto_0
.end method

.method public setCenterView(II)V
    .locals 3
    .parameter "position"
    .parameter "parentViewHeightOrWidth"

    .prologue
    .line 884
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    .line 887
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 888
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

    .line 897
    :goto_0
    return-void

    .line 893
    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    .line 894
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 895
    iput p2, p0, Lcom/htc/view/table/TableView;->mTableViewOrnHeight:I

    .line 896
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    goto :goto_0
.end method

.method public setCenterView(III)V
    .locals 3
    .parameter "position"
    .parameter "parentViewHeightOrWidth"
    .parameter "percentage"

    .prologue
    .line 900
    iput p3, p0, Lcom/htc/view/table/TableView;->mPercentage:I

    .line 901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->isSetTableViewHeight:Z

    .line 903
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 904
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

    .line 913
    :goto_0
    return-void

    .line 909
    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    .line 910
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 911
    iput p2, p0, Lcom/htc/view/table/TableView;->mTableViewOrnHeight:I

    .line 912
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    goto :goto_0
.end method

.method public setColumnRowWidth(I)V
    .locals 0
    .parameter "columnRowWidth"

    .prologue
    .line 796
    iput p1, p0, Lcom/htc/view/table/TableView;->mRequestedOrnWidth:I

    .line 797
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v0, v0, Lcom/htc/view/table/TableColleague;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iput p1, v0, Lcom/htc/view/table/TableColleague;->mGravity:I

    .line 742
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayoutIfNecessary()V

    .line 744
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .parameter "horizontalSpacing"

    .prologue
    .line 755
    iput p1, p0, Lcom/htc/view/table/TableView;->mRequestedHorizontalSpacing:I

    .line 756
    return-void
.end method

.method protected setMeasuredDimensionEx(II)V
    .locals 0
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 848
    invoke-super {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->setMeasuredDimension(II)V

    .line 849
    return-void
.end method

.method public setMultiStop(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setMultiStop(Z)V

    .line 1023
    return-void
.end method

.method public setMultiStopDistance(I)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setMultiStopDistance(I)Z

    move-result v0

    return v0
.end method

.method public setNumColumnRows(I)V
    .locals 2
    .parameter "numColumnRows"

    .prologue
    .line 806
    iput p1, p0, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    .line 807
    iget-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget v1, p0, Lcom/htc/view/table/TableView;->mRequestedNumColumnRows:I

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->setNumColumnRows(I)V

    .line 810
    :cond_0
    return-void
.end method

.method public setRepeatEnable(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1016
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/table/TableView;->setCycling(Z)V

    .line 1017
    iget-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setRepeatEnable(Z)V

    .line 1018
    iget-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setCloseBouncing(Z)V

    .line 1019
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setNextSelectedPositionInt(I)V

    .line 439
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/view/table/TableView;->mLayoutMode:I

    .line 440
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayout()V

    .line 441
    return-void

    .line 437
    :cond_0
    iput p1, p0, Lcom/htc/view/table/TableView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method protected setSelectionInt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->mBlockLayoutRequests:Z

    .line 451
    invoke-virtual {p0, p1}, Lcom/htc/view/table/TableView;->setNextSelectedPositionInt(I)V

    .line 453
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->layoutChildren()V

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/TableView;->mBlockLayoutRequests:Z

    .line 456
    return-void
.end method

.method public setStopExcept(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/htc/view/table/TableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableColleague;->setStopExcept(I)V

    .line 1031
    return-void
.end method

.method public setStretchMode(I)V
    .locals 1
    .parameter "stretchMode"

    .prologue
    .line 779
    iget v0, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 780
    iput p1, p0, Lcom/htc/view/table/TableView;->mStretchMode:I

    .line 781
    invoke-virtual {p0}, Lcom/htc/view/table/TableView;->requestLayoutIfNecessary()V

    .line 783
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .parameter "verticalSpacing"

    .prologue
    .line 768
    iput p1, p0, Lcom/htc/view/table/TableView;->mRequestedVerticalSpacing:I

    .line 769
    return-void
.end method
