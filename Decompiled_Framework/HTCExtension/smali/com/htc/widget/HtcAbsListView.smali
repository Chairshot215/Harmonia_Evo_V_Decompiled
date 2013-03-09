.class public abstract Lcom/htc/widget/HtcAbsListView;
.super Lcom/htc/widget/HtcAdapterView;
.source "HtcAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAbsListView$RecycleBin;,
        Lcom/htc/widget/HtcAbsListView$RecyclerListener;,
        Lcom/htc/widget/HtcAbsListView$LayoutParams;,
        Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;,
        Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;,
        Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;,
        Lcom/htc/widget/HtcAbsListView$PositionScroller;,
        Lcom/htc/widget/HtcAbsListView$FlingRunnable;,
        Lcom/htc/widget/HtcAbsListView$CheckForTap;,
        Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;,
        Lcom/htc/widget/HtcAbsListView$CheckForLongPress;,
        Lcom/htc/widget/HtcAbsListView$PerformClick;,
        Lcom/htc/widget/HtcAbsListView$WindowRunnnable;,
        Lcom/htc/widget/HtcAbsListView$SavedState;,
        Lcom/htc/widget/HtcAbsListView$OnScrollListener;
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
.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field protected static final PROFILE_FLINGING:Z = false

.field protected static final PROFILE_SCROLLING:Z = false

.field private static final RAISE_THREAD_PRIORITY:I = -0x5

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field protected static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field protected static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private delayActionUpTime:Z

.field private delayIncludeDoneWaiting:Z

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Lcom/htc/widget/HtcFastScroller;

.field private mFiltered:Z

.field protected mFlingProfilingStarted:Z

.field protected mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mLogFps:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

.field public mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field mOverScrollCheck:Z

.field private mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

.field protected mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field protected mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollUp:Landroid/view/View;

.field mScrollWhenResurrectSelection:Z

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field private mSelectedView:Landroid/view/View;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field protected mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field private mStrictModePolicy:I

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field protected mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I

.field private prevPriority:I

.field private priorityRaised:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollProfilingStarted:Z

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mFlingProfilingStarted:Z

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    new-array v1, v4, [Z

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollWhenResurrectSelection:Z

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->delayIncludeDoneWaiting:Z

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initAbsListView()V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setVerticalScrollBarEnabled(Z)V

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v9, Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollProfilingStarted:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mFlingProfilingStarted:Z

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollWhenResurrectSelection:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->delayIncludeDoneWaiting:Z

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initAbsListView()V

    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->setStackFromBottom(Z)V

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setScrollingCacheEnabled(Z)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->setTextFilterEnabled(Z)V

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setTranscriptMode(I)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setCacheColorHint(I)V

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setFastScrollEnabled(Z)V

    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->setSmoothScrollbarEnabled(Z)V

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->setChoiceMode(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcAbsListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcAbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcAbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/widget/HtcAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcFastScroller;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;IJ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$PositionScroller;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    return v0
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    const/4 v2, 0x0

    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private contentFits()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createTextFilter(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

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

    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

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
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mDensityScale:F

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileLogFps()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLogFps:I

    instance-of v1, p0, Lcom/htc/widget/HtcGridViewCore;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/htc/widget/HtcGridView;

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->performHapticFeedback(I)Z

    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getLocationOnScreen([I)V

    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private showPopup()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->positionPopup()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->checkFocus()V

    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 4

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v2, "list_selector_holo_dark"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setSelector(I)V

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

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

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

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

    instance-of v0, p1, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    return-void
.end method

.method clearScrollingCache()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcAbsListView$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$2;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    mul-int/lit8 v2, v1, 0x64

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

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

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

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

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    mul-int/lit8 v2, v1, 0x64

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

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

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

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

    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

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
    .locals 3

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

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

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    :cond_0
    return-void
.end method

.method dismissPopup()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

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

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getDrawableState()[I

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

.method findClosestMotionRow(I)I
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method protected abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomBorderHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomBoundary()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

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

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    :cond_1
    return-object v3

    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    new-array v3, v0, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getChildrenTotalHeight()I
    .locals 3

    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getPageHeightWithGap()I

    move-result v0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView$FlingRunnable;
    .locals 1

    new-instance v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

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

.method protected getItemsPerPage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getLeftBorderWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

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

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getPageCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPageHeightWithGap()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getRightBorderWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

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

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_0

    sub-int v5, v3, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method protected getRowPerPage()I
    .locals 1

    const/4 v0, 0x0

    return v0
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

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

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

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_c

    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v5, :cond_3

    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    if-eq v5, v10, :cond_0

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    if-ne v5, v4, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    if-lt v5, v6, :cond_2

    :cond_0
    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    packed-switch v5, :pswitch_data_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemPosition()I

    move-result v2

    if-lt v2, v0, :cond_4

    add-int/lit8 v2, v0, -0x1

    :cond_4
    if-gez v2, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v3

    if-ltz v3, :cond_a

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->findSyncPosition()I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v3

    if-ne v3, v2, :cond_3

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    iget-wide v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_7
    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_1

    :pswitch_1
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getItemsPerPage()I

    move-result v1

    if-lez v1, :cond_8

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v1

    mul-int/2addr v4, v1

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    :cond_8
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    if-lt v4, v0, :cond_1

    :goto_2
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    if-lt v4, v0, :cond_9

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto :goto_2

    :cond_9
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    if-gez v4, :cond_1

    iput v7, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v2, v7}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v3

    if-ltz v3, :cond_c

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    :cond_b
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    if-gez v5, :cond_1

    :cond_c
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_d

    const/4 v4, 0x3

    :cond_d
    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    iput v9, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    iput v9, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcFastScroller;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    :cond_1
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->isVisible()Z

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isLongClickable()Z

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
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    new-instance v5, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

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

.method obtainView(I[Z)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    aput-boolean v5, p2, v5

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

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
    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v2, 0x1

    aput-boolean v2, p2, v5

    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

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

    :cond_4
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected offsetChildrenLeftAndRight(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 10

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onConsistencyCheck(I)Z

    move-result v4

    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_5

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$1900(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v7, v0, v3

    if-eqz v7, :cond_0

    const/4 v4, 0x0

    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$2000(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x0

    :cond_3
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$2100(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    array-length v2, v6

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Lcom/htc/widget/HtcAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v4, 0x0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v4, Lcom/htc/widget/HtcAbsListView;->ENABLED_STATE_SET:[I

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
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v0, Lcom/htc/widget/HtcAbsListView$3;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/widget/HtcAbsListView$3;-><init>(Lcom/htc/widget/HtcAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->clear()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onDisplayHint(I)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method protected onFling(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v10, p1}, Lcom/htc/widget/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v8

    :cond_0
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v8, v9

    goto :goto_0

    :pswitch_1
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v2

    if-eq v4, v12, :cond_3

    if-ltz v2, :cond_3

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v10, v2, v10

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    :cond_2
    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    iput v7, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    :cond_3
    const/high16 v10, -0x8000

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    if-ne v4, v12, :cond_1

    goto :goto_0

    :pswitch_2
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    sub-int v10, v7, v10

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcAbsListView;->startScrollIfNeeded(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    :pswitch_4
    iput v11, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    iput v11, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcAdapterView;->onLayout(ZIIII)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->markChildrenDirty()V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->useDefaultSelector()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

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

    check-cast v0, Lcom/htc/widget/HtcAbsListView$SavedState;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setFilterText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    return-void

    :cond_1
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    const-wide/16 v11, -0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    new-instance v4, Lcom/htc/widget/HtcAbsListView$SavedState;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->height:I

    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_2

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    :goto_1
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v8, :cond_0

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    :cond_0
    return-object v4

    :cond_1
    move v1, v8

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    goto :goto_1

    :cond_3
    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    goto :goto_1
.end method

.method onScrollToBoundary()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onSizeChanged(IIII)V

    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v23

    if-nez v23, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v23

    if-nez v23, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isLongClickable()Z

    move-result v23

    if-eqz v23, :cond_1

    :cond_0
    const/16 v23, 0x1

    :goto_0
    return v23

    :cond_1
    const/16 v23, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstanceIfExist()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/16 v23, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-nez v23, :cond_5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v4, 0xff

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    :cond_6
    :goto_1
    :pswitch_0
    const/16 v23, 0x1

    goto :goto_0

    :pswitch_1
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    if-ltz v15, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v23

    check-cast v23, Landroid/widget/ListAdapter;

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v23

    if-eqz v23, :cond_a

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    if-nez v23, :cond_7

    new-instance v23, Lcom/htc/widget/HtcAbsListView$CheckForTap;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView$CheckForTap;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_2
    if-ltz v15, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v15, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    :cond_9
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    const/high16 v23, -0x8000

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    goto/16 :goto_1

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v23

    if-eqz v23, :cond_b

    if-gez v15, :cond_b

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->createScrollingCache()V

    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v15

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    move/from16 v23, v0

    sub-int v10, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    move/from16 v23, v0

    sub-int v10, v10, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v23, v0

    const/high16 v24, -0x8000

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v23, v0

    sub-int v12, v22, v23

    :goto_3
    const/4 v5, 0x0

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12}, Lcom/htc/widget/HtcAbsListView;->trackMotionScrollWithConstrain(II)Z

    move-result v5

    :cond_c
    if-eqz v5, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v23

    if-lez v23, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v15

    if-ltz v15, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v15, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    :cond_d
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    :cond_e
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-interface {v0, v1, v10, v2, v3}, Landroid/text/method/TextSelectionMovementMethod;->onScrollChanged(IIII)V

    goto/16 :goto_1

    :cond_10
    move v12, v10

    goto :goto_3

    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_2

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    move/from16 v23, v0

    if-nez v23, :cond_11

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_13
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v15, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_20

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v23

    if-nez v23, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    move/from16 v23, v0

    if-nez v23, :cond_14

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    move-object/from16 v23, v0

    if-nez v23, :cond_15

    new-instance v23, Lcom/htc/widget/HtcAbsListView$PerformClick;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView$PerformClick;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v7, v0, Lcom/htc/widget/HtcAbsListView$PerformClick;->mChild:Landroid/view/View;

    move-object/from16 v0, v17

    iput v15, v0, Lcom/htc/widget/HtcAbsListView$PerformClick;->mClickMotionPosition:I

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAbsListView$PerformClick;->rememberWindowAttachCount()V

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->delayIncludeDoneWaiting:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    :cond_16
    const/4 v6, 0x1

    :cond_17
    :goto_5
    if-eqz v6, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    if-nez v23, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    :goto_6
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_18
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v23, v0

    if-nez v23, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v23

    if-eqz v23, :cond_1e

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAbsListView;->positionSelector(Landroid/view/View;)V

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_19

    instance-of v0, v9, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v23, v0

    if-eqz v23, :cond_19

    check-cast v9, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    :goto_7
    const/16 v23, 0x1

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    :cond_1b
    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v23, v0

    goto/16 :goto_6

    :cond_1d
    new-instance v23, Lcom/htc/widget/HtcAbsListView$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/widget/HtcAbsListView$1;-><init>(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Lcom/htc/widget/HtcAbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_1e
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    goto :goto_7

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v23, v0

    if-nez v23, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v23

    if-eqz v23, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_20
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    goto/16 :goto_4

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    if-nez v23, :cond_21

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    add-int v23, v23, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_21

    add-int/lit8 v23, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBottom()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_21

    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    const/16 v23, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fe999999999999aL

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v13, v0

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_22

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcAbsListView;->onFling(I)V

    goto/16 :goto_4

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onUp()V

    goto/16 :goto_4

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onUp()V

    goto/16 :goto_4

    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v23, v0

    if-eqz v23, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_24

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1

    :cond_24
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_25

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-eqz v23, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_27
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    goto/16 :goto_1

    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v15

    if-ltz v15, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v15, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    :cond_28
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    :cond_0
    return-void
.end method

.method protected onUp()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :goto_0
    if-nez p1, :cond_4

    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->resetPressedStatus(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    if-ne v0, v2, :cond_2

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    :cond_2
    :goto_1
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    :cond_5
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v1, :cond_3

    const/4 v7, 0x1

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    move v5, v8

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_1
    if-eqz v5, :cond_7

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    :goto_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    const/4 v6, 0x0

    :cond_2
    :goto_3
    iput-boolean v8, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    :cond_3
    if-eqz v6, :cond_4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v7, v0

    :cond_4
    return v7

    :cond_5
    move v5, v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_2

    :cond_8
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v8, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_a

    move v5, v8

    :goto_4
    if-eqz v5, :cond_b

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_9
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3

    :cond_a
    move v5, v0

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_c
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public pointToPosition(II)I
    .locals 5

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

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

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

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

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView;->positionSelector(IIII)V

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->refreshDrawableState()V

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

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    invoke-static {v5}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$1800(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    iget v6, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    invoke-interface {v3, v0}, Lcom/htc/widget/HtcAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->removeAllViewsInLayout()V

    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

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
    .locals 7

    const/4 v6, 0x0

    const/4 v3, -0x5

    const/4 v5, 0x1

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    if-eq p1, v2, :cond_4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mLogFps:I

    if-ne v2, v5, :cond_2

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    packed-switch p1, :pswitch_data_1

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v2, p0, p1}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    :cond_3
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    :cond_4
    return-void

    :pswitch_0
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    iput-boolean v6, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    iput-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    goto :goto_0

    :pswitch_2
    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCROLL_STATE_IDLE, activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Landroid/view/ViewDebug;->logFps:Z

    goto :goto_1

    :pswitch_3
    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCROLL_STATE_TOUCH_SCROLL, activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Landroid/view/ViewDebug;->logFps:Z

    goto :goto_1

    :pswitch_4
    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCROLL_STATE_FLING, activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Landroid/view/ViewDebug;->logFps:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
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

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resetList()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->removeAllViewsInLayout()V

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    return-void
.end method

.method public resetPressedStatus(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    :cond_0
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getTopBorderHeight()I

    move-result v18

    add-int v5, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getBottomBorderHeight()I

    move-result v18

    sub-int v4, v17, v18

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    const/4 v6, 0x1

    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    move v12, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v13, v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollWhenResurrectSelection:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAbsListView;->setSelectionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    :cond_2
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_3
    if-le v11, v4, :cond_1

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    :cond_4
    if-ge v14, v7, :cond_8

    move v12, v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    if-nez v8, :cond_6

    move v13, v15

    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    :cond_6
    if-lt v15, v5, :cond_7

    add-int v12, v7, v8

    move v13, v15

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    const/4 v6, 0x0

    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    add-int/lit8 v8, v3, -0x1

    :goto_4
    if-ltz v8, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

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
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    :cond_a
    if-gt v2, v4, :cond_b

    add-int v12, v7, v8

    move v13, v15

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->acceptFilter()Z

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

    invoke-direct {p0, v7}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    move-object v1, p3

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {p3, v5, v6, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :sswitch_0
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    invoke-virtual {v5, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    const/4 v2, 0x1

    :cond_3
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :sswitch_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

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

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->setCacheColorHint(I)V

    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2

    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearChoices()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setLongClickable(Z)V

    :cond_3
    return-void
.end method

.method public setDelayActionUpTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    return-void
.end method

.method public setDelayIncludeDoneWaiting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->delayIncludeDoneWaiting:Z

    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->stop()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->clearSavedState()V

    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView;->setFrame(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->positionPopup()V

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setItemChecked(IZ)V
    .locals 9

    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_2
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_9

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_4
    :goto_1
    if-eq v6, p2, :cond_5

    if-eqz p2, :cond_8

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iput-boolean v8, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_d

    move v7, v8

    :goto_4
    if-nez p2, :cond_a

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v7, :cond_b

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :cond_b
    if-eqz p2, :cond_e

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v7, :cond_c

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_c
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3

    :cond_d
    move v7, v0

    goto :goto_4

    :cond_e
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_f
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->setWrapped(Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;)V

    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setRecyclerListener(Lcom/htc/widget/HtcAbsListView$RecyclerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #setter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$1802(Lcom/htc/widget/HtcAbsListView$RecycleBin;Lcom/htc/widget/HtcAbsListView$RecyclerListener;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->touchModeDrawsInPressedState()Z

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

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

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

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/htc/widget/BouncingListView;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/htc/widget/BouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/BouncingListView;->getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->startScroll(II)V

    return-void

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->start(I)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->start(II)V

    return-void
.end method

.method protected startScrollIfNeeded(I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    if-le v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->createScrollingCache()V

    const/4 v5, 0x3

    iput v5, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

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

.method trackMotionScroll(II)Z
    .locals 31

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    const/16 v29, 0x1

    :goto_0
    return v29

    :cond_0
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/lit8 v29, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v25, v29, v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v10, v29, v30

    sub-int v26, v19, v10

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    move/from16 v30, v0

    sub-int v15, v29, v30

    if-gez p1, :cond_1

    add-int/lit8 v29, v15, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    if-gez p2, :cond_2

    add-int/lit8 v29, v15, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v11, :cond_3

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getTopBoundary()I

    move-result v30

    add-int v29, v29, v30

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getTopBorderHeight()I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v29

    if-le v12, v0, :cond_3

    if-lez p1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->enableStopScrollNow()Z

    move-result v29

    if-eqz v29, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onScrollToBoundary()V

    const/16 v29, 0x1

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v29, v15, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_2
    add-int/lit8 v29, v15, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    :cond_3
    add-int v29, v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getBottomBoundary()I

    move-result v29

    mul-int/lit8 v29, v29, 0x2

    sub-int v29, v10, v29

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getBottomBorderHeight()I

    move-result v30

    sub-int v29, v29, v30

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    if-gez p1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->enableStopScrollNow()Z

    move-result v29

    if-eqz v29, :cond_4

    if-gtz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onScrollToBoundary()V

    const/16 v29, 0x1

    goto/16 :goto_0

    :cond_4
    if-gez p2, :cond_e

    const/4 v9, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeaderViewsCount()I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getFooterViewsCount()I

    move-result v30

    sub-int v13, v29, v30

    const/16 v27, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v29, v0

    if-eqz v29, :cond_6

    move-object/from16 v29, p0

    check-cast v29, Lcom/htc/widget/HtcGridViewCore;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/widget/HtcGridViewCore;->getNumColumns()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getRowPerPage()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getItemsPerPage()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getPageCount()I

    move-result v22

    add-int/lit8 v29, v22, -0x1

    mul-int v29, v29, v7

    mul-int v20, v29, v24

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildrenTotalHeight()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_f

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    if-nez v9, :cond_f

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewNewTop:I

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-lez v8, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lcom/htc/widget/HtcAbsListView;->detachViewsFromParent(II)V

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->offsetChildrenTopAndBottom(I)V

    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v8

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move/from16 v0, v25

    if-lt v0, v2, :cond_b

    move/from16 v0, v26

    if-ge v0, v2, :cond_c

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAbsListView;->fillGap(Z)V

    :cond_c
    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v6, v29, v30

    if-ltz v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v6, v0, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->positionSelector(Landroid/view/View;)V

    :cond_d
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->awakenScrollBars()Z

    const/16 v29, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_f
    if-eqz v9, :cond_14

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v29, p2

    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v0, v5, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    :cond_10
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-le v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v29, v0

    if-nez v29, :cond_8

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v29, v0

    if-eqz v29, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v8

    move/from16 v0, v29

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    :cond_12
    add-int/lit8 v8, v8, 0x1

    add-int v23, v11, v16

    move/from16 v0, v23

    if-lt v0, v14, :cond_13

    move/from16 v0, v23

    if-ge v0, v13, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_13
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    sub-int v3, v29, p2

    add-int/lit8 v16, v5, -0x1

    :goto_5
    if-ltz v16, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v3, :cond_8

    move/from16 v27, v16

    add-int/lit8 v8, v8, 0x1

    add-int v23, v11, v16

    move/from16 v0, v23

    if-lt v0, v14, :cond_15

    move/from16 v0, v23

    if-ge v0, v13, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_15
    add-int/lit8 v16, v16, -0x1

    goto :goto_5
.end method

.method trackMotionScrollWithConstrain(II)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->trackMotionScroll(II)Z

    move-result v0

    return v0
.end method

.method unPressedUnSelectChildren(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

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
    .locals 10

    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getTopBorderHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-ge v6, v8, :cond_5

    move v1, v4

    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getBottomBorderHeight()I

    move-result v9

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    move v1, v5

    goto :goto_0

    :cond_5
    move v1, v5

    goto :goto_1

    :cond_6
    move v6, v7

    goto :goto_2

    :cond_7
    move v0, v5

    goto :goto_3

    :cond_8
    move v0, v5

    goto :goto_4

    :cond_9
    move v5, v7

    goto :goto_5
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

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
