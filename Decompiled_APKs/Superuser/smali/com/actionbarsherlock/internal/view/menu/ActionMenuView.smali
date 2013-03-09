.class public Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
.super Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuView;


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4260

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMinCellSize:I

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    if-lez p2, :cond_3

    mul-int v1, p1, p2

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int v1, v2, p1

    rem-int/2addr v2, p1

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_0
    instance-of v1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    :goto_1
    iget-boolean v5, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v5, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    iput v2, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v0, v2, p1

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Landroid/view/View;->measure(II)V

    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private onMeasureExactFormat(II)V
    .locals 33

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v8

    add-int v23, v7, v8

    sub-int v24, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMinCellSize:I

    div-int v8, v24, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMinCellSize:I

    rem-int v5, v24, v5

    if-nez v8, :cond_0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMinCellSize:I

    div-int/2addr v5, v8

    add-int v25, v6, v5

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v26

    const/4 v5, 0x0

    move/from16 v16, v5

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v26

    if-lt v0, v1, :cond_5

    if-eqz v10, :cond_9

    const/4 v5, 0x2

    if-ne v6, v5, :cond_9

    const/4 v5, 0x1

    move v7, v5

    :goto_2
    const/16 v16, 0x0

    move-wide/from16 v19, v11

    move/from16 v17, v8

    :goto_3
    if-lez v9, :cond_1

    if-gtz v17, :cond_a

    :cond_1
    move-wide/from16 v11, v19

    if-nez v10, :cond_10

    const/4 v5, 0x1

    if-ne v6, v5, :cond_10

    const/4 v5, 0x1

    :goto_4
    if-lez v17, :cond_1c

    const-wide/16 v7, 0x0

    cmp-long v7, v11, v7

    if-eqz v7, :cond_1c

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v17

    if-lt v0, v6, :cond_2

    if-nez v5, :cond_2

    const/4 v6, 0x1

    if-le v14, v6, :cond_1c

    :cond_2
    invoke-static {v11, v12}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    int-to-float v6, v6

    if-nez v5, :cond_1b

    const-wide/16 v7, 0x1

    and-long/2addr v7, v11

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    iget-boolean v5, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v5, :cond_3

    const/high16 v5, 0x3f00

    sub-float/2addr v6, v5

    :cond_3
    const/4 v5, 0x1

    add-int/lit8 v7, v26, -0x1

    shl-int/2addr v5, v7

    int-to-long v7, v5

    and-long/2addr v7, v11

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_1b

    add-int/lit8 v5, v26, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    iget-boolean v5, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v5, :cond_1b

    const/high16 v5, 0x3f00

    sub-float v5, v6, v5

    :goto_5
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_11

    mul-int v6, v17, v25

    int-to-float v6, v6

    div-float v5, v6, v5

    float-to-int v5, v5

    move v6, v5

    :goto_6
    const/4 v5, 0x0

    move v8, v5

    move/from16 v7, v16

    :goto_7
    move/from16 v0, v26

    if-lt v8, v0, :cond_12

    :goto_8
    if-eqz v7, :cond_4

    sub-int v5, v18, v23

    move/from16 v0, v22

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v5, 0x0

    move v6, v5

    :goto_9
    move/from16 v0, v26

    if-lt v6, v0, :cond_18

    :cond_4
    const/high16 v5, 0x4000

    move/from16 v0, v22

    if-eq v0, v5, :cond_1a

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v13, 0x8

    if-eq v5, v13, :cond_22

    instance-of v0, v7, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    move/from16 v17, v0

    add-int/lit8 v13, v6, 0x1

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v5, v6, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    const/4 v6, 0x0

    iput v6, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v6, 0x0

    iput v6, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    const/4 v6, 0x0

    iput v6, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    const/4 v6, 0x0

    iput v6, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    if-eqz v17, :cond_7

    move-object v6, v7

    check-cast v6, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    :goto_b
    iput-boolean v6, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    iget-boolean v6, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    :goto_c
    move/from16 v0, v25

    move/from16 v1, p2

    move/from16 v2, v23

    invoke-static {v7, v0, v6, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-boolean v6, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v6, :cond_21

    add-int/lit8 v6, v9, 0x1

    :goto_d
    iget-boolean v5, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    :goto_e
    sub-int v10, v8, v17

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v7, 0x1

    move/from16 v0, v17

    if-ne v0, v7, :cond_1f

    const/4 v7, 0x1

    shl-int v7, v7, v16

    int-to-long v7, v7

    or-long/2addr v7, v11

    move v11, v9

    move v12, v10

    move v9, v6

    move v10, v5

    move-wide v5, v7

    move v8, v14

    move v7, v13

    :goto_f
    add-int/lit8 v13, v16, 0x1

    move/from16 v16, v13

    move v14, v8

    move v15, v11

    move v8, v12

    move-wide v11, v5

    move v6, v7

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_b

    :cond_8
    move v6, v8

    goto :goto_c

    :cond_9
    const/4 v5, 0x0

    move v7, v5

    goto/16 :goto_2

    :cond_a
    const v13, 0x7fffffff

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move/from16 v21, v5

    :goto_10
    move/from16 v0, v21

    move/from16 v1, v26

    if-lt v0, v1, :cond_b

    or-long v19, v19, v11

    move/from16 v0, v17

    if-gt v8, v0, :cond_1

    add-int/lit8 v21, v13, 0x1

    const/4 v5, 0x0

    move/from16 v8, v17

    move v13, v5

    move-wide/from16 v16, v19

    :goto_11
    move/from16 v0, v26

    if-lt v13, v0, :cond_d

    const/4 v5, 0x1

    move-wide/from16 v19, v16

    move/from16 v16, v5

    move/from16 v17, v8

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    iget-boolean v0, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1e

    iget v0, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v13, :cond_c

    iget v8, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v5, 0x1

    shl-int v5, v5, v21

    int-to-long v11, v5

    const/4 v5, 0x1

    :goto_12
    add-int/lit8 v13, v21, 0x1

    move/from16 v21, v13

    move v13, v8

    move v8, v5

    goto :goto_10

    :cond_c
    iget v5, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v5, v13, :cond_1e

    const/4 v5, 0x1

    shl-int v5, v5, v21

    int-to-long v0, v5

    move-wide/from16 v27, v0

    or-long v11, v11, v27

    add-int/lit8 v5, v8, 0x1

    move v8, v13

    goto :goto_12

    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    const/16 v20, 0x1

    shl-int v20, v20, v13

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v27, v0

    and-long v27, v27, v11

    const-wide/16 v29, 0x0

    cmp-long v20, v27, v29

    if-nez v20, :cond_e

    iget v5, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v0, v21

    if-ne v5, v0, :cond_1d

    const/4 v5, 0x1

    shl-int/2addr v5, v13

    int-to-long v0, v5

    move-wide/from16 v19, v0

    or-long v16, v16, v19

    move v5, v8

    :goto_13
    add-int/lit8 v8, v13, 0x1

    move v13, v8

    move v8, v5

    goto :goto_11

    :cond_e
    if-eqz v7, :cond_f

    iget-boolean v0, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v20, v0

    add-int v20, v20, v25

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_f
    iget v0, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v5, v8, -0x1

    goto :goto_13

    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_11
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_6

    :cond_12
    const/4 v5, 0x1

    shl-int/2addr v5, v8

    int-to-long v9, v5

    and-long/2addr v9, v11

    const-wide/16 v13, 0x0

    cmp-long v5, v9, v13

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    instance-of v9, v9, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    if-eqz v9, :cond_14

    iput v6, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v8, :cond_13

    iget-boolean v7, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v7, :cond_13

    neg-int v7, v6

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_13
    const/4 v5, 0x1

    :goto_14
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move v7, v5

    goto/16 :goto_7

    :cond_14
    iget-boolean v9, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v9, :cond_15

    iput v6, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v7, v6

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    const/4 v5, 0x1

    goto :goto_14

    :cond_15
    if-eqz v8, :cond_16

    div-int/lit8 v9, v6, 0x2

    iput v9, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_16
    add-int/lit8 v9, v26, -0x1

    if-eq v8, v9, :cond_17

    div-int/lit8 v9, v6, 0x2

    iput v9, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    :cond_17
    move v5, v7

    goto :goto_14

    :cond_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    iget-boolean v9, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    if-eqz v9, :cond_19

    iget v9, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v9, v9, v25

    iget v5, v5, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v5, v9

    const/high16 v9, 0x4000

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v8, v5, v7}, Landroid/view/View;->measure(II)V

    :cond_19
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_9

    :cond_1a
    move/from16 v15, v18

    goto/16 :goto_a

    :cond_1b
    move v5, v6

    goto/16 :goto_5

    :cond_1c
    move/from16 v7, v16

    goto/16 :goto_8

    :cond_1d
    move v5, v8

    goto/16 :goto_13

    :cond_1e
    move v5, v8

    move v8, v13

    goto/16 :goto_12

    :cond_1f
    move v7, v13

    move v8, v14

    move-wide/from16 v31, v11

    move v11, v9

    move v12, v10

    move v10, v5

    move v9, v6

    move-wide/from16 v5, v31

    goto/16 :goto_f

    :cond_20
    move v5, v10

    goto/16 :goto_e

    :cond_21
    move v6, v9

    goto/16 :goto_d

    :cond_22
    move v7, v6

    move-wide v5, v11

    move v11, v15

    move v12, v8

    move v8, v14

    goto/16 :goto_f
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;)V

    iget v1, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    const/16 v1, 0x10

    iput v1, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/actionbarsherlock/internal/widget/IcsLinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    instance-of v3, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v0

    or-int/lit8 v2, v0, 0x0

    :cond_0
    if-lez p1, :cond_1

    instance-of v0, v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v0

    or-int/2addr v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public initialize(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-nez v0, :cond_1

    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onLayout(ZIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    add-int v0, p3, p5

    div-int/lit8 v7, v0, 0x2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getDividerWidth()I

    move-result v8

    const/4 v3, 0x0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v1

    sub-int v2, v0, v1

    const/4 v4, 0x0

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-lt v5, v6, :cond_2

    const/4 v0, 0x1

    if-ne v6, v0, :cond_5

    if-nez v4, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    sub-int v4, v7, v4

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    iget-boolean v1, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v1, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/2addr v1, v8

    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v0, v10, v0

    sub-int v10, v0, v1

    div-int/lit8 v11, v4, 0x2

    sub-int v11, v7, v11

    add-int/2addr v4, v11

    invoke-virtual {v9, v10, v11, v0, v4}, Landroid/view/View;->layout(IIII)V

    sub-int v0, v2, v1

    const/4 v1, 0x1

    move v2, v1

    move v1, v3

    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v9, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v9

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    sub-int v0, v2, v0

    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    add-int/lit8 v1, v3, 0x1

    move v2, v4

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    const/4 v0, 0x0

    :goto_3
    sub-int v0, v3, v0

    const/4 v1, 0x0

    if-lez v0, :cond_7

    div-int v0, v2, v0

    :goto_4
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_5
    if-ge v2, v6, :cond_0

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_8

    iget-boolean v5, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v5, :cond_8

    iget v5, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v9, v8, 0x2

    sub-int v9, v7, v9

    add-int v10, v1, v5

    add-int/2addr v8, v9

    invoke-virtual {v4, v1, v9, v10, v8}, Landroid/view/View;->layout(IIII)V

    iget v0, v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_5

    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    move v0, v2

    move v1, v3

    move v2, v4

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v4, 0x4000

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v3, v0, :cond_0

    iput v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v0, v2, :cond_1

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPresenter(Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    return-void
.end method
