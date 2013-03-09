.class public Lcom/htc/widget/DropDownList;
.super Landroid/widget/FrameLayout;
.source "DropDownList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/DropDownList$PopupDataSetObserver;,
        Lcom/htc/widget/DropDownList$PassThroughClickListener;,
        Lcom/htc/widget/DropDownList$DropDownListView;,
        Lcom/htc/widget/DropDownList$DropDownItemClickListener;,
        Lcom/htc/widget/DropDownList$PopupTouchInterceptor;,
        Lcom/htc/widget/DropDownList$OnDropDownListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "DropDownList"


# instance fields
.field private final DEFAULT_SHADOW_OFFSET:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mArrowView:Landroid/widget/ImageView;

.field private mBottomCornerRound:Z

.field private mContext:Landroid/content/Context;

.field private mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mData:Ljava/lang/Object;

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private final mDropDownItemClickListener:Lcom/htc/widget/DropDownList$DropDownItemClickListener;

.field private mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

.field private mDropDownListBackground:Landroid/graphics/drawable/Drawable;

.field private mDropDownListContainer:Landroid/widget/FrameLayout;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownMaxHeight:I

.field private mDropDownVerticalOffset:I

.field private mDropDownWidth:I

.field private mEnableSelectable:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mListDivider:Landroid/graphics/drawable/Drawable;

.field private mMaxListViewHeight:I

.field private mMaxListViewHeightInLandMode:I

.field private mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

.field private mPassThroughClickListener:Lcom/htc/widget/DropDownList$PassThroughClickListener;

.field private mPopup:Landroid/widget/PopupWindow;

.field private final mRelativeRect:Landroid/graphics/Rect;

.field private mShowArrow:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopCornerRound:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/DropDownList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/DropDownList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v1, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/widget/DropDownList;->DEFAULT_SHADOW_OFFSET:I

    iput-boolean v2, p0, Lcom/htc/widget/DropDownList;->mShowArrow:Z

    iput v1, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    iput v1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mRelativeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/htc/widget/DropDownList;->mTopCornerRound:Z

    iput-boolean v2, p0, Lcom/htc/widget/DropDownList;->mBottomCornerRound:Z

    new-instance v0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/DropDownList$DropDownItemClickListener;-><init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownItemClickListener:Lcom/htc/widget/DropDownList$DropDownItemClickListener;

    iput v3, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeight:I

    iput v3, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeightInLandMode:I

    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/PopupWindow;

    const v1, 0x101006b

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x2030090

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/DropDownList;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/DropDownList;->setFocusableInTouchMode(Z)V

    new-instance v0, Lcom/htc/widget/DropDownList$PassThroughClickListener;

    invoke-direct {v0, p0}, Lcom/htc/widget/DropDownList$PassThroughClickListener;-><init>(Lcom/htc/widget/DropDownList;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mPassThroughClickListener:Lcom/htc/widget/DropDownList$PassThroughClickListener;

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPassThroughClickListener:Lcom/htc/widget/DropDownList$PassThroughClickListener;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/DropDownList;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/DropDownList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList;->updateDropDownForFilter(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/DropDownList$OnDropDownListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/DropDownList$DropDownListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/DropDownList;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mRelativeRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/DropDownList;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/DropDownList;->performItemClick(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget/DropDownList;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList;->onClickImpl(Landroid/view/View;)V

    return-void
.end method

.method private buildDropDown()I
    .locals 22

    const/16 v19, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/DropDownList;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v1, Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-direct {v1, v10}, Lcom/htc/widget/DropDownList$DropDownListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/DropDownList;->setupDropDownList()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/DropDownList;->mDropDownListBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/DropDownList;->mShowArrow:Z

    if-eqz v1, :cond_3

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x20900cb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    if-eqz v11, :cond_0

    const v1, 0x2020212

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    const v1, 0x2020211

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    move-object/from16 v0, v18

    invoke-virtual {v13, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    add-int v19, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/DropDownList;->getWidth()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    move/from16 v0, v21

    invoke-virtual {v1, v0, v15}, Landroid/widget/ImageView;->measure(II)V

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    add-int v19, v1, v2

    move-object v12, v11

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    move/from16 v0, v16

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v5

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v20, v1, v2

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    add-int v1, v5, v20

    :goto_3
    return v1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v19, v1, v2

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/widget/DropDownList$DropDownListView;->mockMeasureHeightOfChildren(IIIII)I

    move-result v17

    if-lez v17, :cond_7

    add-int v17, v17, v20

    :cond_7
    add-int v1, v17, v19

    goto :goto_3
.end method

.method private initDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    if-nez p3, :cond_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/DropDownList;->addDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method private onClickImpl(Landroid/view/View;)V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DropDownList"

    const-string v2, "onClickImpl DropDownList does not have focus, request for focus!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->requestFocus()Z

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    invoke-direct {p0}, Lcom/htc/widget/DropDownList;->buildDropDown()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeight:I

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeightInLandMode:I

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private performItemClick(Landroid/view/View;IJ)V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemPosition()I

    move-result p2

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemId()J

    move-result-wide p3

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_2
    return-void
.end method

.method private updateDropDownForFilter(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0
.end method


# virtual methods
.method public addDropListHeaderView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList$DropDownListView;->addHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public addDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/htc/widget/DropDownList;->mData:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/htc/widget/DropDownList;->mEnableSelectable:Z

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/DropDownList$DropDownListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public clearListSelection()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList$DropDownListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public dismissDropDown()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iput-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getDropDownAnchorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/htc/widget/DropDownList;->mDropDownAnchorView:Landroid/view/View;

    goto :goto_0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getDropDownMaximumHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    return v0
.end method

.method public getListDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOnCreateContextMenuListener()Landroid/view/View$OnCreateContextMenuListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-object v0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public isPopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/htc/widget/DropDownList;->buildDropDown()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeight:I

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeightInLandMode:I

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDisplayHint(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x3e

    if-eq p1, v9, :cond_9

    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    const/16 v9, 0x42

    if-eq p1, v9, :cond_9

    const/16 v9, 0x17

    if-eq p1, v9, :cond_9

    :cond_0
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v2, 0x1

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    const v5, 0x7fffffff

    const/high16 v7, -0x8000

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v5, 0x0

    :goto_1
    if-eqz v1, :cond_7

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    const/16 v9, 0x13

    if-ne p1, v9, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_8

    const/16 v9, 0x14

    if-ne p1, v9, :cond_8

    if-lt v4, v7, :cond_8

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    const/4 v6, 0x1

    :cond_4
    :goto_3
    return v6

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/DropDownList$DropDownListView;->lookForSelectablePos(IZ)I

    move-result v5

    goto :goto_1

    :cond_7
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/DropDownList$DropDownListView;->lookForSelectablePos(IZ)I

    move-result v7

    goto :goto_2

    :cond_8
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    const/4 v10, 0x0

    #setter for: Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v9, v10}, Lcom/htc/widget/DropDownList$DropDownListView;->access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z

    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v9, p1, p2}, Lcom/htc/widget/DropDownList$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    const-string v9, "DropDownList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Key down: code="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " list consumed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a

    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/DropDownList$DropDownListView;->requestFocusFromTouch()Z

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    sparse-switch p1, :sswitch_data_0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v9, :cond_4

    iget-object v8, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v8, :cond_4

    const/4 v9, 0x1

    #setter for: Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v8, v9}, Lcom/htc/widget/DropDownList$DropDownListView;->access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z

    invoke-virtual {v8}, Lcom/htc/widget/DropDownList$DropDownListView;->requestLayout()V

    goto :goto_3

    :sswitch_0
    const/4 v6, 0x1

    goto :goto_3

    :cond_a
    if-eqz v2, :cond_b

    const/16 v9, 0x14

    if-ne p1, v9, :cond_b

    if-ne v4, v7, :cond_9

    const/4 v6, 0x1

    goto :goto_3

    :cond_b
    if-nez v2, :cond_9

    const/16 v9, 0x13

    if-ne p1, v9, :cond_9

    if-ne v4, v5, :cond_9

    const/4 v6, 0x1

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/widget/DropDownList$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/widget/DropDownList;->performItemClick(Landroid/view/View;IJ)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->hasFocus()Z

    move-result v1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->performClick()Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    if-nez v0, :cond_3

    new-instance v0, Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/DropDownList$PopupDataSetObserver;-><init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setArrowEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mShowArrow:Z

    return-void
.end method

.method setArrowLocation()V
    .locals 11

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    new-array v2, v7, [I

    invoke-virtual {p0, v2}, Lcom/htc/widget/DropDownList;->getLocationInWindow([I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/widget/DropDownList;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const-string v7, "DropDownList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "icon location in window = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " window visible display frame="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    aget v8, v2, v10

    add-int/2addr v7, v8

    add-int/lit8 v3, v7, 0x8

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    if-le v5, v1, :cond_2

    const-string v7, "DropDownList"

    const-string v8, "popupWidth > displayWidth"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v7, v2, v10

    add-int/lit8 v4, v7, -0x8

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v7, v4, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    return-void

    :cond_2
    add-int v7, v5, v3

    if-le v7, v1, :cond_3

    const-string v7, "DropDownList"

    const-string v8, "popupWidth + offset > displayWidth"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v7, v2, v10

    sub-int v6, v1, v7

    sub-int v7, v5, v6

    add-int/lit8 v4, v7, -0x8

    goto :goto_0

    :cond_3
    if-gez v3, :cond_4

    aget v7, v2, v10

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    if-le v5, v7, :cond_4

    const-string v7, "DropDownList"

    const-string v8, "offset < 0 && popupWidth > frameLoc[0] + getWidth()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v7, v2, v10

    add-int/lit8 v4, v7, -0x8

    goto :goto_0

    :cond_4
    if-lez v3, :cond_5

    if-lez v3, :cond_7

    add-int v7, v3, v5

    aget v8, v2, v10

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_7

    :cond_5
    if-gtz v3, :cond_6

    const-string v7, "DropDownList"

    const-string v8, "offset <= 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v5, -0x3c

    goto :goto_0

    :cond_6
    const-string v7, "DropDownList"

    const-string v8, "(offset > 0 && offset + popupWidth < frameLoc[0] + getWidth())"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    if-lez v3, :cond_0

    iget v7, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    if-gez v7, :cond_0

    const-string v7, "DropDownList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "offset > 0 && mDropDownHorizontalOffset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    neg-int v4, v7

    goto :goto_0
.end method

.method public setDropDownAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    return-void
.end method

.method public setDropDownHighlight(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public setDropDownListViewBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mDropDownListBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDropDownMaximumHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    :cond_0
    return v0
.end method

.method public setListCornerRoundedEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mTopCornerRound:Z

    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mBottomCornerRound:Z

    return-void
.end method

.method public setListCornerRoundedEnabled(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mTopCornerRound:Z

    iput-boolean p2, p0, Lcom/htc/widget/DropDownList;->mBottomCornerRound:Z

    return-void
.end method

.method public setListDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setListSelection(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList$DropDownListView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setMaxDropDownListViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeight:I

    return-void
.end method

.method public setMaxDropDownListViewHeightInLandMode(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeightInLandMode:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPassThroughClickListener:Lcom/htc/widget/DropDownList$PassThroughClickListener;

    #setter for: Lcom/htc/widget/DropDownList$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;
    invoke-static {v0, p1}, Lcom/htc/widget/DropDownList$PassThroughClickListener;->access$102(Lcom/htc/widget/DropDownList$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method public setOnDropDownListener(Lcom/htc/widget/DropDownList$OnDropDownListener;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/widget/DropDownList$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/DropDownList$1;-><init>(Lcom/htc/widget/DropDownList;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method setupDropDownList()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mData:Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/htc/widget/DropDownList;->mEnableSelectable:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/widget/DropDownList;->initDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20805af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v5}, Lcom/htc/widget/DropDownList$DropDownListView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v5}, Lcom/htc/widget/DropDownList$DropDownListView;->setCacheColorHint(I)V

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/DropDownList$DropDownListView;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mDropDownItemClickListener:Lcom/htc/widget/DropDownList$DropDownItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/DropDownList$DropDownListView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/DropDownList$DropDownListView;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_0
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    new-instance v2, Lcom/htc/widget/DropDownList$2;

    invoke-direct {v2, p0}, Lcom/htc/widget/DropDownList$2;-><init>(Lcom/htc/widget/DropDownList;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method public showDropDown()V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v12, -0x2

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/htc/widget/DropDownList;->buildDropDown()I

    move-result v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    const/4 v11, 0x2

    if-ne v3, v11, :cond_2

    move v9, v0

    :goto_0
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    if-ne v3, v2, :cond_3

    const/4 v4, -0x1

    :goto_1
    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    if-ne v3, v2, :cond_a

    if-eqz v9, :cond_6

    move v5, v8

    :goto_2
    if-eqz v9, :cond_8

    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    iget v11, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    if-ne v11, v2, :cond_7

    :goto_3
    invoke-virtual {v3, v2, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    :goto_4
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    add-int/lit8 v2, v2, -0x8

    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :goto_5
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->setArrowLocation()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    invoke-interface {v0}, Lcom/htc/widget/DropDownList$OnDropDownListener;->onShow()V

    :cond_1
    return-void

    :cond_2
    move v9, v1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    if-ne v3, v12, :cond_5

    const/4 v10, 0x0

    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v10, v3, v11

    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v4, v3, v10

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    goto :goto_1

    :cond_6
    move v5, v2

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    iget v11, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    if-ne v11, v2, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {v3, v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    :cond_a
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    if-ne v1, v12, :cond_c

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-le v8, v1, :cond_b

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-lez v1, :cond_b

    iget v5, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    :goto_6
    goto :goto_4

    :cond_b
    move v5, v8

    goto :goto_6

    :cond_c
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    iget v2, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-le v1, v2, :cond_d

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-lez v1, :cond_d

    iget v5, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    :goto_7
    goto :goto_4

    :cond_d
    iget v5, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    goto :goto_7

    :cond_e
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    if-ne v1, v2, :cond_f

    const/4 v4, -0x1

    :goto_8
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    if-ne v1, v2, :cond_12

    const/4 v5, -0x1

    :goto_9
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/htc/widget/DropDownList$PopupTouchInterceptor;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/htc/widget/DropDownList$PopupTouchInterceptor;-><init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    add-int/lit8 v3, v3, -0x8

    iget v11, p0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v3, v11}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setSelection(I)V

    goto/16 :goto_5

    :cond_f
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    if-ne v1, v12, :cond_11

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_10

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int v10, v1, v3

    :cond_10
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_8

    :cond_11
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_8

    :cond_12
    const/4 v7, 0x0

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    if-ne v1, v12, :cond_14

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-le v8, v1, :cond_13

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-lez v1, :cond_13

    iget v7, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    :goto_a
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_9

    :cond_13
    move v7, v8

    goto :goto_a

    :cond_14
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-le v1, v3, :cond_15

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-lez v1, :cond_15

    iget v7, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    :goto_b
    goto :goto_a

    :cond_15
    iget v7, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    goto :goto_b
.end method
