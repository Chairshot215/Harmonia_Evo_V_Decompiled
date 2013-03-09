.class public abstract Lcom/htc/opensense/widget/AlbumAbsListView;
.super Lcom/htc/opensense/widget/AlbumAdapterView;
.source "AlbumAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;,
        Lcom/htc/opensense/widget/AlbumAbsListView$RecyclerListener;,
        Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;,
        Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;,
        Lcom/htc/opensense/widget/AlbumAbsListView$CheckForTap;,
        Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;,
        Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;,
        Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;,
        Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;,
        Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;,
        Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/widget/AlbumAdapterView",
        "<",
        "Landroid/widget/BaseAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

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

.field mAdapter:Landroid/widget/BaseAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/widget/AlbumAdapterView",
            "<",
            "Landroid/widget/BaseAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field mFastScrollEnabled:Z

.field private mFiltered:Z

.field mFlingProfilingStarted:Z

.field protected mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

.field private mIsChildViewEnabled:Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

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

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mWidthMeasureSpec:I

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    iput-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    iput-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollProfilingStarted:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingProfilingStarted:Z

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastScrollState:I

    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayIncludeDoneWaiting:Z

    iput-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->initAbsListView()V

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setVerticalScrollBarEnabled(Z)V

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mWidthMeasureSpec:I

    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollProfilingStarted:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingProfilingStarted:Z

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastScrollState:I

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayIncludeDoneWaiting:Z

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->initAbsListView()V

    sget-object v8, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->setStackFromBottom(Z)V

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->setScrollingCacheEnabled(Z)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->setTextFilterEnabled(Z)V

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->setTranscriptMode(I)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setCacheColorHint(I)V

    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSmoothScrollbarEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/opensense/widget/AlbumAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;IJ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/widget/AlbumAbsListView;)Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;)Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    return v0
.end method

.method private createScrollingCache()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCachingStarted:Z

    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getContext()Landroid/content/Context;

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

    iput-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

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

.method private getTouchSlop()I
    .locals 1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x32

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private initAbsListView()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setScrollingCacheEnabled(Z)V

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchSlop:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDensityScale:F

    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->performHapticFeedback(I)Z

    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->getLocationOnScreen([I)V

    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private showPopup()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->createTextFilter(Z)V

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->positionPopup()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->checkFocus()V

    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchSlop:I

    if-le v0, v5, :cond_2

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->createScrollingCache()V

    const/4 v5, 0x3

    iput v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionCorrection:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private useDefaultSelector()V
    .locals 0

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

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

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

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

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

    instance-of v0, p1, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    return v0
.end method

.method clearScrollingCache()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    :cond_1
    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCachingStarted:Z

    :cond_2
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    mul-int/lit8 v2, v1, 0x64

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

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

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

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

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    iget-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

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
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

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

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    new-instance v0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method dismissPopup()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollX:I

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollY:I

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    :cond_0
    iget-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

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
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getDrawableState()[I

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

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v1

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    const/high16 v2, 0x3f80

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    return v0
.end method

.method getChildrenTotalHeight()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getDefaultFlingRunnable()Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;
    .locals 1

    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

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

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

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

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    const/high16 v1, 0x3f80

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-lez v0, :cond_a

    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_3

    iput-boolean v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTranscriptMode:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTranscriptMode:I

    if-ne v4, v3, :cond_2

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldItemCount:I

    if-lt v4, v5, :cond_2

    :cond_0
    const/4 v3, 0x3

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncMode:I

    packed-switch v4, :pswitch_data_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getSelectedItemPosition()I

    move-result v1

    if-lt v1, v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    :cond_4
    if-gez v1, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {p0, v1, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ltz v2, :cond_8

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_6

    iput v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->findSyncPosition()I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p0, v1, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ne v2, v1, :cond_3

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    iget-wide v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    iput v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_7
    iput v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    goto :goto_1

    :pswitch_1
    iput v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v1, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ltz v2, :cond_a

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_9
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    if-gez v4, :cond_1

    :cond_a
    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-eqz v4, :cond_b

    const/4 v3, 0x3

    :cond_b
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedRowId:J

    iput-boolean v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;->onScroll(Lcom/htc/opensense/widget/AlbumAbsListView;III)V

    :cond_0
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method keyPressed()V
    .locals 8

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

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
    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isLongClickable()Z

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

    iget-boolean v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    new-instance v5, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V

    iput-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    :cond_5
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

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
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v4, Lcom/htc/opensense/widget/AlbumAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/opensense/widget/AlbumAdapterView;->onCreateDrawableState(I)[I

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

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->createTextFilter(Z)V

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsListView$2;

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/opensense/widget/AlbumAbsListView$2;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method onFling(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getDefaultFlingRunnable()Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->start(I)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->showPopup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->findMotionRow(I)I

    move-result v1

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    if-ltz v1, :cond_1

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionX:I

    iput v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    iput v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->clearScrollingCache()V

    :cond_1
    const/high16 v6, -0x8000

    iput v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    goto :goto_0

    :pswitch_1
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    sub-int v6, v4, v6

    invoke-direct {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->startScrollIfNeeded(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    goto :goto_0

    nop

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
    invoke-super {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

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

    invoke-super/range {p0 .. p5}, Lcom/htc/opensense/widget/AlbumAdapterView;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mInLayout:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mInLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->useDefaultSelector()V

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

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

    check-cast v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/opensense/widget/AlbumAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncHeight:J

    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_1

    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncRowId:J

    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSpecificTop:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncMode:I

    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setFilterText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayout()V

    return-void

    :cond_1
    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncRowId:J

    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSpecificTop:I

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    const-wide/16 v11, -0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    new-instance v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;

    invoke-direct {v4, v5}, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->selectedId:J

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v9

    iput v9, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->height:I

    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_2

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    iput-wide v11, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    :goto_1
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->filter:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v8, :cond_0

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->filter:Ljava/lang/String;

    :cond_0
    return-object v4

    :cond_1
    move v1, v8

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    iget v9, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-virtual {v8, v9}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    goto :goto_1

    :cond_3
    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    iput-wide v11, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    goto :goto_1
.end method

.method onScrollToBoundary()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->rememberSyncState()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->showPopup()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

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

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_0
    const/16 v20, 0x1

    :goto_1
    return v20

    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->pointToPosition(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    if-ltz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v20

    check-cast v20, Landroid/widget/BaseAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    new-instance v20, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForTap;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForTap;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_2
    if-ltz v13, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionX:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    :cond_4
    const/high16 v20, -0x8000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v20

    if-eqz v20, :cond_6

    if-gez v13, :cond_6

    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->createScrollingCache()V

    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->findMotionRow(I)I

    move-result v13

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionCorrection:I

    move/from16 v20, v0

    sub-int v8, v8, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    move/from16 v20, v0

    const/high16 v21, -0x8000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    move/from16 v20, v0

    sub-int v10, v19, v20

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/htc/opensense/widget/AlbumAbsListView;->trackMotionScrollWithConstrain(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewNewTop:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->findMotionRow(I)I

    move-result v13

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionCorrection:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    :cond_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    goto/16 :goto_0

    :cond_8
    move v10, v8

    goto :goto_3

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_2

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v20

    if-nez v20, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPerformClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    move-object/from16 v20, v0

    if-nez v20, :cond_c

    new-instance v20, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mPerformClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPerformClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    iput-object v6, v15, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->mChild:Landroid/view/View;

    iput v13, v15, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->mClickMotionPosition:I

    invoke-virtual {v15}, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->rememberWindowAttachCount()V

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayIncludeDoneWaiting:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    :cond_d
    const/4 v5, 0x1

    :cond_e
    :goto_5
    if-eqz v5, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-nez v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    :goto_6
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_f
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->positionSelector(Landroid/view/View;)V

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_10

    instance-of v0, v7, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_10

    check-cast v7, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/opensense/widget/AlbumAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_11
    :goto_7
    const/16 v20, 0x1

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    :cond_13
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    move-object/from16 v20, v0

    goto/16 :goto_6

    :cond_15
    new-instance v20, Lcom/htc/opensense/widget/AlbumAbsListView$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v15}, Lcom/htc/opensense/widget/AlbumAbsListView$1;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/opensense/widget/AlbumAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_17
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    const/16 v20, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v20

    move/from16 v0, v20

    float-to-int v11, v0

    const/16 v12, 0x514

    const/16 v20, 0x514

    move/from16 v0, v20

    if-le v11, v0, :cond_19

    const/16 v11, 0x514

    :cond_18
    :goto_8
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v20

    if-lez v20, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/opensense/widget/AlbumAbsListView;->onFling(I)V

    goto/16 :goto_4

    :cond_19
    const/16 v20, -0x514

    move/from16 v0, v20

    if-ge v11, v0, :cond_18

    const/16 v11, -0x514

    goto :goto_8

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->onUp()V

    goto/16 :goto_4

    :pswitch_7
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_1b

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->clearScrollingCache()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

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

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hideSelector()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    :cond_0
    return-void
.end method

.method onUp()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :goto_1
    if-nez p1, :cond_4

    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->resetPressedStatus(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    if-ne v0, v2, :cond_2

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    :cond_2
    :goto_2
    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->showPopup()V

    :cond_5
    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->resurrectSelection()Z

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hideSelector()V

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    goto :goto_2
.end method

.method public pointToPosition(II)I
    .locals 5

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->pointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

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

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->positionSelector(IIII)V

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mIsChildViewEnabled:Z

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mIsChildViewEnabled:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->refreshDrawableState()V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/opensense/widget/AlbumAbsListView;I)V

    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastScrollState:I

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->resetList()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected abstract rescanScreen()V
.end method

.method resetList()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeAllViewsInLayout()V

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedRowId:J

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    return-void
.end method

.method resetListAndClearViews()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayout()V

    return-void
.end method

.method public resetPressedStatus(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    :cond_0
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    const/4 v6, 0x1

    if-lt v14, v7, :cond_3

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    move v12, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v13, v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->clearScrollingCache()V

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    if-lt v12, v7, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_b

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invokeOnItemScrollListener()V

    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    if-ltz v12, :cond_c

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_2
    if-le v11, v4, :cond_1

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    :cond_3
    if-ge v14, v7, :cond_7

    move v12, v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    if-nez v8, :cond_5

    move v13, v15

    if-gtz v7, :cond_4

    if-ge v15, v5, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    :cond_5
    if-lt v15, v5, :cond_6

    add-int v12, v7, v8

    move v13, v15

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    const/4 v6, 0x0

    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    add-int/lit8 v8, v3, -0x1

    :goto_4
    if-ltz v8, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_9

    move v13, v15

    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_8

    if-le v2, v4, :cond_9

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    :cond_9
    if-gt v2, v4, :cond_a

    add-int v12, v7, v8

    move v13, v15

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_b
    const/4 v12, -0x1

    goto :goto_2

    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->acceptFilter()Z

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

    invoke-direct {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->createTextFilter(Z)V

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
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :sswitch_0
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    iget-boolean v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

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

.method public setCacheColorHint(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    return-void
.end method

.method public setDelayActionUpTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    return-void
.end method

.method public setDelayIncludeDoneWaiting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayIncludeDoneWaiting:Z

    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3

    iget-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->createTextFilter(Z)V

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataSetObserver:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->clearSavedState()V

    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAdapterView;->setFrame(IIII)Z

    move-result v0

    iget-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->positionPopup()V

    :cond_0
    return v0
.end method

.method public setOnScrollListener(Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setRecyclerListener(Lcom/htc/opensense/widget/AlbumAbsListView$RecyclerListener;)V
    .locals 0

    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollUp:Landroid/view/View;

    iput-object p2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollDown:Landroid/view/View;

    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->clearScrollingCache()V

    :cond_0
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollingCacheEnabled:Z

    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTranscriptMode:I

    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->touchModeDrawsInPressedState()Z

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

    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

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

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

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
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v10

    add-int/lit8 v21, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getBottom()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v17, v21, v10

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v8, v21, v22

    sub-int v18, v15, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    move/from16 v22, v0

    sub-int v13, v21, v22

    if-gez p1, :cond_1

    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    if-gez p2, :cond_2

    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_3

    move/from16 v0, v18

    if-lt v0, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hideSelector()V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->offsetChildrenTopAndBottom(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    move/from16 v21, v0

    add-int v21, v21, p1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewNewTop:I

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_2
    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-nez v9, :cond_4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getTopBoundary()I

    move-result v22

    add-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getTopBorderHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    if-le v10, v0, :cond_4

    if-lez p1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->enableStopScrollNow()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->onScrollToBoundary()V

    goto/16 :goto_0

    :cond_4
    add-int v21, v9, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getBottomBoundary()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, v8, v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getBottomBorderHeight()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    if-ge v15, v0, :cond_5

    if-gez p1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->enableStopScrollNow()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->onScrollToBoundary()V

    goto/16 :goto_0

    :cond_5
    if-gez p2, :cond_8

    const/4 v7, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hideSelector()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeaderViewsCount()I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getFooterViewsCount()I

    move-result v22

    sub-int v11, v21, v22

    const/16 v19, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildrenTotalHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    if-eqz v7, :cond_a

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v21, p2

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v5, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    move/from16 v21, v0

    add-int v21, v21, p1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewNewTop:I

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->detachViewsFromParent(II)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->offsetChildrenTopAndBottom(I)V

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v21, v0

    add-int v21, v21, v6

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->fillGap(Z)V

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invokeOnItemScrollListener()V

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_9
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v3, v21, p2

    add-int/lit8 v14, v5, -0x1

    :goto_5
    if-ltz v14, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v3, :cond_6

    move/from16 v19, v14

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_5
.end method

.method trackMotionScrollWithConstrain(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->trackMotionScroll(II)V

    return-void
.end method

.method unPressedAllChildren()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5

    move v1, v4

    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v3

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBottom:I

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollDown:Landroid/view/View;

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

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
