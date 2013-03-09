.class public Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;
.super Ljava/lang/Object;


# static fields
.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field private static final POSITION_PROMPT_ABOVE:I = 0x0

.field private static final POSITION_PROMPT_BELOW:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mListItemExpandMaximum:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptPosition:I

    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mResizePopupRunnable:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTouchInterceptor:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;

    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mScrollListener:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;

    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHideSelector:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mListItemExpandMaximum:I

    return v0
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mResizePopupRunnable:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Z
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    return v0
.end method

.method private buildDropDown()I
    .locals 8

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    if-nez v0, :cond_4

    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mModal:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {v4, v5, v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    new-instance v4, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$1;

    invoke-direct {v4, p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$1;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mScrollListener:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupScrollListener;

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v6, :cond_a

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f80

    invoke-direct {v5, v3, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v7, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptPosition:I

    packed-switch v7, :pswitch_data_0

    :goto_1
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    const/high16 v5, -0x8000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v6, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    :goto_2
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    move v6, v0

    :goto_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iput v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownVerticalOffset:I

    :cond_2
    move v7, v0

    :goto_4
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    :goto_5
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownVerticalOffset:I

    invoke-direct {p0, v0, v4, v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    if-ne v2, v3, :cond_6

    add-int/2addr v0, v7

    :goto_6
    return v0

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    move v6, v0

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_5

    :cond_6
    sub-int v4, v0, v6

    move-object v0, p0

    move v2, v1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->measureHeightOfChildren(IIIII)I

    move-result v0

    if-lez v0, :cond_7

    add-int/2addr v6, v7

    :cond_7
    add-int/2addr v0, v6

    goto :goto_6

    :cond_8
    move v7, v1

    goto :goto_4

    :cond_9
    move v6, v1

    goto :goto_3

    :cond_a
    move-object v4, v0

    move v0, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    sub-int/2addr v0, p2

    aget v2, v2, v5

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private isInputMethodNotNeeded()Z
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureHeightOfChildren(IIIII)I
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getListPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getListPaddingBottom()I

    move-result v1

    add-int v2, v0, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getListPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getListPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v1

    move v3, v1

    :goto_1
    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    :cond_2
    :goto_2
    if-le p2, p3, :cond_4

    move v2, v0

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-interface {v1, p2, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getCacheColorHint()I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getCacheColorHint()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_5
    invoke-direct {p0, v1, p2, p1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->measureScrapChild(Landroid/view/View;II)V

    if-lez p2, :cond_6

    add-int/2addr v0, v3

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    if-lt v1, p4, :cond_8

    if-ltz p5, :cond_7

    if-le p2, p5, :cond_7

    if-lez v2, :cond_7

    if-ne v1, p4, :cond_0

    :cond_7
    move v2, p4

    goto :goto_0

    :cond_8
    if-ltz p5, :cond_9

    if-lt p2, p5, :cond_9

    move v0, v1

    :goto_3
    add-int/lit8 p2, p2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    #setter for: Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->access$0(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;Z)V

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mResizePopupRunnable:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupDataSetObserver;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    goto :goto_0
.end method

.method public setInputMethodMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public setModal(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mModal:Z

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public show()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->buildDropDown()I

    move-result v5

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v2

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    if-ne v3, v0, :cond_2

    move v4, v0

    :goto_0
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    if-ne v3, v0, :cond_8

    if-eqz v2, :cond_4

    :goto_1
    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    if-ne v3, v0, :cond_5

    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    :cond_4
    move v5, v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    if-ne v3, v0, :cond_7

    move v1, v0

    :cond_7
    invoke-virtual {v2, v1, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    if-eq v0, v6, :cond_0

    iget v5, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    goto :goto_3

    :cond_9
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    if-ne v2, v0, :cond_c

    move v2, v0

    :goto_5
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    if-ne v3, v0, :cond_e

    move v1, v0

    :goto_6
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mTouchInterceptor:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHorizontalOffset:I

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->setSelection(I)V

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mModal:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownList:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->clearListSelection()V

    :cond_b
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mModal:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mHideSelector:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_c
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_d

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto :goto_5

    :cond_d
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto :goto_5

    :cond_e
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    if-ne v3, v6, :cond_f

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_6

    :cond_f
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->mDropDownHeight:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_6
.end method
