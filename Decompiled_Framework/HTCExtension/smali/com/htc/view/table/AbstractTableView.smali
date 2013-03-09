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

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    iput-boolean v2, p0, Lcom/htc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/htc/view/table/AbstractTableView$RecycleBin;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mWidthHeightMeasureSpec:I

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    new-instance v1, Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    sget v1, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mLastTouchMode:I

    iput-boolean v2, p0, Lcom/htc/view/table/AbstractTableView;->mFlingProfilingStarted:Z

    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mLastScrollState:I

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mRequestedStartPosition:I

    iput-boolean v2, p0, Lcom/htc/view/table/AbstractTableView;->mCycle:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->isScrollOverBoundary:Z

    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mSpacing:I

    const/16 v1, 0x50

    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->initAbsListView()V

    sget-object v1, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/view/table/AbstractTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    iput-boolean v8, p0, Lcom/htc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v7, Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-direct {v7, p0}, Lcom/htc/view/table/AbstractTableView$RecycleBin;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v7, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mWidthHeightMeasureSpec:I

    iput v9, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    new-instance v7, Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-direct {v7, p0}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v7, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    sget v7, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v7, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v9, p0, Lcom/htc/view/table/AbstractTableView;->mLastTouchMode:I

    iput-boolean v8, p0, Lcom/htc/view/table/AbstractTableView;->mFlingProfilingStarted:Z

    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mLastScrollState:I

    iput v9, p0, Lcom/htc/view/table/AbstractTableView;->mRequestedStartPosition:I

    iput-boolean v8, p0, Lcom/htc/view/table/AbstractTableView;->mCycle:Z

    iput-boolean v10, p0, Lcom/htc/view/table/AbstractTableView;->isScrollOverBoundary:Z

    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mSpacing:I

    const/16 v7, 0x50

    iput v7, p0, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    iput v9, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->initAbsListView()V

    sget-object v7, Landroid/R$styleable;->AbsListView:[I

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->setStackFromBottom(Z)V

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/view/table/AbstractTableView;->setScrollingCacheEnabled(Z)V

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/view/table/AbstractTableView;->setTextFilterEnabled(Z)V

    const/4 v7, 0x5

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/view/table/AbstractTableView;->setTranscriptMode(I)V

    const/4 v7, 0x6

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setCacheColorHint(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/view/table/AbstractTableView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/view/table/AbstractTableView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/view/table/AbstractTableView;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/view/table/AbstractTableView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/view/table/AbstractTableView;Landroid/view/View;IJ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/view/table/AbstractTableView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/view/table/AbstractTableView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/view/table/AbstractTableView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/view/table/AbstractTableView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/view/table/AbstractAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    new-instance v0, Lcom/htc/view/table/AbstractAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/view/table/AbstractAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Lcom/htc/view/table/AbstractAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    :goto_0
    return v6

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    goto :goto_0
.end method

.method private dispatchUnpress()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8

    sparse-switch p2, :sswitch_data_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    :goto_0
    sub-int v2, v0, v4

    sub-int v3, v1, v5

    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    iget v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    goto :goto_0

    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    iget v5, p0, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

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

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/view/table/AbstractAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/view/table/AbstractTableView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Lcom/htc/view/table/AbstractAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    return v6
.end method

.method private positionSelector(IIII)V
    .locals 5

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

    return-void
.end method

.method private showPopup()V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v1

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->getLocationOnScreen([I)V

    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x14

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->checkFocus()V

    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 4

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mContext:Landroid/content/Context;

    const-string v2, "list_selector_holo_dark"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setSelector(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    return v0
.end method

.method protected clearScrollingCache()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mCachingStarted:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setChildrenDrawnWithCacheEnabled(Z)V

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setChildrenDrawingCacheEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invalidate()V

    :cond_1
    iput-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mCachingStarted:Z

    :cond_2
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->dismissPopup()V

    :cond_0
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    new-instance v0, Lcom/htc/view/table/AbstractAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/view/table/AbstractAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected createScrollingCache()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setChildrenDrawingCacheEnabled(Z)V

    iput-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mCachingStarted:Z

    :cond_0
    return-void
.end method

.method public detachViewsFromParent(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/htc/view/table/AbstractAdapterView;->detachViewsFromParent(II)V

    return-void
.end method

.method dismissPopup()V
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mScrollX:I

    iget v4, p0, Lcom/htc/view/table/AbstractTableView;->mScrollY:I

    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/view/table/AbstractAdapterView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/view/table/AbstractAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/view/table/AbstractAdapterView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/view/table/AbstractAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/view/table/AbstractTableView;->mGroupFlags:I

    :cond_0
    iget-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/view/table/AbstractTableView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/view/table/AbstractTableView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/view/table/AbstractTableView;->mGroupFlags:I

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/view/table/AbstractTableView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/view/table/AbstractTableView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/view/table/AbstractTableView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/view/table/AbstractTableView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/view/table/AbstractTableView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllVisibleViews()[Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v2

    new-array v0, v2, [Landroid/view/View;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    const/high16 v2, 0x3f80

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

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

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    return v0
.end method

.method public getCenterChildPosition()I
    .locals 9

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    if-nez v7, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v7}, Lcom/htc/view/table/TableColleague;->getCenterOfTable()I

    move-result v4

    const v3, 0x7fffffff

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_1
    if-ltz v5, :cond_2

    invoke-virtual {p0, v5}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v7, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v7

    if-gt v7, v4, :cond_3

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v7, v1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v7

    if-lt v7, v4, :cond_3

    move v6, v5

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_2
    iget-boolean v7, p0, Lcom/htc/view/table/AbstractTableView;->mCycle:Z

    if-nez v7, :cond_0

    iget v7, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int v0, v7, v6

    goto :goto_0

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

    if-ge v2, v3, :cond_4

    move v3, v2

    move v6, v5

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public abstract getDefaultHTableColleague()Lcom/htc/view/table/HTableColleague;
.end method

.method public abstract getDefaultVTableColleague()Lcom/htc/view/table/VTableColleague;
.end method

.method public getFocusSelection()Lcom/htc/view/FocusSelection;
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->focusSelection:Lcom/htc/view/FocusSelection;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p1}, Lcom/htc/view/table/AbstractTableView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxScrollOverhead()I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    return v0
.end method

.method public getScrollControl()Lcom/htc/view/ScrollControl;
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->scrollControl:Lcom/htc/view/ScrollControl;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    return v0
.end method

.method public getTableLayoutParams()Lcom/htc/view/table/TableLayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mTableLayoutParams:Lcom/htc/view/table/TableLayoutParams;

    return-object v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    const/high16 v1, 0x3f80

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

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

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 10

    const/4 v3, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-lez v0, :cond_b

    iget-boolean v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    if-eqz v5, :cond_3

    iput-boolean v7, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mTranscriptMode:I

    if-eq v5, v9, :cond_0

    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mTranscriptMode:I

    if-ne v5, v4, :cond_2

    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldItemCount:I

    if-lt v5, v6, :cond_2

    :cond_0
    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncMode:I

    packed-switch v5, :pswitch_data_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getSelectedItemPosition()I

    move-result v1

    if-lt v1, v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    :cond_4
    if-gez v1, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {p0, v1, v4}, Lcom/htc/view/table/AbstractTableView;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ltz v2, :cond_9

    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->findSyncPosition()I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p0, v1, v4}, Lcom/htc/view/table/AbstractTableView;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ne v2, v1, :cond_3

    iput v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    iget-wide v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_7
    iput v9, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    goto :goto_1

    :pswitch_1
    iput v8, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    if-ltz v3, :cond_8

    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    :goto_2
    iput v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    add-int/2addr v3, v0

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v1, v7}, Lcom/htc/view/table/AbstractTableView;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ltz v2, :cond_b

    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_a
    iget v5, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    if-gez v5, :cond_1

    :cond_b
    iget-boolean v5, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v5, :cond_c

    :goto_3
    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    sget v3, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    sget-wide v3, Lcom/htc/view/table/AbstractTableView;->INVALID_ROW_ID:J

    iput-wide v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedRowId:J

    sget v3, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    sget-wide v3, Lcom/htc/view/table/AbstractTableView;->INVALID_ROW_ID:J

    iput-wide v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedRowId:J

    iput-boolean v7, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_c
    move v3, v4

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 2

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    sget v1, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    :cond_0
    sget v0, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setSelectedPositionInt(I)V

    sget v0, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    return-void
.end method

.method protected abstract initTableColleague()V
.end method

.method public invalidateViews()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->rememberSyncState()V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invalidate()V

    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScroll(Lcom/htc/view/table/AbstractTableView;III)V

    :cond_0
    return-void
.end method

.method protected isInFilterMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilterEnabled:Z

    return v0
.end method

.method keyPressed()V
    .locals 7

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

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

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isLongClickable()Z

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v4, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_4

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPendingCheckForKeyLongPress:Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;

    if-nez v4, :cond_2

    new-instance v4, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;-><init>(Lcom/htc/view/table/AbstractTableView;Lcom/htc/view/table/AbstractTableView$1;)V

    iput-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPendingCheckForKeyLongPress:Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;

    :cond_2
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPendingCheckForKeyLongPress:Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;

    invoke-virtual {v4}, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mPendingCheckForKeyLongPress:Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/view/table/AbstractTableView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 0

    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 4

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method public offsetChildrenLeftAndRight(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->onUp()V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    iget-boolean v4, p0, Lcom/htc/view/table/AbstractTableView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v4, Lcom/htc/view/table/AbstractTableView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/view/table/AbstractAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    const/4 v0, -0x1

    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_2

    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    move v0, v2

    :cond_2
    if-ltz v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->stop(Z)V

    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/table/AbstractTableView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return v2
.end method

.method public onFilterComplete(I)V
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    sget v0, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method protected onFinishedMovement()V
    .locals 0

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, v2}, Lcom/htc/view/table/TableColleague;->setCloseBouncing(Z)V

    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {v0, v1, p3, p4}, Lcom/htc/view/table/TableColleague;->fling(Lcom/htc/view/table/AbstractTableView$FlingRunnable;FF)V

    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/htc/view/table/AbstractAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->showPopup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->dismissPopup()V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/view/table/AbstractAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/view/table/AbstractTableView;->performItemClick(Landroid/view/View;IJ)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Lcom/htc/view/table/AbstractAdapterView;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mInLayout:Z

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->layoutChildren()V

    iput-boolean v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mInLayout:Z

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->initialWithScrollControl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->scrollIntoSlots()V

    iput-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->initialWithScrollControl:Z

    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/view/table/AbstractTableView;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->useDefaultSelector()V

    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-direct {v1, p0}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    :cond_1
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->getLeftPadding()I

    move-result v1

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->getTopPadding()I

    move-result v1

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->getRightPadding()I

    move-result v1

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->getBottomPadding()I

    move-result v1

    iget v2, p0, Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    check-cast v2, Lcom/htc/view/table/AbstractTableView$SavedState;

    invoke-virtual {v2}, Lcom/htc/view/table/AbstractTableView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/htc/view/table/AbstractAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-boolean v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    iget v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->height:I

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncHeight:J

    iget-wide v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->selectedId:J

    cmp-long v3, v3, v6

    if-ltz v3, :cond_2

    iput-boolean v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    iget-wide v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->selectedId:J

    iput-wide v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncRowId:J

    iget v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->position:I

    iput v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    iget v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->viewTop:I

    iput v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSpecificTop:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncMode:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    iget-object v0, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setFilterText(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->requestLayout()V

    return-void

    :cond_2
    iget-wide v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->firstId:J

    cmp-long v3, v3, v6

    if-ltz v3, :cond_0

    sget v3, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v3}, Lcom/htc/view/table/AbstractTableView;->setSelectedPositionInt(I)V

    sget v3, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v3}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    iput-boolean v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    iget-wide v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->firstId:J

    iput-wide v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncRowId:J

    iget v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->position:I

    iput v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncPosition:I

    iget v3, v2, Lcom/htc/view/table/AbstractTableView$SavedState;->viewTop:I

    iput v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSpecificTop:I

    iput v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->dismissPopup()V

    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    new-instance v4, Lcom/htc/view/table/AbstractTableView$SavedState;

    invoke-direct {v4, v5}, Lcom/htc/view/table/AbstractTableView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->selectedId:J

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v9

    iput v9, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->height:I

    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_2

    iget v8, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    iput v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->viewTop:I

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->position:I

    sget v8, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    int-to-long v8, v8

    iput-wide v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->firstId:J

    :goto_1
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->filter:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    if-eqz v8, :cond_0

    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->filter:Ljava/lang/String;

    :cond_0
    return-object v4

    :cond_1
    move v1, v8

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v8}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->viewTop:I

    iget v8, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iput v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->position:I

    iget-object v8, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->firstId:J

    goto :goto_1

    :cond_3
    iput v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->viewTop:I

    sget v9, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    int-to-long v9, v9

    iput-wide v9, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->firstId:J

    iput v8, v4, Lcom/htc/view/table/AbstractTableView$SavedState;->position:I

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mCycle:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getCenterChildPosition()I

    move-result v1

    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    :cond_0
    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v1, v5}, Lcom/htc/view/table/TableColleague;->setCloseBouncing(Z)V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    if-eq v1, v3, :cond_4

    iput v3, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    invoke-virtual {p0, v5}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    iget v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    float-to-int v2, p3

    mul-int/lit8 v2, v2, -0x1

    float-to-int v3, p4

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3, v5}, Lcom/htc/view/table/TableColleague;->scrollWithConstrain(IIZ)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->findMotionRow(I)I

    move-result v1

    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    return v4

    :cond_5
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v1, v4}, Lcom/htc/view/table/TableColleague;->setCloseBouncing(Z)V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget v4, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    if-nez v4, :cond_1

    iput v6, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    iget v4, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    iget v5, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    iget-boolean v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->layoutChildren()V

    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->positionSelector(Landroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isLongClickable()Z

    move-result v2

    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    if-eqz v2, :cond_2

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    iput v7, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    :cond_3
    iput v7, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/view/table/AbstractTableView;->performItemClick(Landroid/view/View;IJ)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->rememberSyncState()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->showPopup()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->onUp()V

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->onCancel()V

    goto :goto_0
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->hideSelector()V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->layoutChildren()V

    :cond_0
    return-void
.end method

.method onUp()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mScrollStartPos:I

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->layoutChildren()V

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    #getter for: Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->access$1000(Lcom/htc/view/table/AbstractTableView$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->scrollIntoSlots()V

    :cond_0
    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->dispatchUnpress()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setChildrenDrawingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->dismissPopup()V

    if-ne v0, v2, :cond_0

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    :cond_0
    :goto_1
    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mLastTouchMode:I

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView;->showPopup()V

    :cond_3
    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mLastTouchMode:I

    if-eq v0, v3, :cond_0

    iget v3, p0, Lcom/htc/view/table/AbstractTableView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->resurrectSelection()Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->hideSelector()V

    iput v1, p0, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    sget v4, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->pointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    sget-wide v1, Lcom/htc/view/table/AbstractTableView;->INVALID_ROW_ID:J

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/view/table/AbstractTableView;->positionSelector(IIII)V

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mIsChildViewEnabled:Z

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/view/table/AbstractTableView;->mIsChildViewEnabled:Z

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->refreshDrawableState()V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    iget-object v5, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    #getter for: Lcom/htc/view/table/AbstractTableView$RecycleBin;->mRecyclerListener:Lcom/htc/view/table/AbstractTableView$RecyclerListener;
    invoke-static {v5}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->access$600(Lcom/htc/view/table/AbstractTableView$RecycleBin;)Lcom/htc/view/table/AbstractTableView$RecyclerListener;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/view/table/AbstractTableView$LayoutParams;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    iget v6, v4, Lcom/htc/view/table/AbstractTableView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    invoke-interface {v3, v0}, Lcom/htc/view/table/AbstractTableView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->removeAllViewsInLayout()V

    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected reportScrollStateChange(I)V
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/view/table/AbstractTableView$OnScrollListener;->onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V

    iput p1, p0, Lcom/htc/view/table/AbstractTableView;->mLastScrollState:I

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/view/table/AbstractAdapterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public requestLayoutIfNecessary()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->resetList()V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invalidate()V

    :cond_0
    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mRequestedStartPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mRequestedStartPosition:I

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setSelection(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/table/AbstractTableView;->mRequestedStartPosition:I

    :cond_1
    return-void
.end method

.method resetList()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->removeAllViewsInLayout()V

    iput v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    iput-boolean v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    iput-boolean v2, p0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    sget v0, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedPosition:I

    sget-wide v0, Lcom/htc/view/table/AbstractTableView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOldSelectedRowId:J

    sget v0, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setSelectedPositionInt(I)V

    sget v0, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    iput v2, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedOrnTop:I

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invalidate()V

    return-void
.end method

.method resurrectSelection()Z
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v5

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

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    const/4 v6, 0x1

    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    move v12, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v11

    if-ge v13, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    :cond_1
    :goto_1
    sget v17, Lcom/htc/view/table/AbstractTableView;->INVALID_POSITION:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/table/AbstractTableView;->mResurrectToPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/table/AbstractTableView;->clearScrollingCache()V

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/view/table/AbstractAdapterView;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/htc/view/table/AbstractTableView;->lookForSelectablePosition(IZ)I

    move-result v12

    if-ltz v12, :cond_2

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/view/table/AbstractTableView;->mLayoutMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/view/table/AbstractTableView;->setSelectionInt(I)V

    :cond_2
    if-ltz v12, :cond_c

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_3
    if-le v11, v4, :cond_1

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

    :cond_4
    if-ge v14, v7, :cond_8

    move v12, v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v15

    if-nez v8, :cond_6

    move v13, v15

    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    :cond_6
    if-lt v15, v5, :cond_7

    add-int v12, v7, v8

    move v13, v15

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    const/4 v6, 0x0

    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    add-int/lit8 v8, v3, -0x1

    :goto_3
    if-ltz v8, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    move v13, v15

    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    :cond_a
    if-gt v2, v4, :cond_b

    add-int v12, v7, v8

    move v13, v15

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public scrollIntoSlots()V
    .locals 2

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/view/table/TableColleague;->scrollIntoSlots(Lcom/htc/view/table/AbstractTableView$FlingRunnable;)V

    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v5, 0x0

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

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_1
    if-eqz v3, :cond_1

    move-object v1, p3

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_3

    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-direct {v1, p3, v6, v7, v5}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :sswitch_0
    const/4 v3, 0x0

    goto :goto_1

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

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/view/table/AbstractTableView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 0

    iput p1, p0, Lcom/htc/view/table/AbstractTableView;->mCacheColorHint:I

    return-void
.end method

.method public setCycling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/view/table/AbstractTableView;->mCycle:Z

    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3

    iget-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/view/table/AbstractTableView;->mFiltered:Z

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mDataSetObserver:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->clearSavedState()V

    :cond_0
    return-void
.end method

.method public setFocusSelection(Lcom/htc/view/FocusSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->focusSelection:Lcom/htc/view/FocusSelection;

    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public setMaxScrollOverhead(I)V
    .locals 0

    iput p1, p0, Lcom/htc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    return-void
.end method

.method public setOnScrollListener(Lcom/htc/view/table/AbstractTableView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/view/table/AbstractTableView$OnScrollListener;

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setRecyclerListener(Lcom/htc/view/table/AbstractTableView$RecyclerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mRecycler:Lcom/htc/view/table/AbstractTableView$RecycleBin;

    #setter for: Lcom/htc/view/table/AbstractTableView$RecycleBin;->mRecyclerListener:Lcom/htc/view/table/AbstractTableView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/htc/view/table/AbstractTableView$RecycleBin;->access$602(Lcom/htc/view/table/AbstractTableView$RecycleBin;Lcom/htc/view/table/AbstractTableView$RecyclerListener;)Lcom/htc/view/table/AbstractTableView$RecyclerListener;

    return-void
.end method

.method public setScrollControl(Lcom/htc/view/ScrollControl;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->scrollControl:Lcom/htc/view/ScrollControl;

    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->mScrollUp:Landroid/view/View;

    iput-object p2, p0, Lcom/htc/view/table/AbstractTableView;->mScrollDown:Landroid/view/View;

    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->clearScrollingCache()V

    :cond_0
    iput-boolean p1, p0, Lcom/htc/view/table/AbstractTableView;->mScrollingCacheEnabled:Z

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelectionPadding(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-direct {v0, p0}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->unlock()V

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->setPadding(IIII)V

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock()V

    return-void
.end method

.method setSelectionToCenterChild()V
    .locals 4

    iget-object v2, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedChild:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v3}, Lcom/htc/view/table/TableColleague;->getCenterOfTable()I

    move-result v0

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v3, v2}, Lcom/htc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    if-gt v3, v0, :cond_2

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v3, v2}, Lcom/htc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v3

    if-ge v3, v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getCenterChildPosition()I

    move-result v1

    iget v3, p0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    if-eq v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setSelector(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/view/table/AbstractTableView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    invoke-direct {v1, p0}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    iput-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    :cond_1
    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/view/table/AbstractTableView$SelectionPadding;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->setPadding(IIII)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/view/table/AbstractTableView;->mStackFromBottom:Z

    return-void
.end method

.method public setTableLayoutParams(ILcom/htc/view/table/TableLayoutParams;)V
    .locals 1

    iput p1, p0, Lcom/htc/view/table/AbstractTableView;->mRequestedStartPosition:I

    iput-object p2, p0, Lcom/htc/view/table/AbstractTableView;->mTableLayoutParams:Lcom/htc/view/table/TableLayoutParams;

    invoke-virtual {p2}, Lcom/htc/view/table/TableLayoutParams;->isInitialWithScrollControl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->initialWithScrollControl:Z

    invoke-virtual {p2}, Lcom/htc/view/table/TableLayoutParams;->isScrollOverBoundary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView;->isScrollOverBoundary:Z

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->initTableColleague()V

    return-void
.end method

.method public setTableLayoutParams(ILcom/htc/view/table/TableLayoutParams;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/view/table/AbstractTableView;->setTableLayoutParams(ILcom/htc/view/table/TableLayoutParams;)V

    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/view/table/AbstractTableView;->mTextFilterEnabled:Z

    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    iput p1, p0, Lcom/htc/view/table/AbstractTableView;->mTranscriptMode:I

    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

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

    invoke-virtual {p0, p1}, Lcom/htc/view/table/AbstractTableView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mOnItemLongClickListener:Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/view/table/AbstractAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/view/table/AbstractAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    iget v0, p0, Lcom/htc/view/table/AbstractAdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/view/table/AbstractTableView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p1}, Lcom/htc/view/table/AbstractAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->hideSelector()V

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v0, p1, p2}, Lcom/htc/view/table/TableColleague;->trackMotionScrollOrn(II)V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invalidate()V

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView;->invokeOnItemScrollListener()V

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

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
