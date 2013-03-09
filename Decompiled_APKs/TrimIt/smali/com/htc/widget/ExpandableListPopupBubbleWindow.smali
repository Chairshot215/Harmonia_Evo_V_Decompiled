.class public Lcom/htc/widget/ExpandableListPopupBubbleWindow;
.super Ljava/lang/Object;
.source "ExpandableListPopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;,
        Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupScrollListener;,
        Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupTouchInterceptor;,
        Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;,
        Lcom/htc/widget/ExpandableListPopupBubbleWindow$ListSelectorHider;,
        Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;,
        Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
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

.field private static final TAG:Ljava/lang/String; = "ExpanableListPopupBubbleWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static mIconOffset:I


# instance fields
.field private constructThreadHash:I

.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownWidth:I

.field private final mExpandCollapseListener:Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ListSelectorHider;

.field private mIndicatorWidht:I

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mMaxWidth:I

.field private mMinWidth:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

.field private mPopup:Lcom/htc/widget/PopupBubbleWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mIconOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 183
    const/4 v0, 0x0

    const v1, 0x20100b0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 194
    const v0, 0x20100b0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    const/4 v2, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHeight:I

    .line 79
    iput v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    .line 83
    iput-boolean v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    .line 84
    iput-boolean v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    .line 85
    const v2, 0x7fffffff

    iput v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mListItemExpandMaximum:I

    .line 88
    iput v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPromptPosition:I

    .line 106
    new-instance v2, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

    invoke-direct {v2, p0, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;)V

    iput-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

    .line 107
    new-instance v2, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupTouchInterceptor;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;)V

    iput-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTouchInterceptor:Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupTouchInterceptor;

    .line 108
    new-instance v2, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupScrollListener;

    invoke-direct {v2, p0, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupScrollListener;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;)V

    iput-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mScrollListener:Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupScrollListener;

    .line 109
    new-instance v2, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;

    invoke-direct {v2, p0, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;)V

    iput-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mExpandCollapseListener:Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;

    .line 110
    new-instance v2, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ListSelectorHider;

    invoke-direct {v2, p0, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ListSelectorHider;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;)V

    iput-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHideSelector:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ListSelectorHider;

    .line 113
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    .line 235
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->constructThreadHash:I

    .line 219
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 220
    new-instance v2, Lcom/htc/widget/PopupBubbleWindow;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    .line 221
    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 223
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x20807c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 224
    .local v0, groupIndicator:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mIndicatorWidht:I

    .line 226
    const v2, 0x2050125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mMaxWidth:I

    .line 227
    const v2, 0x2050126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mMinWidth:I

    .line 229
    const v2, 0x205012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mIconOffset:I

    .line 231
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->constructThreadHash:I

    .line 232
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Landroid/widget/ExpandableListAdapter;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->measureContentWidth(Landroid/widget/ExpandableListAdapter;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/widget/ExpandableListView$OnGroupCollapseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/widget/ExpandableListView$OnGroupExpandListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->constructThreadHash:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)Landroid/widget/ExpandableListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method private buildDropDown()I
    .locals 21

    .prologue
    .line 1045
    const/16 v17, 0x0

    .line 1047
    .local v17, otherHeights:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    if-nez v1, :cond_7

    .line 1048
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 1056
    .local v8, context:Landroid/content/Context;
    new-instance v1, Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1066
    new-instance v2, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mModal:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v8, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    .line 1067
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v3, "list_selector_background"

    const v4, 0x1080062

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setSelector(I)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1072
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mExpandCollapseListener:Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mExpandCollapseListener:Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupExpandCollapseListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setFocusable(Z)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setFocusableInTouchMode(Z)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    new-instance v2, Lcom/htc/widget/ExpandableListPopupBubbleWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$2;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mScrollListener:Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupScrollListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_1

    .line 1104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1107
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    .line 1109
    .local v9, dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    .line 1110
    .local v13, hintView:Landroid/view/View;
    if-eqz v13, :cond_2

    .line 1113
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1114
    .local v11, hintContainer:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1116
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v12, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1120
    .local v12, hintParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPromptPosition:I

    packed-switch v1, :pswitch_data_0

    .line 1132
    const-string v1, "ExpanableListPopupBubbleWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hint position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPromptPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1139
    .local v20, widthSpec:I
    const/4 v10, 0x0

    .line 1140
    .local v10, heightSpec:I
    move/from16 v0, v20

    invoke-virtual {v13, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1141
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1142
    .restart local v12       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v1, v2

    .line 1145
    move-object v9, v11

    .line 1148
    .end local v10           #heightSpec:I
    .end local v11           #hintContainer:Landroid/widget/LinearLayout;
    .end local v12           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v20           #widthSpec:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1, v9}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 1161
    .end local v8           #context:Landroid/content/Context;
    .end local v13           #hintView:Landroid/view/View;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    const/4 v14, 0x1

    .line 1163
    .local v14, ignoreBottomDecorations:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v1, v2, v3, v14}, Lcom/htc/widget/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v16

    .line 1168
    .local v16, maxHeight:I
    const/16 v18, 0x0

    .line 1169
    .local v18, padding:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1170
    .local v7, background:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_4

    .line 1171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v18, v1, v2

    .line 1175
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    .line 1176
    :cond_5
    add-int v1, v16, v18

    .line 1188
    :goto_4
    return v1

    .line 1066
    .end local v7           #background:Landroid/graphics/drawable/Drawable;
    .end local v9           #dropDownView:Landroid/view/ViewGroup;
    .end local v14           #ignoreBottomDecorations:Z
    .end local v16           #maxHeight:I
    .end local v18           #padding:I
    .restart local v8       #context:Landroid/content/Context;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1122
    .restart local v9       #dropDownView:Landroid/view/ViewGroup;
    .restart local v11       #hintContainer:Landroid/widget/LinearLayout;
    .restart local v12       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13       #hintView:Landroid/view/View;
    :pswitch_0
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1127
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1128
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1150
    .end local v8           #context:Landroid/content/Context;
    .end local v9           #dropDownView:Landroid/view/ViewGroup;
    .end local v11           #hintContainer:Landroid/widget/LinearLayout;
    .end local v12           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #hintView:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1151
    .restart local v9       #dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 1152
    .local v19, view:Landroid/view/View;
    if-eqz v19, :cond_3

    .line 1153
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1155
    .restart local v12       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v1, v2

    goto/16 :goto_2

    .line 1161
    .end local v12           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v19           #view:Landroid/view/View;
    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    .line 1179
    .restart local v7       #background:Landroid/graphics/drawable/Drawable;
    .restart local v14       #ignoreBottomDecorations:Z
    .restart local v16       #maxHeight:I
    .restart local v18       #padding:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    sub-int v5, v16, v17

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mockMeasureHeightOfChildren(IIIII)I

    move-result v15

    .line 1183
    .local v15, listContent:I
    if-lez v15, :cond_a

    add-int v17, v17, v18

    .line 1186
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mIndicatorWidht:I

    sub-int/2addr v2, v3

    sget v3, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mIconOffset:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sget v4, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mIconOffset:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setIndicatorBounds(II)V

    .line 1188
    add-int v1, v15, v17

    goto :goto_4

    .line 1120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkWidthLimit(I)I
    .locals 1
    .parameter "width"

    .prologue
    .line 497
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mMinWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 498
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mMaxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 499
    return p1
.end method

.method private measureContentWidth(Landroid/widget/ExpandableListAdapter;)I
    .locals 13
    .parameter "adapter"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1468
    const/4 v11, 0x0

    .line 1469
    .local v11, width:I
    const/4 v10, 0x0

    .line 1470
    .local v10, itemView:Landroid/view/View;
    const/4 v9, 0x0

    .line 1471
    .local v9, itemType:I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1473
    .local v12, widthMeasureSpec:I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1475
    .local v8, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    .line 1476
    .local v7, groupCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 1478
    invoke-interface {p1, v1, v3, v4, v4}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 1479
    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    .line 1480
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1481
    invoke-interface {p1, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    .line 1482
    .local v6, childCount:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v6, :cond_0

    move-object v0, p1

    move-object v5, v4

    .line 1483
    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 1484
    invoke-virtual {v10, v12, v8}, Landroid/view/View;->measure(II)V

    .line 1485
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1482
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1476
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1488
    .end local v2           #j:I
    .end local v6           #childCount:I
    :cond_1
    return v11
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    .line 707
    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 708
    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 709
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 710
    check-cast v0, Landroid/view/ViewGroup;

    .line 711
    .local v0, group:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 714
    .end local v0           #group:Landroid/view/ViewGroup;
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    .line 764
    .local v0, list:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    if-eqz v0, :cond_0

    .line 766
    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->access$602(Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;Z)Z

    .line 769
    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->requestLayout()V

    .line 771
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 679
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    .line 680
    invoke-direct {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->removePromptView()V

    .line 681
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 683
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    if-eqz v0, :cond_0

    .line 684
    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 686
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    .line 687
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 688
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListView()Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    const/4 v0, 0x0

    .line 815
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    const-wide/high16 v0, -0x8000

    .line 841
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    const/4 v0, -0x1

    .line 828
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    const/4 v0, 0x0

    .line 854
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    return v0
.end method

.method internalDismiss()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    .line 693
    invoke-direct {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->removePromptView()V

    .line 694
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 695
    return-void
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

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

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 887
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 893
    const/16 v9, 0x3e

    if-eq p1, v9, :cond_8

    iget-object v9, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v9}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    const/16 v9, 0x42

    if-eq p1, v9, :cond_8

    const/16 v9, 0x17

    if-eq p1, v9, :cond_8

    .line 897
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v9}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getSelectedItemPosition()I

    move-result v4

    .line 900
    .local v4, curIndex:I
    iget-object v9, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v9}, Lcom/htc/widget/PopupBubbleWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    .line 902
    .local v2, below:Z
    :goto_0
    iget-object v9, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v9}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 905
    .local v0, adapter:Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 906
    .local v5, firstItem:I
    const/high16 v6, -0x8000

    .line 908
    .local v6, lastItem:I
    if-eqz v0, :cond_1

    .line 910
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 911
    .local v1, allEnabled:Z
    if-eqz v1, :cond_5

    move v5, v8

    .line 913
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 917
    .end local v1           #allEnabled:Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    if-ne p1, v11, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_7

    if-ne p1, v12, :cond_7

    if-lt v4, v6, :cond_7

    .line 921
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->clearListSelection()V

    .line 922
    iget-object v8, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v8, v7}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 923
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    .line 969
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v6           #lastItem:I
    :goto_3
    :sswitch_0
    return v7

    .restart local v4       #curIndex:I
    :cond_4
    move v2, v8

    .line 900
    goto :goto_0

    .line 911
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v1       #allEnabled:Z
    .restart local v2       #below:Z
    .restart local v5       #firstItem:I
    .restart local v6       #lastItem:I
    :cond_5
    iget-object v9, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v9, v8, v7}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mockLookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_1

    .line 913
    :cond_6
    iget-object v9, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10, v8}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mockLookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_2

    .line 928
    .end local v1           #allEnabled:Z
    :cond_7
    iget-object v9, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    #setter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mListSelectionHidden:Z
    invoke-static {v9, v8}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->access$602(Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;Z)Z

    .line 931
    iget-object v9, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v9, p1, p2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 934
    .local v3, consumed:Z
    if-eqz v3, :cond_9

    .line 937
    iget-object v9, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 942
    iget-object v9, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v9}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->requestFocusFromTouch()Z

    .line 943
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    .line 945
    sparse-switch p1, :sswitch_data_0

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v3           #consumed:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v6           #lastItem:I
    :cond_8
    move v7, v8

    .line 969
    goto :goto_3

    .line 955
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #below:Z
    .restart local v3       #consumed:Z
    .restart local v4       #curIndex:I
    .restart local v5       #firstItem:I
    .restart local v6       #lastItem:I
    :cond_9
    if-eqz v2, :cond_a

    if-ne p1, v12, :cond_a

    .line 958
    if-ne v4, v6, :cond_8

    goto :goto_3

    .line 961
    :cond_a
    if-nez v2, :cond_8

    if-ne p1, v11, :cond_8

    if-ne v4, v5, :cond_8

    goto :goto_3

    .line 945
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
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1013
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1016
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 1017
    .local v0, anchorView:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1018
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1019
    .local v1, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 1020
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1034
    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v2

    .line 1023
    .restart local v0       #anchorView:Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1024
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1025
    .restart local v1       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 1026
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1028
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1029
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    goto :goto_0

    .line 1034
    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    .line 984
    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 985
    .local v0, consumed:Z
    if-eqz v0, :cond_0

    .line 986
    sparse-switch p1, :sswitch_data_0

    .line 998
    .end local v0           #consumed:Z
    :cond_0
    :goto_0
    return v0

    .line 992
    .restart local v0       #consumed:Z
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    goto :goto_0

    .line 998
    .end local v0           #consumed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 986
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public performItemClick(I)Z
    .locals 7
    .parameter "position"

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 798
    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    .line 799
    .local v1, list:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 800
    .local v2, child:Landroid/view/View;
    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 801
    .local v6, adapter:Landroid/widget/ListAdapter;
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 803
    .end local v1           #list:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    .end local v2           #child:Landroid/view/View;
    .end local v6           #adapter:Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    .line 805
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 584
    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 245
    new-instance v0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupDataSetObserver;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;)V

    iput-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 250
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 251
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 253
    const-string v0, "ExpandableListPopupBubbleWindow"

    const-string v1, "register expandable data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 259
    if-nez p1, :cond_2

    .line 260
    const-string v0, "ExpandableListPopupBubbleWindow"

    const-string v1, "unregister expandable data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2
    return-void

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 248
    const-string v0, "ExpandableListPopupBubbleWindow"

    const-string v1, "unregister expandable data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 430
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .parameter "animationStyle"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setAnimationStyle(I)V

    .line 401
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .parameter "width"

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->checkWidthLimit(I)I

    move-result p1

    .line 489
    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 490
    .local v0, popupBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 491
    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 492
    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    .line 494
    :cond_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .parameter "dropDownAlwaysVisible"

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    .line 334
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .parameter "forceIgnoreOutsideTouch"

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    .line 319
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 515
    iput p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHeight:I

    .line 516
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 445
    iput p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    .line 446
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 730
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 872
    iput p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mListItemExpandMaximum:I

    .line 873
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "selector"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 376
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .parameter "modal"

    .prologue
    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mModal:Z

    .line 298
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setFocusable(Z)V

    .line 299
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0
    .parameter "onChildClickListener"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 533
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 704
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0
    .parameter "onGroupClickListener"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 537
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .parameter "onGroupCollapseListener"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 543
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .parameter "onGroupExpandListener"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 548
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 527
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 528
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "selectedListener"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 560
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 274
    iput p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPromptPosition:I

    .line 275
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .parameter "prompt"

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    .line 570
    .local v0, showing:Z
    if-eqz v0, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->removePromptView()V

    .line 573
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    .line 574
    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    .line 577
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    .line 749
    .local v0, list:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 750
    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->access$602(Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;Z)Z

    .line 751
    invoke-virtual {v0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setSelection(I)V

    .line 752
    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setItemChecked(IZ)V

    .line 756
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setSoftInputMode(I)V

    .line 357
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 461
    iput p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownVerticalOffset:I

    .line 462
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 478
    iput p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    .line 479
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 591
    invoke-direct {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->buildDropDown()I

    move-result v6

    .line 593
    .local v6, height:I
    const/4 v4, 0x0

    .line 594
    .local v4, widthSpec:I
    const/4 v5, 0x0

    .line 596
    .local v5, heightSpec:I
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isInputMethodNotNeeded()Z

    move-result v7

    .line 597
    .local v7, noInputMethod:Z
    iget-object v8, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    if-nez v7, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v8, v0}, Lcom/htc/widget/PopupBubbleWindow;->setAllowScrollingAnchorParent(Z)V

    .line 599
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 600
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_2

    .line 603
    const/4 v4, -0x1

    .line 610
    :goto_1
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_8

    .line 613
    if-eqz v7, :cond_4

    move v5, v6

    .line 614
    :goto_2
    if-eqz v7, :cond_6

    .line 615
    iget-object v8, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_5

    move v0, v3

    :goto_3
    invoke-virtual {v8, v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    .line 630
    :goto_4
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-boolean v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_a

    :goto_5
    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOutsideTouchable(Z)V

    .line 632
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/PopupBubbleWindow;->update(Landroid/view/View;IIII)V

    .line 673
    :cond_0
    :goto_6
    return-void

    :cond_1
    move v0, v2

    .line 597
    goto :goto_0

    .line 604
    :cond_2
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_3

    .line 605
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1

    .line 607
    :cond_3
    iget v4, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    goto :goto_1

    :cond_4
    move v5, v3

    .line 613
    goto :goto_2

    :cond_5
    move v0, v2

    .line 615
    goto :goto_3

    .line 619
    :cond_6
    iget-object v8, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_7

    move v0, v3

    :goto_7
    invoke-virtual {v8, v0, v3}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_7

    .line 624
    :cond_8
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_9

    .line 625
    move v5, v6

    goto :goto_4

    .line 627
    :cond_9
    iget v5, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHeight:I

    goto :goto_4

    :cond_a
    move v1, v2

    .line 630
    goto :goto_5

    .line 635
    :cond_b
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_e

    .line 636
    const/4 v4, -0x1

    .line 645
    :goto_8
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_10

    .line 646
    const/4 v5, -0x1

    .line 655
    :goto_9
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    .line 656
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setClipToScreenEnabled(Z)V

    .line 660
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-boolean v8, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_12

    iget-boolean v8, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_12

    :goto_a
    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOutsideTouchable(Z)V

    .line 661
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mTouchInterceptor:Lcom/htc/widget/ExpandableListPopupBubbleWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 662
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/htc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 664
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setSelection(I)V

    .line 666
    iget-boolean v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mModal:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownList:Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 667
    :cond_c
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->clearListSelection()V

    .line 669
    :cond_d
    iget-boolean v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mModal:Z

    if-nez v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mHideSelector:Lcom/htc/widget/ExpandableListPopupBubbleWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 638
    :cond_e
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_f

    .line 639
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    goto :goto_8

    .line 641
    :cond_f
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v8, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownWidth:I

    invoke-virtual {v0, v8}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    goto :goto_8

    .line 648
    :cond_10
    iget v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_11

    .line 649
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v6}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    goto :goto_9

    .line 651
    :cond_11
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mPopup:Lcom/htc/widget/PopupBubbleWindow;

    iget v8, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->mDropDownHeight:I

    invoke-virtual {v0, v8}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    goto :goto_9

    :cond_12
    move v1, v2

    .line 660
    goto :goto_a
.end method
