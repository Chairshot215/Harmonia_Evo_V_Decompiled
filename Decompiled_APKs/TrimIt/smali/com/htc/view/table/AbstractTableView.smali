.class public abstract Lcom/htc/view/table/AbstractTableView;
.super Lcom/htc/view/table/AbstractAdapterView;
.source "AbstractTableView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/view/table/AbstractTableView$1;,
        Lcom/htc/view/table/AbstractTableView$SelectionPadding;,
        Lcom/htc/view/table/AbstractTableView$FlingRunnable;,
        Lcom/htc/view/table/AbstractTableView$RecycleBin;,
        Lcom/htc/view/table/AbstractTableView$RecyclerListener;,
        Lcom/htc/view/table/AbstractTableView$LayoutParams;,
        Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;,
        Lcom/htc/view/table/AbstractTableView$PerformClick;,
        Lcom/htc/view/table/AbstractTableView$WindowRunnnable;,
        Lcom/htc/view/table/AbstractTableView$SavedState;,
        Lcom/htc/view/table/AbstractTableView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/view/table/AbstractAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/view/GestureDetector$OnGestureListener;"
    }
.end annotation


# static fields
.field protected static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field protected static final LAYOUT_FORCE_TOP:I = 0x1

.field protected static final LAYOUT_MOVE_SELECTION:I = 0x6

.field protected static final LAYOUT_MOVE_SELECTION_CENTER:I = 0x7

.field protected static final LAYOUT_NORMAL:I = 0x0

.field protected static final LAYOUT_SET_SELECTION:I = 0x2

.field protected static final LAYOUT_SPECIFIC:I = 0x4

.field protected static final LAYOUT_SYNC:I = 0x5

.field protected static final PROFILE_FLINGING:Z = false

.field protected static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbstractTableView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field private static final TRACE_CONVERTVIEW:Ljava/lang/String; = "TraceConvertView"

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static final converViewLog:Z

.field private static final layoutLOG:Z

.field private static final localLOGV:Z


# instance fields
.field protected focusSelection:Lcom/htc/view/FocusSelection;

.field private initialWithScrollControl:Z

.field isScrollOverBoundary:Z

.field mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCycle:Z

.field mDataSetObserver:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/view/table/AbstractAdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field mDrawSelectorOnTop:Z

.field private mFiltered:Z

.field protected mFlingProfilingStarted:Z

.field protected mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsChildViewEnabled:Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field protected mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field protected mMaxScrollOverhead:I

.field mMotionCorrection:I

.field protected mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;

.field mPopup:Landroid/widget/PopupWindow;

.field final mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

.field protected mRequestedStartPosition:I

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field protected mScrollStartPos:I

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field private mSelectedChild:Landroid/view/View;

.field mSelectedOrnTop:I

.field private mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mShouldStopFling:Z

.field private mSpacing:I

.field mStackFromBottom:Z

.field protected mTableLayoutParams:Lcom/htc/view/table/TableLayoutParams;

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTranscriptMode:I

.field mWidthHeightMeasureSpec:I

.field protected scrollControl:Lcom/htc/view/ScrollControl;

.field protected tableColleague:Lcom/htc/view/table/TableColleague;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 393
    invoke-direct {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;-><init>(Landroid/content/Context;)V

    .line 151
    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 166
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    .line 176
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    .line 182
    new-instance v1, Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/htc/view/table/AbstractTableView$RecycleBin;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    .line 189
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    .line 194
    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mWidthHeightMeasureSpec:I

    .line 216
    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    .line 231
    new-instance v1, Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    .line 237
    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    .line 284
    sget v1, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 295
    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mLastTouchMode:I

    .line 301
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractTableView;->mFlingProfilingStarted:Z

    .line 328
    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mLastScrollState:I

    .line 339
    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mRequestedStartPosition:I

    .line 341
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractTableView;->mCycle:Z

    .line 2516
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->isScrollOverBoundary:Z

    .line 2553
    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mSpacing:I

    .line 2555
    const/16 v1, 0x50

    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    .line 2557
    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    .line 394
    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->initAbsListView()V

    .line 396
    sget-object v1, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 397
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 398
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 399
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 402
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/view/table/AbstractTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 403
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

    const/4 v8, 0x0

    .line 406
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 166
    iput-boolean v8, p0, Lcom/htc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    .line 176
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    .line 182
    new-instance v7, Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-direct {v7, p0}, Lcom/htc/view/table/AbstractTableView$RecycleBin;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v7, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    .line 189
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    .line 194
    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mWidthHeightMeasureSpec:I

    .line 216
    iput v9, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    .line 231
    new-instance v7, Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-direct {v7, p0}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v7, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    .line 237
    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    .line 284
    sget v7, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v7, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 286
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 295
    iput v9, p0, Lcom/htc/view/table/AbstractTableView;->mLastTouchMode:I

    .line 301
    iput-boolean v8, p0, Lcom/htc/view/table/AbstractTableView;->mFlingProfilingStarted:Z

    .line 328
    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mLastScrollState:I

    .line 339
    iput v9, p0, Lcom/htc/view/table/AbstractTableView;->mRequestedStartPosition:I

    .line 341
    iput-boolean v8, p0, Lcom/htc/view/table/AbstractTableView;->mCycle:Z

    .line 2516
    iput-boolean v10, p0, Lcom/htc/view/table/AbstractTableView;->isScrollOverBoundary:Z

    .line 2553
    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mSpacing:I

    .line 2555
    const/16 v7, 0x50

    iput v7, p0, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    .line 2557
    iput v9, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    .line 407
    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->initAbsListView()V

    .line 409
    sget-object v7, Landroid/R$styleable;->AbsListView:[I

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 412
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 413
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 414
    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 417
    :cond_0
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    .line 420
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 421
    .local v4, stackFromBottom:Z
    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->setStackFromBottom(Z)V

    .line 423
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 424
    .local v3, scrollingCacheEnabled:Z
    invoke-virtual {p0, v3}, Lcom/htc/view/table/AbstractTableView;->setScrollingCacheEnabled(Z)V

    .line 426
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 427
    .local v6, useTextFilter:Z
    invoke-virtual {p0, v6}, Lcom/htc/view/table/AbstractTableView;->setTextFilterEnabled(Z)V

    .line 429
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 431
    .local v5, transcriptMode:I
    invoke-virtual {p0, v5}, Lcom/htc/view/table/AbstractTableView;->setTranscriptMode(I)V

    .line 433
    const/4 v7, 0x6

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 434
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setCacheColorHint(I)V

    .line 436
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 437
    return-void
.end method

.method static synthetic access$1100(Lcom/htc/view/table/AbstractTableView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/view/table/AbstractTableView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/htc/view/table/AbstractTableView;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/view/table/AbstractTableView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/view/table/AbstractTableView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/view/table/AbstractTableView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/view/table/AbstractTableView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/view/table/AbstractTableView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2929
    const/4 v6, 0x0

    .line 2931
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2932
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/view/table/AbstractAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2936
    :cond_0
    if-nez v6, :cond_1

    .line 2937
    new-instance v0, Lcom/htc/view/table/AbstractAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/view/table/AbstractAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2938
    invoke-super {p0, p0}, Lcom/htc/view/table/AbstractAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2940
    :cond_1
    if-eqz v6, :cond_2

    .line 2941
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    .line 2942
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    .line 2948
    :goto_0
    return v6

    .line 2945
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    goto :goto_0
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2920
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 2921
    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2920
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2924
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    .line 2925
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1054
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1055
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1057
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 1855
    sparse-switch p2, :sswitch_data_0

    .line 1881
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1857
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 1858
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 1859
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 1860
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 1884
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 1885
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 1886
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 1863
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 1864
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 1865
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 1866
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 1867
    .restart local v1       #dY:I
    goto :goto_0

    .line 1869
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 1870
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 1871
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 1872
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 1873
    .restart local v1       #dY:I
    goto :goto_0

    .line 1875
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 1876
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 1877
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 1878
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1879
    .restart local v1       #dY:I
    goto :goto_0

    .line 1855
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setFocusable(Z)V

    .line 533
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setFocusableInTouchMode(Z)V

    .line 534
    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setWillNotDraw(Z)V

    .line 535
    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 536
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setScrollingCacheEnabled(Z)V

    .line 537
    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setVerticalScrollBarEnabled(Z)V

    .line 538
    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setHorizontalScrollBarEnabled(Z)V

    .line 539
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 1325
    const/4 v6, 0x0

    .line 1327
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/view/table/AbstractAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1331
    :cond_0
    if-nez v6, :cond_1

    .line 1332
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/view/table/AbstractTableView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1333
    invoke-super {p0, p0}, Lcom/htc/view/table/AbstractAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1335
    :cond_1
    return v6
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->getLeftPadding()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v2}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->getTopPadding()I

    move-result v2

    sub-int v2, p2, v2

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v3}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->getRightPadding()I

    move-result v3

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v4}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->getBottomPadding()I

    move-result v4

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 984
    return-void
.end method

.method private showPopup()V
    .locals 6

    .prologue
    .line 1830
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1831
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1832
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 1833
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->getLocationOnScreen([I)V

    .line 1834
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x14

    .line 1835
    .local v0, bottomGap:I
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1838
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->checkFocus()V

    .line 1840
    .end local v0           #bottomGap:I
    .end local v1           #screenHeight:I
    .end local v2           #xy:[I
    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 543
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1478
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v2

    .line 1479
    .local v2, count:I
    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    .line 1480
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1482
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 1493
    :cond_0
    return-void

    .line 1486
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1487
    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1488
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1489
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1486
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 2034
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1998
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 2055
    instance-of v0, p1, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    return v0
.end method

.method protected clearScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1513
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mCachingStarted:Z

    if-eqz v0, :cond_2

    .line 1514
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1515
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1516
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1518
    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1519
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invalidate()V

    .line 1521
    :cond_1
    iput-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mCachingStarted:Z

    .line 1523
    :cond_2
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 1963
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 1964
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    .line 1966
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1967
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->dismissPopup()V

    .line 1970
    :cond_0
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1259
    new-instance v0, Lcom/htc/view/table/AbstractAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/view/table/AbstractAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1505
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 1506
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1507
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1508
    iput-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mCachingStarted:Z

    .line 1510
    :cond_0
    return-void
.end method

.method public detachViewsFromParent(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 2996
    invoke-super {p0, p1, p2}, Lcom/htc/view/table/AbstractAdapterView;->detachViewsFromParent(II)V

    .line 2997
    return-void
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1823
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 988
    const/4 v2, 0x0

    .line 989
    .local v2, saveCount:I
    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 990
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 992
    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mScrollX:I

    .line 993
    .local v3, scrollX:I
    iget v4, p0, Lcom/htc/view/table/AbstractTableView;->mScrollY:I

    .line 994
    .local v4, scrollY:I
    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/view/table/AbstractTableView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/view/table/AbstractTableView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/view/table/AbstractTableView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/view/table/AbstractTableView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 997
    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/view/table/AbstractTableView;->mGroupFlags:I

    .line 1000
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    .line 1001
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1002
    invoke-direct {p0, p1}, Lcom/htc/view/table/AbstractTableView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1005
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1007
    if-eqz v1, :cond_2

    .line 1008
    invoke-direct {p0, p1}, Lcom/htc/view/table/AbstractTableView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1011
    :cond_2
    if-eqz v0, :cond_3

    .line 1012
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1013
    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/view/table/AbstractTableView;->mGroupFlags:I

    .line 1015
    :cond_3
    return-void

    .line 989
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 1386
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1139
    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->drawableStateChanged()V

    .line 1140
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1143
    :cond_0
    return-void
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/htc/view/table/AbstractTableView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/view/table/AbstractTableView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 2045
    new-instance v0, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/view/table/AbstractTableView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/view/table/AbstractTableView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2050
    new-instance v0, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/view/table/AbstractTableView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 2979
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllVisibleViews()[Landroid/view/View;
    .locals 3

    .prologue
    .line 3085
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v2

    new-array v0, v2, [Landroid/view/View;

    .line 3086
    .local v0, children:[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3087
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3086
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3089
    :cond_0
    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    .line 809
    .local v1, count:I
    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 810
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 820
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 813
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/view/table/AbstractTableView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 814
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 817
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 818
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v4

    .line 819
    .local v4, height:I
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 820
    .local v3, fadeLength:F
    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 2105
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    return v0
.end method

.method public getCenterChildPosition()I
    .locals 9

    .prologue
    .line 3029
    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    if-nez v7, :cond_1

    .line 3030
    const/4 v0, 0x0

    .line 3057
    :cond_0
    :goto_0
    return v0

    .line 3031
    :cond_1
    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v7}, Lcom/htc/view/table/TableColleague;->getCenterOfTable()I

    move-result v4

    .line 3032
    .local v4, galleryCenter:I
    const v3, 0x7fffffff

    .line 3033
    .local v3, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 3034
    .local v6, newSelectedChildIndex:I
    const/4 v0, 0x0

    .line 3035
    .local v0, center_intTag:I
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_2

    .line 3037
    invoke-virtual {p0, v5}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3039
    .local v1, child:Landroid/view/View;
    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v7, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v7

    if-gt v7, v4, :cond_3

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v7, v1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v7

    if-lt v7, v4, :cond_3

    .line 3041
    move v6, v5

    .line 3042
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3054
    .end local v1           #child:Landroid/view/View;
    :cond_2
    iget-boolean v7, p0, Lcom/htc/view/table/AbstractTableView;->mCycle:Z

    if-nez v7, :cond_0

    .line 3057
    iget v7, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    add-int v0, v7, v6

    goto :goto_0

    .line 3046
    .restart local v1       #child:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v7, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget-object v8, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v8, v1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3048
    .local v2, childClosestEdgeDistance:I
    if-ge v2, v3, :cond_4

    .line 3049
    move v3, v2

    .line 3050
    move v6, v5

    .line 3035
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public abstract getDefaultHTableColleague()Lcom/htc/view/table/HTableColleague;
.end method

.method public abstract getDefaultVTableColleague()Lcom/htc/view/table/VTableColleague;
.end method

.method public getFocusSelection()Lcom/htc/view/FocusSelection;
    .locals 1

    .prologue
    .line 2502
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->focusSelection:Lcom/htc/view/FocusSelection;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 519
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 523
    invoke-virtual {p0, v0, p1}, Lcom/htc/view/table/AbstractTableView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 1542
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 1532
    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxScrollOverhead()I
    .locals 1

    .prologue
    .line 3136
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    return v0
.end method

.method public getScrollControl()Lcom/htc/view/ScrollControl;
    .locals 1

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->scrollControl:Lcom/htc/view/ScrollControl;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 860
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 861
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 863
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 2084
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    return v0
.end method

.method public getTableLayoutParams()Lcom/htc/view/table/TableLayoutParams;
    .locals 1

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mTableLayoutParams:Lcom/htc/view/table/TableLayoutParams;

    return-object v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    .line 792
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 793
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 802
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 796
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 797
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 800
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 801
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 802
    .local v2, fadeLength:F
    iget v4, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 2079
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 10

    .prologue
    const/4 v3, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1703
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mItemCount:I

    .line 1704
    .local v0, count:I
    if-lez v0, :cond_a

    .line 1711
    iget-boolean v5, p0, Lcom/htc/view/table/AbstractTableView;->mNeedSync:Z

    if-eqz v5, :cond_3

    .line 1713
    iput-boolean v7, p0, Lcom/htc/view/table/AbstractTableView;->mNeedSync:Z

    .line 1715
    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mTranscriptMode:I

    if-eq v5, v9, :cond_0

    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mTranscriptMode:I

    if-ne v5, v4, :cond_2

    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/view/table/AbstractTableView;->mOldItemCount:I

    if-lt v5, v6, :cond_2

    .line 1718
    :cond_0
    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 1814
    :cond_1
    :goto_0
    return-void

    .line 1722
    :cond_2
    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mSyncMode:I

    packed-switch v5, :pswitch_data_0

    .line 1770
    :cond_3
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1772
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getSelectedItemPosition()I

    move-result v1

    .line 1775
    .local v1, newPos:I
    if-lt v1, v0, :cond_4

    .line 1776
    add-int/lit8 v1, v0, -0x1

    .line 1778
    :cond_4
    if-gez v1, :cond_5

    .line 1779
    const/4 v1, 0x0

    .line 1783
    :cond_5
    invoke-virtual {p0, v1, v4}, Lcom/htc/view/table/AbstractTableView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 1785
    .local v2, selectablePos:I
    if-ltz v2, :cond_8

    .line 1786
    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 1724
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1729
    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 1730
    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mSyncPosition:I

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mSyncPosition:I

    goto :goto_0

    .line 1736
    :cond_6
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->findSyncPosition()I

    move-result v1

    .line 1737
    .restart local v1       #newPos:I
    if-ltz v1, :cond_3

    .line 1739
    invoke-virtual {p0, v1, v4}, Lcom/htc/view/table/AbstractTableView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 1740
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_3

    .line 1742
    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mSyncPosition:I

    .line 1744
    iget-wide v3, p0, Lcom/htc/view/table/AbstractTableView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 1747
    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 1755
    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 1751
    :cond_7
    iput v9, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    goto :goto_1

    .line 1763
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 1764
    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mSyncPosition:I

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mSyncPosition:I

    goto :goto_0

    .line 1790
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_8
    invoke-virtual {p0, v1, v7}, Lcom/htc/view/table/AbstractTableView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 1791
    if-ltz v2, :cond_a

    .line 1792
    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 1799
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_9
    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    if-gez v5, :cond_1

    .line 1807
    :cond_a
    iget-boolean v5, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v5, :cond_b

    :goto_2
    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 1808
    sget v3, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    .line 1809
    sget-wide v3, Lcom/htc/view/table/AbstractTableView;->INVALID_ROW_ID:J

    iput-wide v3, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedRowId:J

    .line 1810
    sget v3, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mNextSelectedPosition:I

    .line 1811
    sget-wide v3, Lcom/htc/view/table/AbstractTableView;->INVALID_ROW_ID:J

    iput-wide v3, p0, Lcom/htc/view/table/AbstractTableView;->mNextSelectedRowId:J

    .line 1812
    iput-boolean v7, p0, Lcom/htc/view/table/AbstractTableView;->mNeedSync:Z

    .line 1813
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_b
    move v3, v4

    .line 1807
    goto :goto_2

    .line 1722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 1976
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 2

    .prologue
    .line 1546
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    sget v1, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    if-eq v0, v1, :cond_1

    .line 1547
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 1548
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 1549
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 1552
    :cond_0
    sget v0, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setSelectedPositionInt(I)V

    .line 1553
    sget v0, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    .line 1554
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    .line 1555
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1557
    :cond_1
    return-void
.end method

.method protected abstract initTableColleague()V
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 1586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mDataChanged:Z

    .line 1587
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->rememberSyncState()V

    .line 1588
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->requestLayout()V

    .line 1589
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invalidate()V

    .line 1590
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScroll(Lcom/htc/view/table/AbstractTableView;III)V

    .line 456
    :cond_0
    return-void
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 1891
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilterEnabled:Z

    return v0
.end method

.method keyPressed()V
    .locals 7

    .prologue
    .line 1107
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1108
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1109
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1111
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    .line 1112
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isLongClickable()Z

    move-result v1

    .line 1113
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1114
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    instance-of v4, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_1

    .line 1115
    if-eqz v1, :cond_4

    .line 1116
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1122
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v4, p0, Lcom/htc/view/table/AbstractTableView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 1123
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPendingCheckForKeyLongPress:Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;

    if-nez v4, :cond_2

    .line 1124
    new-instance v4, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;-><init>(Lcom/htc/view/table/AbstractTableView;Lcom/htc/view/table/AbstractTableView$1;)V

    iput-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPendingCheckForKeyLongPress:Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;

    .line 1126
    :cond_2
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPendingCheckForKeyLongPress:Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;

    invoke-virtual {v4}, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1127
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPendingCheckForKeyLongPress:Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/view/table/AbstractTableView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1130
    .end local v1           #longClickable:Z
    :cond_3
    return-void

    .line 1119
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #longClickable:Z
    :cond_4
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 855
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 927
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 930
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 936
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 943
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_0

    .line 944
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 945
    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 946
    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 965
    :cond_0
    :goto_0
    return-object v0

    .line 955
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 956
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 957
    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method public offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 2959
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 2960
    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2959
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2962
    :cond_0
    return-void
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 2971
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 2972
    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2971
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2974
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1186
    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->onAttachedToWindow()V

    .line 1188
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1189
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1190
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1192
    :cond_0
    return-void
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->onUp()V

    .line 2581
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 1148
    iget-boolean v4, p0, Lcom/htc/view/table/AbstractTableView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 1150
    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1176
    :cond_0
    :goto_0
    return-object v3

    .line 1156
    :cond_1
    sget-object v4, Lcom/htc/view/table/AbstractTableView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1161
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/view/table/AbstractAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1162
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1163
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 1164
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1165
    move v0, v2

    .line 1171
    :cond_2
    if-ltz v0, :cond_0

    .line 1172
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1163
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1196
    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->onDetachedFromWindow()V

    .line 1198
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1199
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1202
    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2587
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->stop(Z)V

    .line 2588
    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    .line 2591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/table/AbstractTableView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    .line 2593
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 2595
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    .line 2596
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2600
    :cond_0
    return v2
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 2037
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 2038
    sget v0, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 2039
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->resurrectSelection()Z

    .line 2041
    :cond_0
    return-void
.end method

.method protected onFinishedMovement()V
    .locals 0

    .prologue
    .line 3066
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 2606
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableColleague;->setCloseBouncing(Z)V

    .line 2609
    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    .line 2610
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {v0, v1, p3, p4}, Lcom/htc/view/table/TableColleague;->fling(Lcom/htc/view/table/AbstractTableView$FlingRunnable;FF)V

    .line 2611
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 757
    invoke-super {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 758
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->resurrectSelection()Z

    .line 762
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 1980
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1982
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1983
    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->showPopup()V

    .line 1992
    :cond_0
    :goto_0
    return-void

    .line 1987
    :cond_1
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1988
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->dismissPopup()V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1368
    sparse-switch p1, :sswitch_data_0

    .line 1379
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/view/table/AbstractAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1371
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1373
    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1374
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/view/table/AbstractTableView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1375
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    .line 1376
    const/4 v1, 0x1

    goto :goto_0

    .line 1368
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 842
    invoke-super/range {p0 .. p5}, Lcom/htc/view/table/AbstractAdapterView;->onLayout(ZIIII)V

    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mInLayout:Z

    .line 845
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->layoutChildren()V

    .line 846
    iput-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mInLayout:Z

    .line 847
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->initialWithScrollControl:Z

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->scrollIntoSlots()V

    .line 849
    iput-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->initialWithScrollControl:Z

    .line 852
    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2636
    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    if-gez v2, :cond_1

    .line 2642
    :cond_0
    :goto_0
    return-void

    .line 2639
    :cond_1
    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 2640
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/view/table/AbstractTableView;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 827
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->useDefaultSelector()V

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    .line 831
    .local v0, listPadding:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    if-nez v1, :cond_1

    .line 832
    new-instance v1, Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-direct {v1, p0}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    .line 834
    :cond_1
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->getLeftPadding()I

    move-result v1

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 835
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->getTopPadding()I

    move-result v1

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 836
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->getRightPadding()I

    move-result v1

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 837
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->getBottomPadding()I

    move-result v1

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 838
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .parameter "state"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 697
    move-object v2, p1

    check-cast v2, Lcom/htc/view/table/AbstractTableView$SavedState;

    .line 699
    .local v2, ss:Lcom/htc/view/table/AbstractTableView$SavedState;
    invoke-virtual {v2}, Lcom/htc/view/table/AbstractTableView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/htc/view/table/AbstractAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 700
    iput-boolean v5, p0, Lcom/htc/view/table/AbstractTableView;->mDataChanged:Z

    .line 702
    iget v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->height:I

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/htc/view/table/AbstractTableView;->mSyncHeight:J

    .line 704
    iget-wide v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->selectedId:J

    cmp-long v3, v3, v6

    if-ltz v3, :cond_2

    .line 705
    iput-boolean v5, p0, Lcom/htc/view/table/AbstractTableView;->mNeedSync:Z

    .line 706
    iget-wide v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->selectedId:J

    iput-wide v3, p0, Lcom/htc/view/table/AbstractTableView;->mSyncRowId:J

    .line 707
    iget v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->position:I

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mSyncPosition:I

    .line 708
    iget v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->viewTop:I

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mSpecificTop:I

    .line 709
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mSyncMode:I

    .line 723
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 724
    .local v1, keyboardHidden:I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 725
    iget-object v0, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->filter:Ljava/lang/String;

    .line 726
    .local v0, filterText:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setFilterText(Ljava/lang/String;)V

    .line 728
    .end local v0           #filterText:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->requestLayout()V

    .line 729
    return-void

    .line 710
    .end local v1           #keyboardHidden:I
    :cond_2
    iget-wide v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->firstId:J

    cmp-long v3, v3, v6

    if-ltz v3, :cond_0

    .line 712
    sget v3, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v3}, Lcom/htc/view/table/AbstractTableView;->setSelectedPositionInt(I)V

    .line 714
    sget v3, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v3}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    .line 715
    iput-boolean v5, p0, Lcom/htc/view/table/AbstractTableView;->mNeedSync:Z

    .line 716
    iget-wide v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->firstId:J

    iput-wide v3, p0, Lcom/htc/view/table/AbstractTableView;->mSyncRowId:J

    .line 717
    iget v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->position:I

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mSyncPosition:I

    .line 718
    iget v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->viewTop:I

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mSpecificTop:I

    .line 719
    iput v5, p0, Lcom/htc/view/table/AbstractTableView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 651
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->dismissPopup()V

    .line 653
    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 655
    .local v5, superState:Landroid/os/Parcelable;
    new-instance v4, Lcom/htc/view/table/AbstractTableView$SavedState;

    invoke-direct {v4, v5}, Lcom/htc/view/table/AbstractTableView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 657
    .local v4, ss:Lcom/htc/view/table/AbstractTableView$SavedState;
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v1, 0x1

    .line 658
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getSelectedItemId()J

    move-result-wide v2

    .line 659
    .local v2, selectedId:J
    iput-wide v2, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->selectedId:J

    .line 660
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v9

    iput v9, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->height:I

    .line 662
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_2

    .line 664
    iget v8, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    iput v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->viewTop:I

    .line 665
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->position:I

    .line 666
    sget v8, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    int-to-long v8, v8

    iput-wide v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->firstId:J

    .line 681
    :goto_1
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->filter:Ljava/lang/String;

    .line 682
    iget-boolean v8, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    if-eqz v8, :cond_0

    .line 683
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    .line 684
    .local v6, textFilter:Landroid/widget/EditText;
    if-eqz v6, :cond_0

    .line 685
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 686
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->filter:Ljava/lang/String;

    .line 692
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v6           #textFilter:Landroid/widget/EditText;
    :cond_0
    return-object v4

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v8

    .line 657
    goto :goto_0

    .line 668
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    if-eqz v1, :cond_3

    .line 670
    invoke-virtual {p0, v8}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 671
    .local v7, v:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->viewTop:I

    .line 672
    iget v8, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    iput v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->position:I

    .line 673
    iget-object v8, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->firstId:J

    goto :goto_1

    .line 675
    .end local v7           #v:Landroid/view/View;
    :cond_3
    iput v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->viewTop:I

    .line 676
    sget v9, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    int-to-long v9, v9

    iput-wide v9, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->firstId:J

    .line 677
    iput v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->position:I

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2648
    iget-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mCycle:Z

    if-nez v1, :cond_2

    .line 2650
    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2651
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getCenterChildPosition()I

    move-result v1

    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    .line 2653
    :cond_0
    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_5

    .line 2654
    :cond_1
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v1, v5}, Lcom/htc/view/table/TableColleague;->setCloseBouncing(Z)V

    .line 2661
    :cond_2
    :goto_0
    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    if-eq v1, v3, :cond_4

    .line 2662
    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    .line 2663
    invoke-virtual {p0, v5}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    .line 2664
    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2665
    .local v0, motionView:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 2666
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2668
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    .line 2671
    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2684
    .end local v0           #motionView:Landroid/view/View;
    :cond_4
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2687
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    float-to-int v2, p3

    mul-int/lit8 v2, v2, -0x1

    float-to-int v3, p4

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3, v5}, Lcom/htc/view/table/TableColleague;->scrollWithConstrain(IIZ)V

    .line 2689
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->findMotionRow(I)I

    move-result v1

    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    .line 2690
    return v4

    .line 2656
    :cond_5
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v1, v4}, Lcom/htc/view/table/TableColleague;->setCloseBouncing(Z)V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "e"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 2695
    iget v4, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    if-nez v4, :cond_1

    .line 2696
    iput v6, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    .line 2697
    iget v4, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2698
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2699
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 2701
    iget-boolean v4, p0, Lcom/htc/view/table/AbstractTableView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 2703
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->layoutChildren()V

    .line 2704
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 2705
    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->positionSelector(Landroid/view/View;)V

    .line 2706
    invoke-virtual {p0, v6}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    .line 2708
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 2709
    .local v3, longPressTimeout:I
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isLongClickable()Z

    move-result v2

    .line 2711
    .local v2, longClickable:Z
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 2712
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2713
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 2714
    if-eqz v2, :cond_2

    .line 2715
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2722
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 2723
    iput v7, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    .line 2730
    .end local v0           #child:Landroid/view/View;
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_1
    :goto_1
    return-void

    .line 2717
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #longClickable:Z
    .restart local v3       #longPressTimeout:I
    :cond_2
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 2726
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_3
    iput v7, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 2734
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 2741
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/view/table/AbstractTableView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2745
    const/4 v0, 0x1

    .line 2748
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mDataChanged:Z

    .line 1021
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->rememberSyncState()V

    .line 1023
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2005
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    .line 2006
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2007
    .local v1, length:I
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 2008
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 2010
    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->showPopup()V

    .line 2011
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    .line 2017
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 2018
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2020
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 2021
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 2028
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 2012
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 2014
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2015
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    goto :goto_0

    .line 2023
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1456
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v2, :cond_0

    .line 1457
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1459
    :cond_0
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1461
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1462
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1464
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->onUp()V

    .line 1469
    :cond_1
    :goto_0
    return v1

    .line 1465
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1466
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->onCancel()V

    goto :goto_0
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 1436
    if-eqz p1, :cond_0

    .line 1438
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->hideSelector()V

    .line 1442
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1445
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 1447
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->layoutChildren()V

    .line 1450
    :cond_0
    return-void
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 2564
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    .line 2566
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->layoutChildren()V

    .line 2568
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    #getter for: Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->access$1000(Lcom/htc/view/table/AbstractTableView$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2569
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->scrollIntoSlots()V

    .line 2572
    :cond_0
    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->dispatchUnpress()V

    .line 2573
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1206
    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->onWindowFocusChanged(Z)V

    .line 1208
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 1210
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_2

    .line 1211
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1213
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1215
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->dismissPopup()V

    .line 1217
    if-ne v0, v2, :cond_0

    .line 1219
    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 1244
    :cond_0
    :goto_1
    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mLastTouchMode:I

    .line 1245
    return-void

    .end local v0           #touchMode:I
    :cond_1
    move v0, v2

    .line 1208
    goto :goto_0

    .line 1222
    .restart local v0       #touchMode:I
    :cond_2
    iget-boolean v3, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    if-eqz v3, :cond_3

    .line 1224
    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->showPopup()V

    .line 1228
    :cond_3
    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mLastTouchMode:I

    if-eq v0, v3, :cond_0

    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1230
    if-ne v0, v2, :cond_4

    .line 1232
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->resurrectSelection()Z

    goto :goto_1

    .line 1236
    :cond_4
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->hideSelector()V

    .line 1237
    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 1239
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1397
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1398
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 1399
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1400
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1403
    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    .line 1404
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1405
    invoke-virtual {p0, v3}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1406
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1407
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1408
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1409
    iget v4, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 1413
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 1404
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1413
    .end local v0           #child:Landroid/view/View;
    :cond_2
    sget v4, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1426
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->pointToPosition(II)I

    move-result v0

    .line 1427
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 1428
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1430
    :goto_0
    return-wide v1

    :cond_0
    sget-wide v1, Lcom/htc/view/table/AbstractTableView;->INVALID_ROW_ID:J

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 969
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    .line 970
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 971
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/view/table/AbstractTableView;->positionSelector(IIII)V

    .line 974
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mIsChildViewEnabled:Z

    .line 975
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 976
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractTableView;->mIsChildViewEnabled:Z

    .line 977
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->refreshDrawableState()V

    .line 979
    :cond_0
    return-void

    .line 976
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2116
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    .line 2117
    .local v1, childCount:I
    iget-object v5, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    #getter for: Lcom/htc/view/table/AbstractTableView$RecycleBin;->mRecyclerListener:Lcom/htc/view/table/AbstractTableView$RecyclerListener;
    invoke-static {v5}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->access$600(Lcom/htc/view/table/AbstractTableView$RecycleBin;)Lcom/htc/view/table/AbstractTableView$RecyclerListener;

    move-result-object v3

    .line 2120
    .local v3, listener:Lcom/htc/view/table/AbstractTableView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2121
    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2122
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    .line 2124
    .local v4, lp:Lcom/htc/view/table/AbstractTableView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    iget v6, v4, Lcom/htc/view/table/AbstractTableView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2125
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2126
    if-eqz v3, :cond_0

    .line 2128
    invoke-interface {v3, v0}, Lcom/htc/view/table/AbstractTableView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 2120
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2132
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/htc/view/table/AbstractTableView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 2133
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->removeAllViewsInLayout()V

    .line 2134
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 1565
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    .line 1566
    .local v0, position:I
    if-gez v0, :cond_0

    .line 1567
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 1569
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1570
    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1571
    return v0
.end method

.method protected reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 1496
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    .line 1499
    iput p1, p0, Lcom/htc/view/table/AbstractTableView;->mLastScrollState:I

    .line 1502
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 767
    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->requestLayout()V

    .line 769
    :cond_0
    return-void
.end method

.method public requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->resetList()V

    .line 570
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->requestLayout()V

    .line 571
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invalidate()V

    .line 574
    :cond_0
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mRequestedStartPosition:I

    if-ltz v0, :cond_1

    .line 575
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mRequestedStartPosition:I

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setSelection(I)V

    .line 576
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mRequestedStartPosition:I

    .line 578
    :cond_1
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 775
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->removeAllViewsInLayout()V

    .line 776
    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    .line 777
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractTableView;->mDataChanged:Z

    .line 778
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractTableView;->mNeedSync:Z

    .line 779
    sget v0, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mOldSelectedPosition:I

    .line 780
    sget-wide v0, Lcom/htc/view/table/AbstractTableView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractTableView;->mOldSelectedRowId:J

    .line 782
    sget v0, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setSelectedPositionInt(I)V

    .line 783
    sget v0, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    .line 784
    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    .line 785
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 786
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invalidate()V

    .line 787
    return-void
.end method

.method resurrectSelection()Z
    .locals 20

    .prologue
    .line 1606
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v3

    .line 1608
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 1609
    const/16 v17, 0x0

    .line 1697
    :goto_0
    return v17

    .line 1612
    :cond_0
    const/4 v13, 0x0

    .line 1614
    .local v13, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v5

    .line 1615
    .local v5, childrenTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v18

    sub-int v4, v17, v18

    .line 1616
    .local v4, childrenBottom:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    .line 1617
    .local v7, firstPosition:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 1618
    .local v14, toPosition:I
    const/4 v6, 0x1

    .line 1620
    .local v6, down:Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 1621
    move v12, v14

    .line 1623
    .local v12, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1624
    .local v10, selected:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v13

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v11

    .line 1628
    .local v11, selectedBottom:I
    if-ge v13, v5, :cond_3

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 1685
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    :cond_1
    :goto_1
    sget v17, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1688
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    .line 1689
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/AbstractTableView;->clearScrollingCache()V

    .line 1690
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/view/table/AbstractTableView;->mSpecificTop:I

    .line 1691
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/htc/view/table/AbstractTableView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 1692
    if-ltz v12, :cond_2

    .line 1693
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    .line 1694
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/view/table/AbstractTableView;->setSelectionInt(I)V

    .line 1697
    :cond_2
    if-ltz v12, :cond_c

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1630
    .restart local v10       #selected:Landroid/view/View;
    .restart local v11       #selectedBottom:I
    :cond_3
    if-le v11, v4, :cond_1

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/htc/view/table/TableColleague;->getOrnMeasuredHeight(Landroid/view/View;)I

    move-result v17

    sub-int v17, v4, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 1635
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    .end local v12           #selectedPos:I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 1637
    move v12, v7

    .line 1638
    .restart local v12       #selectedPos:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v3, :cond_1

    .line 1639
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1640
    .local v16, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v15

    .line 1642
    .local v15, top:I
    if-nez v8, :cond_6

    .line 1644
    move v13, v15

    .line 1646
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 1649
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 1652
    :cond_6
    if-lt v15, v5, :cond_7

    .line 1654
    add-int v12, v7, v8

    .line 1655
    move v13, v15

    .line 1656
    goto/16 :goto_1

    .line 1638
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1660
    .end local v8           #i:I
    .end local v12           #selectedPos:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/view/table/AbstractTableView;->mItemCount:I

    .line 1661
    .local v9, itemCount:I
    const/4 v6, 0x0

    .line 1662
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 1664
    .restart local v12       #selectedPos:I
    add-int/lit8 v8, v3, -0x1

    .restart local v8       #i:I
    :goto_3
    if-ltz v8, :cond_1

    .line 1665
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1666
    .restart local v16       #v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v15

    .line 1667
    .restart local v15       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v2

    .line 1669
    .local v2, bottom:I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 1670
    move v13, v15

    .line 1671
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 1672
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 1676
    :cond_a
    if-gt v2, v4, :cond_b

    .line 1677
    add-int v12, v7, v8

    .line 1678
    move v13, v15

    .line 1679
    goto/16 :goto_1

    .line 1664
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 1697
    .end local v2           #bottom:I
    .end local v8           #i:I
    .end local v9           #itemCount:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public scrollIntoSlots()V
    .locals 2

    .prologue
    .line 3124
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->scrollIntoSlots(Lcom/htc/view/table/AbstractTableView$FlingRunnable;)V

    .line 3125
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 1903
    iget-boolean v4, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilterEnabled:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/Filterable;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Landroid/widget/Filterable;

    invoke-interface {v4}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v5

    .line 1956
    :cond_1
    :goto_0
    return v2

    .line 1908
    :cond_2
    const/4 v2, 0x0

    .line 1909
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 1910
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 1933
    :goto_1
    if-eqz v3, :cond_1

    .line 1936
    move-object v1, p3

    .line 1937
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1938
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-direct {v1, p3, v6, v7, v5}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    .line 1941
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1942
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1944
    :pswitch_0
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 1945
    goto :goto_0

    .line 1917
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 1918
    goto :goto_1

    .line 1920
    :sswitch_1
    iget-boolean v4, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 1922
    const/4 v2, 0x1

    .line 1923
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1925
    :cond_4
    const/4 v3, 0x0

    .line 1926
    goto :goto_1

    .line 1929
    :sswitch_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    goto :goto_1

    .line 1948
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 1949
    goto :goto_0

    .line 1952
    :pswitch_2
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1910
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1942
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/view/table/AbstractTableView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 2986
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 2095
    iput p1, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    .line 2096
    return-void
.end method

.method public setCycling(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 3211
    iput-boolean p1, p0, Lcom/htc/view/table/AbstractTableView;->mCycle:Z

    .line 3212
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1068
    iput-boolean p1, p0, Lcom/htc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    .line 1069
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 738
    iget-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 742
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 744
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 746
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 749
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    .line 750
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mDataSetObserver:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 753
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    return-void
.end method

.method public setFocusSelection(Lcom/htc/view/FocusSelection;)V
    .locals 0
    .parameter "focusSelection"

    .prologue
    .line 2506
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->focusSelection:Lcom/htc/view/FocusSelection;

    .line 2507
    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0
    .parameter "gestureDetector"

    .prologue
    .line 3098
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 3099
    return-void
.end method

.method public setMaxScrollOverhead(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 3132
    iput p1, p0, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    .line 3133
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/view/table/AbstractTableView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 445
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    .line 446
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invokeOnItemScrollListener()V

    .line 447
    return-void
.end method

.method public setRecyclerListener(Lcom/htc/view/table/AbstractTableView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    #setter for: Lcom/htc/view/table/AbstractTableView$RecycleBin;->mRecyclerListener:Lcom/htc/view/table/AbstractTableView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->access$602(Lcom/htc/view/table/AbstractTableView$RecycleBin;Lcom/htc/view/table/AbstractTableView$RecyclerListener;)Lcom/htc/view/table/AbstractTableView$RecyclerListener;

    .line 2149
    return-void
.end method

.method public setScrollControl(Lcom/htc/view/ScrollControl;)V
    .locals 0
    .parameter "scrollControl"

    .prologue
    .line 2498
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->scrollControl:Lcom/htc/view/ScrollControl;

    .line 2499
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->mScrollUp:Landroid/view/View;

    .line 1134
    iput-object p2, p0, Lcom/htc/view/table/AbstractTableView;->mScrollDown:Landroid/view/View;

    .line 1135
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->clearScrollingCache()V

    .line 488
    :cond_0
    iput-boolean p1, p0, Lcom/htc/view/table/AbstractTableView;->mScrollingCacheEnabled:Z

    .line 489
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 2992
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelectionPadding(IIII)V
    .locals 1
    .parameter "leftPadding"
    .parameter "topPadding"
    .parameter "rightPadding"
    .parameter "bottomPadding"

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    if-nez v0, :cond_0

    .line 3151
    new-instance v0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-direct {v0, p0}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    .line 3153
    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->unlock()V

    .line 3154
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->setPadding(IIII)V

    .line 3155
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock()V

    .line 3156
    return-void
.end method

.method setSelectionToCenterChild()V
    .locals 4

    .prologue
    .line 3005
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedChild:Landroid/view/View;

    .line 3006
    .local v2, selView:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 3026
    :cond_0
    :goto_0
    return-void

    .line 3008
    :cond_1
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v3}, Lcom/htc/view/table/TableColleague;->getCenterOfTable()I

    move-result v0

    .line 3010
    .local v0, galleryCenter:I
    if-eqz v2, :cond_2

    .line 3013
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v3, v2}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    if-gt v3, v0, :cond_2

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v3, v2}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 3018
    :cond_2
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getCenterChildPosition()I

    move-result v1

    .line 3020
    .local v1, newPos:I
    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    if-eq v1, v3, :cond_0

    .line 3022
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setSelectedPositionInt(I)V

    .line 3023
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    .line 3024
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1079
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1084
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1086
    :cond_0
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1087
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1088
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1089
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    if-nez v1, :cond_1

    .line 1090
    new-instance v1, Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-direct {v1, p0}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    .line 1092
    :cond_1
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->setPadding(IIII)V

    .line 1094
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1095
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1096
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 0
    .parameter "stackFromBottom"

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    .line 564
    return-void
.end method

.method public setTableLayoutParams(ILcom/htc/view/table/TableLayoutParams;)V
    .locals 1
    .parameter "startPosition"
    .parameter "layout"

    .prologue
    .line 2470
    iput p1, p0, Lcom/htc/view/table/AbstractTableView;->mRequestedStartPosition:I

    .line 2471
    iput-object p2, p0, Lcom/htc/view/table/AbstractTableView;->mTableLayoutParams:Lcom/htc/view/table/TableLayoutParams;

    .line 2472
    invoke-virtual {p2}, Lcom/htc/view/table/TableLayoutParams;->isInitialWithScrollControl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->initialWithScrollControl:Z

    .line 2473
    invoke-virtual {p2}, Lcom/htc/view/table/TableLayoutParams;->isScrollOverBoundary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->isScrollOverBoundary:Z

    .line 2474
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->initTableColleague()V

    .line 2475
    return-void
.end method

.method public setTableLayoutParams(ILcom/htc/view/table/TableLayoutParams;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "startPosition"
    .parameter "layout"
    .parameter "outAnimation"
    .parameter "inAnimation"

    .prologue
    .line 2486
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->setTableLayoutParams(ILcom/htc/view/table/TableLayoutParams;)V

    .line 2487
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 500
    iput-boolean p1, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilterEnabled:Z

    .line 501
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2069
    iput p1, p0, Lcom/htc/view/table/AbstractTableView;->mTranscriptMode:I

    .line 2070
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 1345
    invoke-virtual {p0, p1}, Lcom/htc/view/table/AbstractTableView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1346
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 1347
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1348
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 1350
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/view/table/AbstractAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1354
    :cond_0
    if-nez v6, :cond_1

    .line 1355
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/view/table/AbstractTableView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1358
    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1363
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1031
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1036
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1034
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1031
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .locals 1
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 3108
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3121
    :goto_0
    return-void

    .line 3113
    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->hideSelector()V

    .line 3114
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1, p2}, Lcom/htc/view/table/TableColleague;->trackMotionScrollOrn(II)V

    .line 3119
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invalidate()V

    .line 3120
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invokeOnItemScrollListener()V

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
