.class public Lcom/htc/widget/ListPopupBubbleWindow;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;,
        Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;,
        Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;,
        Lcom/htc/widget/ListPopupBubbleWindow$ListSelectorHider;,
        Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;,
        Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;,
        Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupBubbleWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constructThreadHash:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownWidth:I

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHideSelector:Lcom/htc/widget/ListPopupBubbleWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mMaxWidth:I

.field private mMinWidth:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mPopup:Lcom/htc/widget/PopupBubbleWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x20100b0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x20100b0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    iput v4, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    iput v4, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    iput-boolean v3, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    iput-boolean v3, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    const v1, 0x7fffffff

    iput v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mListItemExpandMaximum:I

    iput v3, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptPosition:I

    new-instance v1, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V

    iput-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    new-instance v1, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V

    iput-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mTouchInterceptor:Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;

    new-instance v1, Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V

    iput-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mScrollListener:Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;

    new-instance v1, Lcom/htc/widget/ListPopupBubbleWindow$ListSelectorHider;

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/ListPopupBubbleWindow$ListSelectorHider;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V

    iput-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHideSelector:Lcom/htc/widget/ListPopupBubbleWindow$ListSelectorHider;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->constructThreadHash:I

    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/htc/widget/PopupBubbleWindow;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mMaxWidth:I

    const v1, 0x2050126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mMinWidth:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->constructThreadHash:I

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/ListPopupBubbleWindow;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/ListPopupBubbleWindow;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->constructThreadHash:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/ListPopupBubbleWindow;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/ListPopupBubbleWindow;Landroid/widget/ListAdapter;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v0

    return v0
.end method

.method private buildDropDown()I
    .locals 25

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/htc/widget/ListPopupBubbleWindow$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/widget/ListPopupBubbleWindow$1;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mModal:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v8, v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v3, "list_selector_holo_dark"

    const v4, 0x1080686

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setSelector(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v0, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v0, v10, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setVerticalFadingEdgeEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    new-instance v2, Lcom/htc/widget/ListPopupBubbleWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/widget/ListPopupBubbleWindow$2;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mScrollListener:Lcom/htc/widget/ListPopupBubbleWindow$PopupScrollListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    if-eqz v15, :cond_5

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v14, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptPosition:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "ListPopupBubbleWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hint position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    const/4 v12, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0, v12}, Landroid/view/View;->measure(II)V

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v21, v1, v2

    move-object v11, v13

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1, v11}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    move/from16 v0, v17

    invoke-virtual {v1, v2, v3, v0}, Lcom/htc/widget/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v20

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v22, v1, v2

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    :cond_8
    add-int v1, v20, v22

    :goto_6
    return v1

    :pswitch_0
    invoke-virtual {v13, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v21, v1, v2

    goto/16 :goto_4

    :cond_a
    const/16 v17, 0x0

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    sub-int v5, v20, v21

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mockMeasureHeightOfChildren(IIIII)I

    move-result v19

    if-lez v19, :cond_c

    add-int v21, v21, v22

    :cond_c
    add-int v1, v19, v21

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkWidthLimit(I)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mMinWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mMaxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    if-eq v5, v3, :cond_0

    move v3, v5

    const/4 v4, 0x0

    :cond_0
    invoke-interface {p1, v2, v9, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v6
.end method

.method private removePromptView()V
    .locals 3

    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    new-instance v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;)V

    iput-object p1, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;)V

    iput-object p1, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearListSelection()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;Z)Z

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    invoke-direct {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->removePromptView()V

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iput-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismissWithoutAnimation()V

    invoke-direct {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->removePromptView()V

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iput-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    return v0
.end method

.method internalDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    invoke-direct {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->removePromptView()V

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getInputMethodMode()I

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

.method public isModal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13

    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x3e

    if-eq p1, v9, :cond_8

    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    const/16 v9, 0x42

    if-eq p1, v9, :cond_8

    const/16 v9, 0x17

    if-eq p1, v9, :cond_8

    :cond_0
    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v9}, Lcom/htc/widget/PopupBubbleWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    const v5, 0x7fffffff

    const/high16 v6, -0x8000

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    move v5, v8

    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    if-ne p1, v11, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_7

    if-ne p1, v12, :cond_7

    if-lt v4, v6, :cond_7

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->clearListSelection()V

    iget-object v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v8, v7}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    :goto_3
    :sswitch_0
    return v7

    :cond_4
    move v2, v8

    goto :goto_0

    :cond_5
    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9, v8, v7}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mockLookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_1

    :cond_6
    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10, v8}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mockLookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_2

    :cond_7
    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    #setter for: Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v9, v8}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;Z)Z

    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9, p1, p2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    iget-object v9, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->requestFocusFromTouch()Z

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    sparse-switch p1, :sswitch_data_0

    :cond_8
    move v7, v8

    goto :goto_3

    :cond_9
    if-eqz v2, :cond_a

    if-ne p1, v12, :cond_a

    if-ne v4, v6, :cond_8

    goto :goto_3

    :cond_a
    if-nez v2, :cond_8

    if-ne p1, v11, :cond_8

    if-ne v4, v5, :cond_8

    goto :goto_3

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
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public performItemClick(I)Z
    .locals 7

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    new-instance v0, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/ListPopupBubbleWindow$PopupDataSetObserver;-><init>(Lcom/htc/widget/ListPopupBubbleWindow;Lcom/htc/widget/ListPopupBubbleWindow$1;)V

    iput-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const-string v0, "ListPopupBubbleWindow"

    const-string v1, "register data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-nez p1, :cond_2

    const-string v0, "ListPopupBubbleWindow"

    const-string v1, "unregister list data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const-string v0, "ListPopupBubbleWindow"

    const-string v1, "unregister data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/htc/widget/ListPopupBubbleWindow;->checkWidthLimit(I)I

    move-result p1

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    :cond_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mListItemExpandMaximum:I

    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setModal(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mModal:Z

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptPosition:I

    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->removePromptView()V

    :cond_0
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;Z)Z

    invoke-virtual {v0, p1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setSelection(I)V

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setSoftInputMode(I)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    return-void
.end method

.method public show()V
    .locals 10

    const/4 v1, 0x1

    const/4 v9, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->buildDropDown()I

    move-result v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->isInputMethodNotNeeded()Z

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    if-nez v7, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v8, v0}, Lcom/htc/widget/PopupBubbleWindow;->setAllowScrollingAnchorParent(Z)V

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_2

    const/4 v4, -0x1

    :goto_1
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_8

    if-eqz v7, :cond_4

    move v5, v6

    :goto_2
    if-eqz v7, :cond_6

    iget-object v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_5

    move v0, v3

    :goto_3
    invoke-virtual {v8, v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    :goto_4
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-boolean v3, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_a

    :goto_5
    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/PopupBubbleWindow;->update(Landroid/view/View;IIII)V

    :cond_0
    :goto_6
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    goto :goto_1

    :cond_4
    move v5, v3

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    iget-object v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_7

    move v0, v3

    :goto_7
    invoke-virtual {v8, v0, v3}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_9

    move v5, v6

    goto :goto_4

    :cond_9
    iget v5, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    goto :goto_4

    :cond_a
    move v1, v2

    goto :goto_5

    :cond_b
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_e

    const/4 v4, -0x1

    :goto_8
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_10

    const/4 v5, -0x1

    :goto_9
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setClipToScreenEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-boolean v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_12

    iget-boolean v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_12

    :goto_a
    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mTouchInterceptor:Lcom/htc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/htc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setSelection(I)V

    iget-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mModal:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->clearListSelection()V

    :cond_d
    iget-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mModal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mHideSelector:Lcom/htc/widget/ListPopupBubbleWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_e
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_f

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    invoke-virtual {v0, v8}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    goto :goto_8

    :cond_10
    iget v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_11

    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v6}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    goto :goto_9

    :cond_11
    iget-object v0, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v8, p0, Lcom/htc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    invoke-virtual {v0, v8}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    goto :goto_9

    :cond_12
    move v1, v2

    goto :goto_a
.end method
