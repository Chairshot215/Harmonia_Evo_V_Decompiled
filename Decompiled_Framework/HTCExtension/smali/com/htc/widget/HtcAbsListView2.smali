.class public abstract Lcom/htc/widget/HtcAbsListView2;
.super Lcom/htc/widget/HtcAdapterView;
.source "HtcAbsListView2.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAbsListView2$RecycleBin;,
        Lcom/htc/widget/HtcAbsListView2$RecyclerListener;,
        Lcom/htc/widget/HtcAbsListView2$LayoutParams;,
        Lcom/htc/widget/HtcAbsListView2$FlingRunnable;,
        Lcom/htc/widget/HtcAbsListView2$CheckForTap;,
        Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;,
        Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;,
        Lcom/htc/widget/HtcAbsListView2$PerformClick;,
        Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;,
        Lcom/htc/widget/HtcAbsListView2$SavedState;,
        Lcom/htc/widget/HtcAbsListView2$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/widget/HtcAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_LEFT:I = 0x7

.field static final LAYOUT_FORCE_RIGHT:I = 0x8

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field protected static final PROFILE_FLINGING:Z = false

.field protected static final PROFILE_SCROLLING:Z = false

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FAST_SCROLL:I = 0x5

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private delayActionUpTime:Z

.field private delayIncludeDoneWaiting:Z

.field mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/widget/HtcAdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Lcom/htc/widget/HtcFastScroller3;

.field private mFiltered:Z

.field protected mFlingProfilingStarted:Z

.field protected mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

.field mHeightMeasureSpec:I

.field private mIsChildViewEnabled:Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewLeft:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalLeft:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field public mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

.field protected mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field protected mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field final mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field mScrollLeft:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedLeft:I

.field mSelectedTop:I

.field private mSelectedView:Landroid/view/View;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollProfilingStarted:Z

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingProfilingStarted:Z

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->initAbsListView()V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setVerticalScrollBarEnabled(Z)V

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcAbsListView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v9, Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollProfilingStarted:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingProfilingStarted:Z

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->initAbsListView()V

    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->setStackFromBottom(Z)V

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setScrollingCacheEnabled(Z)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->setTextFilterEnabled(Z)V

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->setTranscriptMode(I)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setCacheColorHint(I)V

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setFastScrollEnabled(Z)V

    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->setSmoothScrollbarEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private acceptFilter()Z
    .locals 4

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/Filterable;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/Filterable;

    invoke-interface {v2}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;IJ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    return v0
.end method

.method private createTextFilter(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x10900ad

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

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

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setScrollingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchSlop:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->performHapticFeedback(I)Z

    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 10

    const/high16 v9, 0x41a0

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v5, 0x2

    new-array v4, v5, [I

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_1

    aget v5, v4, v7

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    add-int v1, v5, v6

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const/16 v6, 0x15

    aget v7, v4, v7

    invoke-virtual {v5, p0, v6, v7, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    aget v6, v4, v7

    invoke-virtual {v5, v6, v1, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    aget v5, v4, v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    add-int v0, v5, v6

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const/16 v6, 0x51

    aget v7, v4, v7

    invoke-virtual {v5, p0, v6, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    aget v6, v4, v7

    invoke-virtual {v5, v6, v0, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private showPopup()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->positionPopup()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->checkFocus()V

    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 4

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    const-string v2, "list_selector_holo_dark"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setSelector(I)V

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

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

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    return v0
.end method

.method protected clearScrollingCache()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawnWithCacheEnabled(Z)V

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    :cond_1
    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    :cond_2
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    mul-int/lit8 v2, v1, 0x64

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    mul-int/lit8 v6, v3, 0x64

    div-int/2addr v6, v5

    add-int/2addr v2, v6

    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v2, v6

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    const/4 v7, 0x0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    mul-int/lit8 v2, v1, 0x64

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    const/4 v7, 0x0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v2, :cond_2

    const/4 v4, 0x0

    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    new-instance v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected createScrollingCache()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    :cond_0
    return-void
.end method

.method dismissPopup()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollX:I

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollY:I

    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

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

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller3;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method enableStopScrollNow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method abstract fillGap(Z)V
.end method

.method abstract findMotionColumn(I)I
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .locals 2

    new-instance v0, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getBottomBorderHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getBottomBoundary()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    const/high16 v2, 0x3f80

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    return v0
.end method

.method getChildrenTotalHeight()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method getChildrenTotalWidth()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView2$FlingRunnable;
    .locals 1

    new-instance v0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcAbsListView2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

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

.method getLeftBorderWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getLeftBoundary()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    const/high16 v1, 0x3f80

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method getRightBorderWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getRightBoundary()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    const/high16 v1, 0x3f80

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_0

    sub-int v5, v3, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTopBorderHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getTopBoundary()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    const/high16 v1, 0x3f80

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_c

    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_4

    iput-boolean v6, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    if-ne v4, v3, :cond_3

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    if-lt v4, v5, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v3, 0x3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    packed-switch v4, :pswitch_data_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemPosition()I

    move-result v1

    if-lt v1, v0, :cond_5

    add-int/lit8 v1, v0, -0x1

    :cond_5
    if-gez v1, :cond_6

    const/4 v1, 0x0

    :cond_6
    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ltz v2, :cond_a

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_7

    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->findSyncPosition()I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ne v2, v1, :cond_4

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    iget-wide v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    iget-wide v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncWidth:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    :cond_8
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_9
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_1

    :pswitch_1
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto :goto_0

    :cond_a
    invoke-virtual {p0, v1, v6}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ltz v2, :cond_c

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    :cond_b
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    if-gez v4, :cond_1

    :cond_c
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eqz v3, :cond_d

    const/16 v3, 0x8

    :goto_2
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    :goto_3
    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iput-boolean v6, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x7

    goto :goto_2

    :cond_e
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eqz v4, :cond_f

    const/4 v3, 0x3

    :cond_f
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcFastScroller3;->onScroll(Lcom/htc/widget/HtcAbsListView2;III)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView2;III)V

    :cond_1
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller3;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyPressed()V
    .locals 8

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isLongClickable()Z

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    if-eqz v1, :cond_6

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_4
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    if-nez v5, :cond_5

    new-instance v5, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;-><init>(Lcom/htc/widget/HtcAbsListView2;Lcom/htc/widget/HtcAbsListView2$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->rememberWindowAttachCount()V

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "HtcAbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal getView exception, getView("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scrapView, this) should not be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v2, "HtcAbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal getView exception, getView("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", null, this) should not be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected offsetChildrenLeftAndRight(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v4, Lcom/htc/widget/HtcAbsListView2;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

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

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method onFling(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->start(I)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->unPressedUnSelectChildren(Landroid/view/View;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/high16 v9, -0x8000

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v8, p1}, Lcom/htc/widget/HtcFastScroller3;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v6

    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v6, v7

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v2

    :goto_2
    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    if-ltz v2, :cond_2

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    :goto_3
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    :cond_2
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v2

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    goto :goto_3

    :pswitch_1
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    sub-int v8, v4, v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_5
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :pswitch_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->performItemClick(Landroid/view/View;IJ)Z

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_1
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
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcAdapterView;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->useDefaultSelector()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcAbsListView2$SavedState;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->width:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncWidth:J

    :goto_0
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_3

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    :cond_0
    :goto_2
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setFilterText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    return-void

    :cond_1
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    goto :goto_1

    :cond_3
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    :goto_3
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    goto :goto_2

    :cond_4
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    goto :goto_3
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    const-wide/16 v11, -0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    new-instance v4, Lcom/htc/widget/HtcAbsListView2$SavedState;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAbsListView2$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->width:I

    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    :goto_3
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v8, :cond_0

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    :cond_0
    return-object v4

    :cond_1
    move v1, v8

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->height:I

    goto :goto_1

    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    :goto_4
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    goto :goto_4

    :cond_6
    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    goto :goto_3
.end method

.method onScrollToBoundary()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller3;->onSizeChanged(IIII)V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

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

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller3;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v22, 0x1

    :goto_0
    return v22

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    const/16 v22, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView2;->pointToPosition(II)I

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    if-ltz v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v22

    check-cast v22, Landroid/widget/ListAdapter;

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    new-instance v22, Lcom/htc/widget/HtcAbsListView2$CheckForTap;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView2$CheckForTap;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_2
    if-ltz v15, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    :goto_3
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    :cond_5
    const/high16 v22, -0x8000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    const/high16 v22, -0x8000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    if-eqz v22, :cond_7

    if-gez v15, :cond_7

    const/16 v22, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->createScrollingCache()V

    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v15

    :goto_4
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v15

    goto :goto_4

    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    goto :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    move/from16 v22, v0

    sub-int v9, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    move/from16 v22, v0

    sub-int v8, v20, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    move/from16 v22, v0

    sub-int v8, v8, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    move/from16 v22, v0

    const/high16 v23, -0x8000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    move/from16 v22, v0

    sub-int v11, v20, v22

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScrollWithConstrain(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v15

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    :cond_b
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto/16 :goto_1

    :cond_c
    move v11, v8

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    move/from16 v22, v0

    sub-int v9, v9, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    move/from16 v22, v0

    const/high16 v23, -0x8000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    move/from16 v22, v0

    sub-int v12, v21, v22

    :goto_6
    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScrollWithConstrain(II)V

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v15

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    :cond_f
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    goto/16 :goto_1

    :cond_10
    move v12, v9

    goto :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_2

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-nez v22, :cond_11

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v22

    if-nez v22, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-nez v22, :cond_13

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v22, v0

    if-nez v22, :cond_14

    new-instance v22, Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView2$PerformClick;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mChild:Landroid/view/View;

    move-object/from16 v0, v17

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mClickMotionPosition:I

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAbsListView2$PerformClick;->rememberWindowAttachCount()V

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    :cond_15
    const/4 v5, 0x1

    :cond_16
    :goto_8
    if-eqz v5, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-nez v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    :goto_9
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_17
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAbsListView2;->positionSelector(Landroid/view/View;)V

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_18

    instance-of v0, v7, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_18

    check-cast v7, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1d

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    :cond_19
    :goto_a
    const/16 v22, 0x1

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    :cond_1b
    const/4 v5, 0x1

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    goto/16 :goto_9

    :cond_1d
    new-instance v22, Lcom/htc/widget/HtcAbsListView2$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/widget/HtcAbsListView2$1;-><init>(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Lcom/htc/widget/HtcAbsListView2$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    goto/16 :goto_7

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    const/16 v22, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_20

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    :goto_b
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v22

    if-lez v22, :cond_21

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcAbsListView2;->onFling(I)V

    goto/16 :goto_7

    :cond_20
    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    goto :goto_b

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onUp()V

    goto/16 :goto_7

    :pswitch_7
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_22

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    :cond_0
    return-void
.end method

.method onUp()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    if-nez p1, :cond_3

    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->resetPressedStatus(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    if-ne v0, v2, :cond_1

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    :cond_1
    :goto_1
    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    :cond_4
    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    if-eq v0, v3, :cond_1

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->pointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->unPressedUnSelectChildren(Landroid/view/View;)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

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

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView2;->positionSelector(IIII)V

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->refreshDrawableState()V

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView2$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    invoke-static {v5}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->access$1500(Lcom/htc/widget/HtcAbsListView2$RecycleBin;)Lcom/htc/widget/HtcAbsListView2$RecyclerListener;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iget v6, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    invoke-interface {v3, v0}, Lcom/htc/widget/HtcAbsListView2$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/widget/HtcAbsListView2$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView2;I)V

    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resetList()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    return-void
.end method

.method resetListAndClearViews()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->clear()V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->setViewTypeCount(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    return-void
.end method

.method public resetPressedStatus(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    :cond_0
    return-void
.end method

.method resurrectSelection()Z
    .locals 25

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_0

    const/16 v23, 0x0

    :goto_0
    return v23

    :cond_0
    const/16 v19, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v24

    add-int v5, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBorderWidth()I

    move-result v24

    sub-int v6, v23, v24

    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    move/from16 v20, v0

    const/4 v8, 0x1

    move/from16 v0, v20

    if-lt v0, v9, :cond_7

    add-int v23, v9, v3

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    move/from16 v17, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v0, v16

    if-ge v0, v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    add-int v16, v5, v23

    :cond_1
    :goto_2
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    :cond_2
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_15

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v17

    move/from16 v0, v17

    if-lt v0, v9, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLastVisiblePosition()I

    move-result v23

    move/from16 v0, v17

    move/from16 v1, v23

    if-gt v0, v1, :cond_16

    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setSelectionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    :goto_4
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    if-ltz v17, :cond_17

    const/16 v23, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBorderHeight()I

    move-result v24

    add-int v7, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBorderHeight()I

    move-result v24

    sub-int v4, v23, v24

    goto/16 :goto_1

    :cond_4
    move/from16 v0, v18

    if-le v0, v6, :cond_1

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    sub-int v23, v6, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v24

    sub-int v16, v23, v24

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    move/from16 v0, v19

    if-ge v0, v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    add-int v19, v7, v23

    goto/16 :goto_2

    :cond_6
    if-le v15, v4, :cond_1

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v23, v4, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v24

    sub-int v19, v23, v24

    goto/16 :goto_2

    :cond_7
    move/from16 v0, v20

    if-ge v0, v9, :cond_e

    move/from16 v17, v9

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v3, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_a

    if-nez v10, :cond_9

    move/from16 v16, v12

    if-gtz v9, :cond_8

    if-ge v12, v5, :cond_9

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    add-int v5, v5, v23

    :cond_9
    if-lt v12, v5, :cond_d

    add-int v17, v9, v10

    move/from16 v16, v12

    goto/16 :goto_2

    :cond_a
    if-nez v10, :cond_c

    move/from16 v19, v21

    if-gtz v9, :cond_b

    move/from16 v0, v21

    if-ge v0, v7, :cond_c

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    add-int v7, v7, v23

    :cond_c
    move/from16 v0, v21

    if-lt v0, v7, :cond_d

    add-int v17, v9, v10

    move/from16 v19, v21

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    const/4 v8, 0x0

    add-int v23, v9, v3

    add-int/lit8 v17, v23, -0x1

    add-int/lit8 v10, v3, -0x1

    :goto_6
    if-ltz v10, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_11

    add-int/lit8 v23, v3, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_10

    move/from16 v16, v12

    add-int v23, v9, v3

    move/from16 v0, v23

    if-lt v0, v11, :cond_f

    if-le v13, v6, :cond_10

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    sub-int v6, v6, v23

    :cond_10
    if-gt v13, v6, :cond_14

    add-int v17, v9, v10

    move/from16 v16, v12

    goto/16 :goto_2

    :cond_11
    add-int/lit8 v23, v3, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_13

    move/from16 v19, v21

    add-int v23, v9, v3

    move/from16 v0, v23

    if-lt v0, v11, :cond_12

    if-le v2, v4, :cond_13

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    sub-int v4, v4, v23

    :cond_13
    if-gt v2, v4, :cond_14

    add-int v17, v9, v10

    move/from16 v19, v21

    goto/16 :goto_2

    :cond_14
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    :cond_15
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    goto/16 :goto_3

    :cond_16
    const/16 v17, -0x1

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    goto/16 :goto_4

    :cond_17
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_1
    if-eqz v3, :cond_0

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    move-object v1, p3

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {v1, p3, v5, v6, v4}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :sswitch_0
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

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

.method public setCacheColorHint(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    return-void
.end method

.method public setDelayActionUpTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    return-void
.end method

.method public setDelayIncludeDoneWaiting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller3;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller3;->stop()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->clearSavedState()V

    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView;->setFrame(IIII)Z

    move-result v0

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->positionPopup()V

    :cond_0
    return v0
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView2$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setRecyclerListener(Lcom/htc/widget/HtcAbsListView2$RecyclerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    #setter for: Lcom/htc/widget/HtcAbsListView2$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    invoke-static {v0, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->access$1502(Lcom/htc/widget/HtcAbsListView2$RecycleBin;Lcom/htc/widget/HtcAbsListView2$RecyclerListener;)Lcom/htc/widget/HtcAbsListView2$RecyclerListener;

    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    goto :goto_0
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->touchModeDrawsInPressedState()Z

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

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->getPositionForView(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView2;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected startScrollIfNeeded(I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchSlop:I

    if-le v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->createScrollingCache()V

    const/4 v5, 0x3

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

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
    .locals 29

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getBottom()I

    move-result v16

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getRight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_3

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v22, v27, v9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    sub-int v23, v17, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    move/from16 v28, v0

    sub-int v26, v27, v28

    if-gez p1, :cond_1

    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    if-gez p2, :cond_2

    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_7

    move/from16 v0, v23

    if-lt v0, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenLeftAndRight(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_2
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v22, v27, v11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    sub-int v23, v16, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    move/from16 v28, v0

    sub-int v14, v27, v28

    if-gez p1, :cond_4

    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_3
    if-gez p2, :cond_5

    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_3

    :cond_5
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenTopAndBottom(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_9

    if-nez v10, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBoundary()I

    move-result v28

    add-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    if-le v9, v0, :cond_8

    if-lez p1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    :cond_8
    add-int v27, v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBoundary()I

    move-result v27

    mul-int/lit8 v27, v27, 0x2

    sub-int v27, v8, v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBorderWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    if-gez p1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    :cond_9
    if-nez v10, :cond_a

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBoundary()I

    move-result v28

    add-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBorderHeight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    if-le v11, v0, :cond_a

    if-lez p1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    :cond_a
    add-int v27, v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBoundary()I

    move-result v27

    mul-int/lit8 v27, v27, 0x2

    sub-int v27, v8, v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBorderHeight()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    if-gez p1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    :cond_b
    if-gez p2, :cond_e

    const/4 v7, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeaderViewsCount()I

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getFooterViewsCount()I

    move-result v28

    sub-int v12, v27, v28

    const/16 v24, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildrenTotalWidth()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    if-eqz v7, :cond_11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v18, v27, p2

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v5, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    :goto_6
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/widget/HtcAbsListView2;->detachViewsFromParent(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenLeftAndRight(I)V

    :goto_7
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    add-int v27, v27, v6

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAbsListView2;->fillGap(Z)V

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    goto/16 :goto_0

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_f
    add-int/lit8 v6, v6, 0x1

    add-int v20, v10, v15

    move/from16 v0, v20

    if-lt v0, v13, :cond_10

    move/from16 v0, v20

    if-ge v0, v12, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    sub-int v21, v27, p2

    add-int/lit8 v15, v5, -0x1

    :goto_8
    if-ltz v15, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    move/from16 v24, v15

    add-int/lit8 v6, v6, 0x1

    add-int v20, v10, v15

    move/from16 v0, v20

    if-lt v0, v13, :cond_12

    move/from16 v0, v20

    if-ge v0, v12, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_12
    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildrenTotalHeight()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_14

    if-eqz v7, :cond_17

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v25, v27, p2

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v5, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v25

    if-lt v0, v1, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    goto/16 :goto_6

    :cond_15
    add-int/lit8 v6, v6, 0x1

    add-int v20, v10, v15

    move/from16 v0, v20

    if-lt v0, v13, :cond_16

    move/from16 v0, v20

    if-ge v0, v12, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_16
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    sub-int v3, v27, p2

    add-int/lit8 v15, v5, -0x1

    :goto_a
    if-ltz v15, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    if-le v0, v3, :cond_14

    move/from16 v24, v15

    add-int/lit8 v6, v6, 0x1

    add-int v20, v10, v15

    move/from16 v0, v20

    if-lt v0, v13, :cond_18

    move/from16 v0, v20

    if-ge v0, v12, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_18
    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenTopAndBottom(I)V

    goto/16 :goto_7
.end method

.method trackMotionScrollWithConstrain(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScroll(II)V

    return-void
.end method

.method unPressedUnSelectChildren(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateScrollIndicators()V
    .locals 12

    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v8, :cond_4

    move v1, v6

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_5

    move v1, v6

    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    if-eqz v1, :cond_6

    move v8, v7

    :goto_2
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v8, v10, :cond_7

    move v2, v6

    :goto_3
    if-nez v2, :cond_2

    if-lez v5, :cond_2

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBorderWidth()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_8

    move v2, v6

    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    if-eqz v2, :cond_9

    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_6
    return-void

    :cond_4
    move v1, v7

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_1

    :cond_6
    move v8, v9

    goto :goto_2

    :cond_7
    move v2, v7

    goto :goto_3

    :cond_8
    move v2, v7

    goto :goto_4

    :cond_9
    move v7, v9

    goto :goto_5

    :cond_a
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v8, :cond_e

    move v3, v6

    :goto_7
    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_b

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBorderHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_f

    move v3, v6

    :cond_b
    :goto_8
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    if-eqz v3, :cond_10

    move v8, v7

    :goto_9
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v8, v10, :cond_11

    move v0, v6

    :goto_a
    if-nez v0, :cond_d

    if-lez v5, :cond_d

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBorderHeight()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_12

    move v0, v6

    :cond_d
    :goto_b
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_13

    :goto_c
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_e
    move v3, v7

    goto :goto_7

    :cond_f
    move v3, v7

    goto :goto_8

    :cond_10
    move v8, v9

    goto :goto_9

    :cond_11
    move v0, v7

    goto :goto_a

    :cond_12
    move v0, v7

    goto :goto_b

    :cond_13
    move v7, v9

    goto :goto_c
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
