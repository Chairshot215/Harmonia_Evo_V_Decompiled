.class public Lcom/htc/widget/HtcListItem;
.super Landroid/widget/FrameLayout;
.source "HtcListItem.java"


# static fields
.field public static final ALL_ROUND_CORNER:I = 0xd

.field public static final BOTTOM_ROUND_CORNER_ONLY:I = 0xb

.field static final LOG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "HtcListItem"

.field static final MODE_CUSTOMIZED:I = 0x65

.field static final MODE_DEFAULT:I = 0x64

.field public static final NO_ROUND_CORNER:I = 0xc

.field private static final STAMPCOMPONENT_WEIGHT:D = 1.0

.field private static final TEXTCOMPONENT_WEIGHT:D = 2.0

.field public static final TOP_ROUND_CORNER_ONLY:I = 0xa


# instance fields
.field private mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

.field private mBottomSpace:I

.field private mContext:Landroid/content/Context;

.field private mControlLeftMargin:I

.field private mControlRightMargin:I

.field private mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

.field private mDesiredMinHeight:I

.field private mFinalHeight:I

.field private mIsRevert:Z

.field private mLeftSpace:I

.field private mMask:Landroid/graphics/drawable/Drawable;

.field private mMode:I

.field private mRightSpace:I

.field private mRoundCorner:I

.field private mShouldUseDividedWidth:Z

.field private mTextComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTopRoundCorner:Landroid/graphics/drawable/Drawable;

.field private mTopSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mTopRoundCorner:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem;->mShouldUseDividedWidth:Z

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mIsRevert:Z

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mTopRoundCorner:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    iput v3, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem;->mShouldUseDividedWidth:Z

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mIsRevert:Z

    if-lt p2, v3, :cond_0

    const/16 v0, 0x65

    if-gt p2, v0, :cond_0

    iput p2, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;->init(Landroid/content/Context;)V

    return-void

    :cond_0
    iput v3, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;I)V

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem;->mIsRevert:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mTopRoundCorner:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem;->mShouldUseDividedWidth:Z

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mIsRevert:Z

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mTopRoundCorner:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem;->mShouldUseDividedWidth:Z

    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mIsRevert:Z

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private customizedModeMeasureAlgorithm(II)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    const/16 v18, -0x2

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v0, v3, Lcom/htc/widget/HtcListItemComponent;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v18, v3

    check-cast v18, Lcom/htc/widget/HtcListItemComponent;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListItem;->mIsRevert:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcListItemComponent;->setIsRevert(Z)V

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    instance-of v0, v3, Lcom/htc/widget/IHtcListItemTextComponent;

    move/from16 v18, v0

    if-nez v18, :cond_7

    move/from16 v15, p1

    instance-of v0, v3, Lcom/htc/widget/IHtcListItemTextComponent;

    move/from16 v18, v0

    if-nez v18, :cond_1

    instance-of v0, v3, Lcom/htc/widget/IHtcListItemStampComponent;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    :cond_1
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v3, v15, v1}, Lcom/htc/widget/HtcListItem;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v13, v13, v18

    instance-of v0, v3, Lcom/htc/widget/IHtcListItemControl;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mControlLeftMargin:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mControlRightMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v13, v13, v18

    :cond_3
    :goto_1
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    move-object v5, v3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mControlLeftMargin:I

    move/from16 v18, v0

    add-int v13, v13, v18

    goto :goto_1

    :cond_7
    const/4 v7, 0x1

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    instance-of v0, v5, Lcom/htc/widget/HtcListItemImageComponent;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    sub-int v13, v13, v18

    :cond_8
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    move/from16 v18, v0

    sub-int v18, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListItem;->measureTextComponentWithParentHeightUnknown(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/htc/widget/HtcListItem;->measureMatchParentComponent(Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItem;->setMeasuredDimension(II)V

    :goto_3
    return-void

    :cond_a
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_c

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v14, v1, v2}, Lcom/htc/widget/HtcListItem;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v13, v13, v18

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    if-gt v11, v0, :cond_b

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object v10, v14

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/htc/widget/HtcListItem;->measureMatchParentComponent(Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItem;->setMeasuredDimension(II)V

    goto/16 :goto_3
.end method

.method private defaultModeMeasureAlgorithm(II)V
    .locals 13

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    iget v10, p0, Lcom/htc/widget/HtcListItem;->mDesiredMinHeight:I

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v10, v0, Lcom/htc/widget/HtcListItemComponent;

    if-eqz v10, :cond_0

    move-object v10, v0

    check-cast v10, Lcom/htc/widget/HtcListItemComponent;

    iget-boolean v11, p0, Lcom/htc/widget/HtcListItem;->mIsRevert:Z

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListItemComponent;->setIsRevert(Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    move v7, p1

    instance-of v10, v0, Lcom/htc/widget/IHtcListItemTextComponent;

    if-nez v10, :cond_1

    instance-of v10, v0, Lcom/htc/widget/IHtcListItemStampComponent;

    if-eqz v10, :cond_2

    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :cond_2
    invoke-virtual {p0, v0, v7, p2}, Lcom/htc/widget/HtcListItem;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    instance-of v10, v0, Lcom/htc/widget/IHtcListItemTextComponent;

    if-nez v10, :cond_6

    instance-of v10, v0, Lcom/htc/widget/IHtcListItemControl;

    if-eqz v10, :cond_3

    if-nez v4, :cond_5

    iget v10, p0, Lcom/htc/widget/HtcListItem;->mControlLeftMargin:I

    iget v11, p0, Lcom/htc/widget/HtcListItem;->mControlRightMargin:I

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    :cond_3
    :goto_1
    move-object v2, v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget v10, p0, Lcom/htc/widget/HtcListItem;->mControlLeftMargin:I

    add-int/2addr v6, v10

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_3

    instance-of v10, v2, Lcom/htc/widget/HtcListItemImageComponent;

    if-eqz v10, :cond_3

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v10

    goto :goto_1

    :cond_7
    iget v10, p0, Lcom/htc/widget/HtcListItem;->mDesiredMinHeight:I

    iput v10, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    if-eqz v8, :cond_8

    iget v10, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    sub-int v10, v9, v10

    iget v11, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/htc/widget/HtcListItem;->measureTextComponent(I)V

    iget v10, p0, Lcom/htc/widget/HtcListItem;->mDesiredMinHeight:I

    iget v11, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    add-int/2addr v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/htc/widget/HtcListItem;->setMeasuredDimension(II)V

    :goto_2
    return-void

    :cond_8
    iget v10, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    add-int/2addr v10, v6

    iget v11, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/htc/widget/HtcListItem;->mDesiredMinHeight:I

    iget v12, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    add-int/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/htc/widget/HtcListItem;->setMeasuredDimension(II)V

    goto :goto_2
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawRoundCorner(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mTopRoundCorner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    int-to-float v0, v0

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mTopRoundCorner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    int-to-float v0, v0

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mTopRoundCorner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    int-to-float v0, v0

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mTopRoundCorner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getDividedLeftWidth(I)D
    .locals 21

    const-wide/16 v13, 0x0

    move/from16 v6, p1

    const/4 v5, 0x0

    const/4 v12, 0x0

    move/from16 v7, p1

    const-wide/16 v15, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    instance-of v0, v2, Lcom/htc/widget/IHtcListItemTextComponent;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    instance-of v0, v3, Lcom/htc/widget/HtcListItemImageComponent;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int v6, v6, v17

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int v7, v7, v17

    :cond_0
    const-wide/high16 v17, 0x4000

    add-double v13, v13, v17

    const-wide/high16 v17, 0x4000

    add-double v15, v15, v17

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v6, v6, v17

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v7, v7, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItem;->mTextComponents:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v12, v12, v17

    :cond_1
    :goto_1
    move-object v3, v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    instance-of v0, v2, Lcom/htc/widget/IHtcListItemStampComponent;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    const-wide/high16 v17, 0x3ff0

    add-double v13, v13, v17

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v6, v6, v17

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    add-int v17, v17, v18

    sub-int v7, v7, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItem;->mTextComponents:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v6, v6, v17

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v7, v7, v17

    instance-of v0, v2, Lcom/htc/widget/IHtcListItemControl;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mControlLeftMargin:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mControlRightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v6, v6, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mControlLeftMargin:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mControlRightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v7, v7, v17

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mControlLeftMargin:I

    move/from16 v17, v0

    sub-int v6, v6, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mControlLeftMargin:I

    move/from16 v17, v0

    sub-int v7, v7, v17

    goto/16 :goto_1

    :cond_6
    int-to-double v0, v6

    move-wide/from16 v17, v0

    div-double v10, v17, v13

    int-to-double v0, v9

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff0

    mul-double v19, v19, v10

    cmpg-double v17, v17, v19

    if-gez v17, :cond_9

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListItem;->mShouldUseDividedWidth:Z

    const-wide/16 v17, 0x0

    cmpl-double v17, v15, v17

    if-eqz v17, :cond_8

    int-to-double v0, v7

    move-wide/from16 v17, v0

    div-double v10, v17, v15

    :cond_7
    :goto_2
    return-wide v10

    :cond_8
    const-wide/high16 v10, -0x4010

    goto :goto_2

    :cond_9
    int-to-double v0, v12

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    mul-double v19, v19, v10

    cmpg-double v17, v17, v19

    if-gtz v17, :cond_b

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListItem;->mShouldUseDividedWidth:Z

    const-wide/16 v17, 0x0

    cmpl-double v17, v15, v17

    if-eqz v17, :cond_a

    int-to-double v0, v7

    move-wide/from16 v17, v0

    div-double v10, v17, v15

    goto :goto_2

    :cond_a
    const-wide/high16 v10, -0x4010

    goto :goto_2

    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListItem;->mShouldUseDividedWidth:Z

    const-wide/16 v17, 0x0

    cmpl-double v17, v13, v17

    if-nez v17, :cond_7

    const-wide/high16 v10, -0x4010

    goto :goto_2
.end method

.method private init(Landroid/content/Context;)V
    .locals 9

    const/4 v8, -0x1

    iput-object p1, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080696

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem;->mTopRoundCorner:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080694

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem;->mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mControlLeftMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mControlRightMargin:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem;->mTextComponents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x2050152

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x2050154

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x20d00a4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-double v4, v0

    const-wide/high16 v6, 0x4024

    div-double/2addr v4, v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x2050153

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/widget/HtcListItemUtil;->setAll(Landroid/content/Context;IIIDI)V

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getTotalHeightOfListItem()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mDesiredMinHeight:I

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem;->mDesiredMinHeight:I

    invoke-direct {v0, v8, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v8, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    sget-object v3, Lcom/htc/R$styleable;->HtcListItemMode:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v3, Lcom/android/internal/R$styleable;->InputMethod:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mIsRevert:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;->init(Landroid/content/Context;)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    iput-boolean v2, p0, Lcom/htc/widget/HtcListItem;->mIsRevert:Z

    goto :goto_1
.end method

.method private measureMatchParentComponent(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/high16 v5, 0x4000

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eq v0, p2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private measureTextComponent(I)V
    .locals 11

    const-wide/high16 v9, 0x3fe0

    const/high16 v8, 0x4000

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;->getDividedLeftWidth(I)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/htc/widget/HtcListItem;->mTextComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcListItem;->mTextComponents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v4, v0, Lcom/htc/widget/IHtcListItemTextComponent;

    if-eqz v4, :cond_0

    const-wide/high16 v4, 0x4000

    mul-double/2addr v4, v2

    add-double/2addr v4, v9

    double-to-int v4, v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/htc/widget/HtcListItem;->mShouldUseDividedWidth:Z

    if-eqz v4, :cond_1

    const-wide/high16 v4, 0x3ff0

    mul-double/2addr v4, v2

    add-double/2addr v4, v9

    double-to-int v4, v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/htc/widget/HtcListItem;->mTextComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private measureTextComponentWithParentHeightUnknown(I)Landroid/view/View;
    .locals 10

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;->getDividedLeftWidth(I)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/htc/widget/HtcListItem;->mTextComponents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lcom/htc/widget/HtcListItem;->mTextComponents:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v6, v0, Lcom/htc/widget/IHtcListItemTextComponent;

    if-eqz v6, :cond_1

    const-wide/high16 v6, 0x4000

    mul-double/2addr v6, v4

    const-wide/high16 v8, 0x3fe0

    add-double/2addr v6, v8

    double-to-int v6, v6

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v7, -0x2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-lt v6, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object v3, v0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v6, p0, Lcom/htc/widget/HtcListItem;->mShouldUseDividedWidth:Z

    if-eqz v6, :cond_2

    const-wide/high16 v6, 0x3ff0

    mul-double/2addr v6, v4

    const-wide/high16 v8, 0x3fe0

    add-double/2addr v6, v8

    double-to-int v6, v6

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v7, -0x2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v7, -0x2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/htc/widget/HtcListItem;->mTextComponents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    return-object v3
.end method

.method private originalLayoutMethod()V
    .locals 14

    const/16 v13, 0x8

    iget v6, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    iget v9, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    iget v11, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v12

    if-ge v7, v12, :cond_5

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-ne v12, v13, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v12, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v1, v9, v12

    instance-of v12, v4, Lcom/htc/widget/IHtcListItemTextComponent;

    if-eqz v12, :cond_3

    const/4 v8, 0x1

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v13, :cond_2

    instance-of v12, v5, Lcom/htc/widget/HtcListItemImageComponent;

    if-eqz v12, :cond_2

    iget v12, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v12

    :cond_2
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v6, v12

    div-int/lit8 v12, v12, 0x2

    add-int v3, v11, v12

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v2, v1, v12

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v0, v3, v12

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    iget v12, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v9, v2, v12

    instance-of v12, v4, Lcom/htc/widget/IHtcListItemControl;

    if-eqz v12, :cond_0

    if-eqz v8, :cond_4

    iget v12, p0, Lcom/htc/widget/HtcListItem;->mControlLeftMargin:I

    add-int/2addr v9, v12

    goto :goto_1

    :cond_3
    instance-of v12, v4, Lcom/htc/widget/IHtcListItemControl;

    if-eqz v12, :cond_2

    if-nez v8, :cond_2

    iget v12, p0, Lcom/htc/widget/HtcListItem;->mControlLeftMargin:I

    add-int/2addr v1, v12

    goto :goto_2

    :cond_4
    iget v12, p0, Lcom/htc/widget/HtcListItem;->mControlRightMargin:I

    add-int/2addr v9, v12

    goto :goto_1

    :cond_5
    return-void
.end method

.method private revertLayoutMethod()V
    .locals 15

    const/16 v14, 0x8

    iget v6, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getMeasuredWidth()I

    move-result v12

    iget v13, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    sub-int v10, v12, v13

    iget v11, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v12

    if-ge v7, v12, :cond_6

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-ne v12, v14, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    iget v12, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v2, v10, v12

    instance-of v12, v4, Lcom/htc/widget/IHtcListItemTextComponent;

    if-nez v12, :cond_2

    instance-of v12, v4, Lcom/htc/widget/IHtcListItemStampComponent;

    if-eqz v12, :cond_4

    :cond_2
    const/4 v8, 0x1

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v14, :cond_3

    instance-of v12, v5, Lcom/htc/widget/HtcListItemImageComponent;

    if-eqz v12, :cond_3

    iget v12, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v12

    :cond_3
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v6, v12

    div-int/lit8 v12, v12, 0x2

    add-int v3, v11, v12

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int v1, v2, v12

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v0, v3, v12

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    iget v12, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v10, v1, v12

    instance-of v12, v4, Lcom/htc/widget/IHtcListItemControl;

    if-eqz v12, :cond_0

    if-eqz v8, :cond_5

    iget v12, p0, Lcom/htc/widget/HtcListItem;->mControlLeftMargin:I

    sub-int/2addr v10, v12

    goto :goto_1

    :cond_4
    instance-of v12, v4, Lcom/htc/widget/IHtcListItemControl;

    if-eqz v12, :cond_3

    if-nez v8, :cond_3

    iget v12, p0, Lcom/htc/widget/HtcListItem;->mControlLeftMargin:I

    sub-int/2addr v2, v12

    goto :goto_2

    :cond_5
    iget v12, p0, Lcom/htc/widget/HtcListItem;->mControlRightMargin:I

    sub-int/2addr v10, v12

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;->drawRoundCorner(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;->drawMask(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListItem;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    const/4 v2, -0x2

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method getBottomSpace()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    return v0
.end method

.method getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public getItemHeight()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method getTopSpace()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    return v0
.end method

.method isBottomRounded()Z
    .locals 2

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTopRounded()Z
    .locals 2

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem;->mIsRevert:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListItem;->revertLayoutMethod()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem;->originalLayoutMethod()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;->defaultModeMeasureAlgorithm(II)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;->customizedModeMeasureAlgorithm(II)V

    goto :goto_0
.end method

.method setBottomSpace(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->requestLayout()V

    return-void
.end method

.method setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mDesiredMinHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->requestLayout()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method setLeftSpace(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    return-void
.end method

.method setMask(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method setMaskResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method setRightSpace(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    return-void
.end method

.method public setRoundCorner(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->invalidate()V

    :cond_0
    return-void
.end method

.method setSpaces(IIII)V
    .locals 0

    iput p2, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    iput p4, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    iput p3, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    iput p1, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    return-void
.end method

.method setTopSpace(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->requestLayout()V

    return-void
.end method
