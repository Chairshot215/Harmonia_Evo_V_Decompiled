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
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 467
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;-><init>(Landroid/content/Context;)V

    .line 152
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 167
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    .line 177
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 188
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    .line 193
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    .line 198
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    .line 203
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    .line 208
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 213
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mWidthMeasureSpec:I

    .line 260
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 286
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    .line 324
    iput-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    .line 344
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 346
    iput-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 355
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    .line 358
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollProfilingStarted:Z

    .line 361
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingProfilingStarted:Z

    .line 403
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastScrollState:I

    .line 1892
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    .line 1897
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayIncludeDoneWaiting:Z

    .line 1902
    iput-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    .line 468
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->initAbsListView()V

    .line 470
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 471
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 472
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 473
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 474
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 477
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 478
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 481
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 167
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    .line 177
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 188
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    .line 193
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    .line 198
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    .line 203
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    .line 208
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 213
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mWidthMeasureSpec:I

    .line 260
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 286
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    .line 324
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    .line 344
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 346
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 355
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    .line 358
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollProfilingStarted:Z

    .line 361
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingProfilingStarted:Z

    .line 403
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastScrollState:I

    .line 1892
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    .line 1897
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayIncludeDoneWaiting:Z

    .line 1902
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    .line 482
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->initAbsListView()V

    .line 484
    sget-object v8, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 487
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 488
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 489
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 492
    :cond_0
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    .line 495
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 496
    .local v5, stackFromBottom:Z
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->setStackFromBottom(Z)V

    .line 498
    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 499
    .local v3, scrollingCacheEnabled:Z
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->setScrollingCacheEnabled(Z)V

    .line 501
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 502
    .local v7, useTextFilter:Z
    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->setTextFilterEnabled(Z)V

    .line 504
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 506
    .local v6, transcriptMode:I
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->setTranscriptMode(I)V

    .line 508
    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 509
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setCacheColorHint(I)V

    .line 514
    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 515
    .local v4, smoothScrollbar:Z
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 517
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 518
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 900
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

    .line 902
    :cond_0
    const/4 v0, 0x0

    .line 904
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/opensense/widget/AlbumAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/widget/AlbumAbsListView;)Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;)Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    return v0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2394
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 2395
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2396
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2397
    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCachingStarted:Z

    .line 2399
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 3058
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 3059
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3060
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3061
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3063
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x10900ac

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 3068
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 3070
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3071
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3072
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3073
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3074
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3075
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3076
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3077
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3078
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3079
    iput-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 3080
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3082
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 3083
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 3087
    :goto_0
    return-void

    .line 3085
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1362
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1363
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1365
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
    .line 2886
    sparse-switch p2, :sswitch_data_0

    .line 2912
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2888
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 2889
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 2890
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2891
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 2915
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 2916
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 2917
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 2894
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

    .line 2895
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 2896
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 2897
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 2898
    .restart local v1       #dY:I
    goto :goto_0

    .line 2900
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 2901
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 2902
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 2903
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 2904
    .restart local v1       #dY:I
    goto :goto_0

    .line 2906
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

    .line 2907
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 2908
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 2909
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2910
    .restart local v1       #dY:I
    goto :goto_0

    .line 2886
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

    .prologue
    .line 705
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v0, :pswitch_data_0

    .line 711
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    :goto_0
    return v0

    .line 708
    :pswitch_0
    const/16 v0, 0x32

    goto :goto_0

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private initAbsListView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 695
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setFocusableInTouchMode(Z)V

    .line 696
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->setWillNotDraw(Z)V

    .line 697
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 698
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setScrollingCacheEnabled(Z)V

    .line 700
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchSlop:I

    .line 701
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDensityScale:F

    .line 702
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 1686
    const/4 v6, 0x0

    .line 1688
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1692
    :cond_0
    if-nez v6, :cond_1

    .line 1693
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1694
    invoke-super {p0, p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1696
    :cond_1
    if-eqz v6, :cond_2

    .line 1697
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->performHapticFeedback(I)Z

    .line 1699
    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 2859
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2860
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 2861
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->getLocationOnScreen([I)V

    .line 2864
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

    .line 2865
    .local v0, bottomGap:I
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2866
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2871
    :goto_0
    return-void

    .line 2869
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1287
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

    .line 1289
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 2850
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2851
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->createTextFilter(Z)V

    .line 2852
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->positionPopup()V

    .line 2854
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->checkFocus()V

    .line 2856
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1848
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1849
    .local v0, distance:I
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchSlop:I

    if-le v0, v5, :cond_2

    .line 1850
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->createScrollingCache()V

    .line 1851
    const/4 v5, 0x3

    iput v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 1852
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionCorrection:I

    .line 1853
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1857
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 1858
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1860
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 1861
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1862
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1863
    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1865
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    .line 1868
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1872
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 718
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
    .line 2244
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v2

    .line 2245
    .local v2, count:I
    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    .line 2246
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 2248
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2259
    :cond_0
    return-void

    .line 2252
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2253
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2254
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2255
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2257
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2252
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 3167
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3129
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 3049
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
    .parameter "p"

    .prologue
    .line 3188
    instance-of v0, p1, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    return v0
.end method

.method clearScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2402
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_2

    .line 2403
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2404
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2405
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2407
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2408
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 2410
    :cond_1
    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCachingStarted:Z

    .line 2412
    :cond_2
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 3093
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 3094
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    .line 3096
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3097
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    .line 3100
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 992
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v1

    .line 993
    .local v1, count:I
    if-lez v1, :cond_3

    .line 994
    iget-boolean v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 995
    mul-int/lit8 v2, v1, 0x64

    .line 997
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 998
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 999
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1000
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1001
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1004
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1005
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1006
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1007
    if-lez v3, :cond_1

    .line 1008
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 1016
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 1013
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1016
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1021
    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    .line 1022
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    .line 1023
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1024
    iget-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1025
    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1026
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1027
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1028
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1029
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1044
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 1033
    :cond_1
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mItemCount:I

    .line 1034
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1035
    const/4 v4, 0x0

    .line 1041
    .local v4, index:I
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

    .line 1036
    .end local v4           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1037
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 1039
    .end local v4           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4       #index:I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1049
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1600
    new-instance v0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2841
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2843
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1293
    const/4 v2, 0x0

    .line 1294
    .local v2, saveCount:I
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 1295
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1297
    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollX:I

    .line 1298
    .local v3, scrollX:I
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollY:I

    .line 1299
    .local v4, scrollY:I
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1302
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    .line 1305
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    .line 1306
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1307
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1310
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1312
    if-eqz v1, :cond_2

    .line 1313
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1316
    :cond_2
    if-eqz v0, :cond_3

    .line 1317
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1318
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    .line 1320
    :cond_3
    return-void

    .line 1294
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
    .line 1753
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 2179
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2184
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1462
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->drawableStateChanged()V

    .line 1463
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1466
    :cond_0
    return-void
.end method

.method enableStopScrollNow()Z
    .locals 1

    .prologue
    .line 3622
    const/4 v0, 0x1

    return v0
.end method

.method abstract fillGap(Z)V
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 3178
    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 3183
    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getBottomBorderHeight()I
    .locals 1

    .prologue
    .line 3645
    const/4 v0, 0x0

    return v0
.end method

.method getBottomBoundary()I
    .locals 1

    .prologue
    .line 3597
    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v1

    .line 1072
    .local v1, count:I
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1073
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 1083
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 1076
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1077
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1080
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1081
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v4

    .line 1082
    .local v4, height:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1083
    .local v3, fadeLength:F
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

    .prologue
    .line 3237
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    return v0
.end method

.method getChildrenTotalHeight()I
    .locals 3

    .prologue
    .line 3630
    const/4 v0, 0x0

    .line 3631
    .local v0, childrenTotalHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3632
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 3631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3634
    :cond_0
    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getDefaultFlingRunnable()Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;
    .locals 1

    .prologue
    .line 3618
    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 682
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 686
    invoke-virtual {p0, v0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 2552
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 2542
    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1166
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1167
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1169
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 3217
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 943
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 3649
    const/4 v0, 0x0

    return v0
.end method

.method getTopBoundary()I
    .locals 1

    .prologue
    .line 3593
    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    .line 1055
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1056
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1065
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1059
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1060
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1063
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1064
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1065
    .local v2, fadeLength:F
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

    .prologue
    .line 3212
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 2723
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mItemCount:I

    .line 2724
    .local v0, count:I
    if-lez v0, :cond_a

    .line 2731
    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mNeedSync:Z

    if-eqz v4, :cond_3

    .line 2733
    iput-boolean v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mNeedSync:Z

    .line 2735
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTranscriptMode:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTranscriptMode:I

    if-ne v4, v3, :cond_2

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOldItemCount:I

    if-lt v4, v5, :cond_2

    .line 2738
    :cond_0
    const/4 v3, 0x3

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2834
    :cond_1
    :goto_0
    return-void

    .line 2742
    :cond_2
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncMode:I

    packed-switch v4, :pswitch_data_0

    .line 2790
    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2792
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 2795
    .local v1, newPos:I
    if-lt v1, v0, :cond_4

    .line 2796
    add-int/lit8 v1, v0, -0x1

    .line 2798
    :cond_4
    if-gez v1, :cond_5

    .line 2799
    const/4 v1, 0x0

    .line 2803
    :cond_5
    invoke-virtual {p0, v1, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2805
    .local v2, selectablePos:I
    if-ltz v2, :cond_8

    .line 2806
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2744
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2749
    iput v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2750
    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncPosition:I

    goto :goto_0

    .line 2756
    :cond_6
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->findSyncPosition()I

    move-result v1

    .line 2757
    .restart local v1       #newPos:I
    if-ltz v1, :cond_3

    .line 2759
    invoke-virtual {p0, v1, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2760
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_3

    .line 2762
    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncPosition:I

    .line 2764
    iget-wide v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 2767
    iput v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2775
    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2771
    :cond_7
    iput v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    goto :goto_1

    .line 2783
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2784
    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncPosition:I

    goto :goto_0

    .line 2810
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_8
    invoke-virtual {p0, v1, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2811
    if-ltz v2, :cond_a

    .line 2812
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2819
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_9
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    if-gez v4, :cond_1

    .line 2827
    :cond_a
    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-eqz v4, :cond_b

    const/4 v3, 0x3

    :cond_b
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2828
    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    .line 2829
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedRowId:J

    .line 2830
    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mNextSelectedPosition:I

    .line 2831
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mNextSelectedRowId:J

    .line 2832
    iput-boolean v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mNeedSync:Z

    .line 2833
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    .line 2742
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 3106
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2566
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 2567
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 2568
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 2569
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 2571
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectedPositionInt(I)V

    .line 2572
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    .line 2573
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    .line 2574
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2576
    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 2605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataChanged:Z

    .line 2606
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->rememberSyncState()V

    .line 2607
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayout()V

    .line 2608
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 2609
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;->onScroll(Lcom/htc/opensense/widget/AlbumAbsListView;III)V

    .line 616
    :cond_0
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 2922
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1422
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1423
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1424
    .local v3, selectorRect:Landroid/graphics/Rect;
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

    .line 1427
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1429
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1430
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1453
    .end local v4           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1431
    .restart local v4       #v:Landroid/view/View;
    :cond_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1433
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 1435
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isLongClickable()Z

    move-result v1

    .line 1436
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1437
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1438
    if-eqz v1, :cond_6

    .line 1439
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1445
    :cond_4
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 1446
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1447
    new-instance v5, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V

    iput-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    .line 1449
    :cond_5
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1450
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1442
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 1127
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 3
    .parameter "position"

    .prologue
    .line 1260
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1261
    .local v0, child:Landroid/view/View;
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    if-eqz v1, :cond_0

    .line 1262
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1270
    :cond_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1509
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->onAttachedToWindow()V

    .line 1511
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1512
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1513
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1515
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 1471
    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 1473
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1499
    :cond_0
    :goto_0
    return-object v3

    .line 1479
    :cond_1
    sget-object v4, Lcom/htc/opensense/widget/AlbumAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1484
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/opensense/widget/AlbumAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1485
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1486
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 1487
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1488
    move v0, v2

    .line 1494
    :cond_2
    if-ltz v0, :cond_0

    .line 1495
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1486
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 2994
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2998
    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->createTextFilter(Z)V

    .line 2999
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 3000
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 3001
    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsListView$2;

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/opensense/widget/AlbumAbsListView$2;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3035
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3037
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 3038
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3040
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1519
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->onDetachedFromWindow()V

    .line 1521
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1522
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1523
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1525
    :cond_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 3170
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 3171
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 3172
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->resurrectSelection()Z

    .line 3174
    :cond_0
    return-void
.end method

.method onFling(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    .line 3610
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 3611
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getDefaultFlingRunnable()Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    .line 3613
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    .line 3614
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->start(I)V

    .line 3615
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 948
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 949
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->resurrectSelection()Z

    .line 952
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 3110
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3112
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3113
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->showPopup()V

    .line 3122
    :cond_0
    :goto_0
    return-void

    .line 3117
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3118
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 2188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2189
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 2190
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 2200
    .local v4, y:I
    packed-switch v0, :pswitch_data_0

    .line 2236
    :cond_0
    :goto_0
    return v5

    .line 2202
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->findMotionRow(I)I

    move-result v1

    .line 2203
    .local v1, motionPosition:I
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    if-ltz v1, :cond_1

    .line 2206
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2207
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    .line 2208
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionX:I

    .line 2209
    iput v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    .line 2210
    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    .line 2211
    iput v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 2212
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->clearScrollingCache()V

    .line 2214
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/high16 v6, -0x8000

    iput v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    goto :goto_0

    .line 2219
    .end local v1           #motionPosition:I
    :pswitch_1
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 2221
    :pswitch_2
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    sub-int v6, v4, v6

    invoke-direct {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->startScrollIfNeeded(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2222
    const/4 v5, 0x1

    goto :goto_0

    .line 2230
    :pswitch_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 2231
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2219
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 1732
    sparse-switch p1, :sswitch_data_0

    .line 1746
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1735
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1737
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1738
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1739
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1740
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 1741
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1743
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1732
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1102
    invoke-super/range {p0 .. p5}, Lcom/htc/opensense/widget/AlbumAdapterView;->onLayout(ZIIII)V

    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mInLayout:Z

    .line 1104
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    .line 1105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mInLayout:Z

    .line 1106
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1090
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1091
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->useDefaultSelector()V

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1094
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1095
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1096
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1097
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1098
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 870
    move-object v0, p1

    check-cast v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;

    .line 872
    .local v0, ss:Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;
    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/opensense/widget/AlbumAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 873
    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataChanged:Z

    .line 875
    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncHeight:J

    .line 877
    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_1

    .line 878
    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mNeedSync:Z

    .line 879
    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncRowId:J

    .line 880
    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncPosition:I

    .line 881
    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSpecificTop:I

    .line 882
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncMode:I

    .line 894
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayout()V

    .line 897
    return-void

    .line 883
    :cond_1
    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 884
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectedPositionInt(I)V

    .line 886
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    .line 887
    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mNeedSync:Z

    .line 888
    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncRowId:J

    .line 889
    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncPosition:I

    .line 890
    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSpecificTop:I

    .line 891
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v8, 0x0

    .line 824
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    .line 826
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 828
    .local v5, superState:Landroid/os/Parcelable;
    new-instance v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;

    invoke-direct {v4, v5}, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 830
    .local v4, ss:Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v1, 0x1

    .line 831
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getSelectedItemId()J

    move-result-wide v2

    .line 832
    .local v2, selectedId:J
    iput-wide v2, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->selectedId:J

    .line 833
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v9

    iput v9, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->height:I

    .line 835
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_2

    .line 837
    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    .line 838
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    .line 839
    iput-wide v11, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    .line 854
    :goto_1
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 855
    iget-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v8, :cond_0

    .line 856
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 857
    .local v6, textFilter:Landroid/widget/EditText;
    if-eqz v6, :cond_0

    .line 858
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 859
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 865
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v6           #textFilter:Landroid/widget/EditText;
    :cond_0
    return-object v4

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v8

    .line 830
    goto :goto_0

    .line 841
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    if-eqz v1, :cond_3

    .line 843
    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 844
    .local v7, v:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    .line 845
    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    .line 846
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    iget v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    invoke-virtual {v8, v9}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 848
    .end local v7           #v:Landroid/view/View;
    :cond_3
    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    .line 849
    iput-wide v11, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    .line 850
    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    goto :goto_1
.end method

.method onScrollToBoundary()V
    .locals 0

    .prologue
    .line 3627
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1324
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataChanged:Z

    .line 1326
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->rememberSyncState()V

    .line 1331
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
    .line 3137
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3138
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3139
    .local v1, length:I
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 3140
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 3142
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->showPopup()V

    .line 3143
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    .line 3149
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 3150
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 3152
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 3153
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 3160
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 3144
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 3146
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    .line 3147
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    goto :goto_0

    .line 3155
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .parameter "ev"

    .prologue
    .line 1921
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1922
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1923
    .local v18, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 1927
    .local v19, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 1928
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1930
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1932
    packed-switch v4, :pswitch_data_0

    .line 2174
    :cond_1
    :goto_0
    const/16 v20, 0x1

    :goto_1
    return v20

    .line 1934
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->pointToPosition(II)I

    move-result v13

    .line 1935
    .local v13, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 1936
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

    .line 1940
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 1943
    new-instance v20, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForTap;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForTap;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 1945
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

    .line 1961
    :cond_3
    :goto_2
    if-ltz v13, :cond_4

    .line 1963
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1964
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    .line 1965
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionX:I

    .line 1966
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    .line 1967
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    .line 1969
    .end local v16           #v:Landroid/view/View;
    :cond_4
    const/high16 v20, -0x8000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    goto/16 :goto_0

    .line 1947
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v20

    if-eqz v20, :cond_6

    if-gez v13, :cond_6

    .line 1951
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1954
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->createScrollingCache()V

    .line 1955
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 1956
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->findMotionRow(I)I

    move-result v13

    .line 1957
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    goto :goto_2

    .line 1974
    .end local v13           #motionPosition:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 1975
    .local v8, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    goto/16 :goto_0

    .line 1981
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_0

    .line 1991
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 1992
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionCorrection:I

    move/from16 v20, v0

    sub-int v8, v8, v20

    .line 1993
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

    .line 1994
    .local v10, incrementalDeltaY:I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/htc/opensense/widget/AlbumAbsListView;->trackMotionScrollWithConstrain(II)V

    .line 1997
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1998
    .local v14, motionView:Landroid/view/View;
    if-eqz v14, :cond_7

    .line 2001
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewNewTop:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 2004
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->findMotionRow(I)I

    move-result v13

    .line 2006
    .restart local v13       #motionPosition:I
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionCorrection:I

    .line 2007
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2008
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    .line 2009
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    .line 2010
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    .line 2013
    .end local v13           #motionPosition:I
    :cond_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    goto/16 :goto_0

    .end local v10           #incrementalDeltaY:I
    .end local v14           #motionView:Landroid/view/View;
    :cond_8
    move v10, v8

    .line 1993
    goto :goto_3

    .line 2022
    .end local v8           #deltaY:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_2

    .line 2127
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 2131
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 2133
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 2134
    .local v9, handler:Landroid/os/Handler;
    if-eqz v9, :cond_a

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2138
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 2139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 2140
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 2026
    .end local v9           #handler:Landroid/os/Handler;
    :pswitch_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    .line 2027
    .restart local v13       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2028
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_17

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v20

    if-nez v20, :cond_17

    .line 2029
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 2031
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2035
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPerformClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    move-object/from16 v20, v0

    if-nez v20, :cond_c

    .line 2036
    new-instance v20, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mPerformClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    .line 2039
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPerformClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    .line 2040
    .local v15, performClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;
    iput-object v6, v15, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 2041
    iput v13, v15, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->mClickMotionPosition:I

    .line 2042
    invoke-virtual {v15}, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 2044
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 2047
    const/4 v5, 0x0

    .line 2048
    .local v5, b:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayIncludeDoneWaiting:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    .line 2049
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

    .line 2050
    :cond_d
    const/4 v5, 0x1

    .line 2058
    :cond_e
    :goto_5
    if-eqz v5, :cond_16

    .line 2059
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 2060
    .restart local v9       #handler:Landroid/os/Handler;
    if-eqz v9, :cond_f

    .line 2061
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

    .line 2064
    :cond_f
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2065
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 2066
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_11

    .line 2067
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectedPositionInt(I)V

    .line 2068
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    .line 2069
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2070
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->positionSelector(Landroid/view/View;)V

    .line 2071
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 2072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2074
    .local v7, d:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_10

    instance-of v0, v7, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 2075
    check-cast v7, Landroid/graphics/drawable/TransitionDrawable;

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2079
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 2080
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    .line 2081
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/opensense/widget/AlbumAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2097
    :cond_11
    :goto_7
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 2053
    .end local v9           #handler:Landroid/os/Handler;
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

    .line 2054
    :cond_13
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 2061
    .restart local v9       #handler:Landroid/os/Handler;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 2084
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

    .line 2099
    .end local v9           #handler:Landroid/os/Handler;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_17

    .line 2100
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/opensense/widget/AlbumAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2104
    .end local v5           #b:Z
    .end local v15           #performClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;
    :cond_17
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    goto/16 :goto_4

    .line 2107
    .end local v6           #child:Landroid/view/View;
    .end local v13           #motionPosition:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    .line 2108
    .local v17, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v20, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2109
    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v20

    move/from16 v0, v20

    float-to-int v11, v0

    .line 2111
    .local v11, initialVelocity:I
    const/16 v12, 0x514

    .line 2112
    .local v12, maxVelocity:I
    const/16 v20, 0x514

    move/from16 v0, v20

    if-le v11, v0, :cond_19

    .line 2113
    const/16 v11, 0x514

    .line 2117
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

    .line 2120
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/opensense/widget/AlbumAbsListView;->onFling(I)V

    goto/16 :goto_4

    .line 2114
    :cond_19
    const/16 v20, -0x514

    move/from16 v0, v20

    if-ge v11, v0, :cond_18

    .line 2115
    const/16 v11, -0x514

    goto :goto_8

    .line 2122
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->onUp()V

    goto/16 :goto_4

    .line 2153
    .end local v11           #initialVelocity:I
    .end local v12           #maxVelocity:I
    .end local v17           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_7
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 2154
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 2155
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2156
    .restart local v14       #motionView:Landroid/view/View;
    if-eqz v14, :cond_1b

    .line 2157
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2159
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->clearScrollingCache()V

    .line 2161
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 2162
    .restart local v9       #handler:Landroid/os/Handler;
    if-eqz v9, :cond_1c

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2166
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 2168
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 1932
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 1975
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2022
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
    .parameter "isInTouchMode"

    .prologue
    .line 1876
    if-eqz p1, :cond_0

    .line 1878
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hideSelector()V

    .line 1882
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1885
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 1886
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    .line 1889
    :cond_0
    return-void
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 3605
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 3606
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    .line 3607
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1529
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->onWindowFocusChanged(Z)V

    .line 1537
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1586
    :goto_0
    return-void

    .line 1544
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 1546
    .local v0, touchMode:I
    :goto_1
    if-nez p1, :cond_4

    .line 1549
    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1550
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->resetPressedStatus(Landroid/view/View;)V

    .line 1554
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1555
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1557
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    .line 1559
    if-ne v0, v2, :cond_2

    .line 1561
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 1585
    :cond_2
    :goto_2
    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    goto :goto_0

    .end local v0           #touchMode:I
    :cond_3
    move v0, v2

    .line 1544
    goto :goto_1

    .line 1564
    .restart local v0       #touchMode:I
    :cond_4
    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v3, :cond_5

    .line 1566
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->showPopup()V

    .line 1570
    :cond_5
    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1572
    if-ne v0, v2, :cond_6

    .line 1574
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->resurrectSelection()Z

    goto :goto_2

    .line 1578
    :cond_6
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hideSelector()V

    .line 1579
    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 1580
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    goto :goto_2
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1764
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1765
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 1766
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1767
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1770
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v1

    .line 1771
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1772
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1773
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1774
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1775
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1776
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 1780
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 1771
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1780
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1793
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->pointToPosition(II)I

    move-result v0

    .line 1794
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 1795
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1797
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 1274
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1275
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

    .line 1276
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->positionSelector(IIII)V

    .line 1279
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mIsChildViewEnabled:Z

    .line 1280
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1281
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mIsChildViewEnabled:Z

    .line 1282
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->refreshDrawableState()V

    .line 1284
    :cond_0
    return-void

    .line 1281
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 0
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
    .line 3266
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 2584
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    .line 2585
    .local v0, position:I
    if-gez v0, :cond_0

    .line 2586
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 2588
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2589
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2590
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 2269
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2270
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2271
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/opensense/widget/AlbumAbsListView;I)V

    .line 2272
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastScrollState:I

    .line 2275
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 957
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->requestLayout()V

    .line 959
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->resetList()V

    .line 748
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayout()V

    .line 749
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 751
    :cond_0
    return-void
.end method

.method protected abstract rescanScreen()V
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 965
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeAllViewsInLayout()V

    .line 966
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    .line 967
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataChanged:Z

    .line 968
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mNeedSync:Z

    .line 969
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOldSelectedPosition:I

    .line 970
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOldSelectedRowId:J

    .line 971
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectedPositionInt(I)V

    .line 972
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    .line 973
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    .line 974
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 975
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 976
    return-void
.end method

.method resetListAndClearViews()V
    .locals 0

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->rememberSyncState()V

    .line 984
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeAllViewsInLayout()V

    .line 987
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayout()V

    .line 988
    return-void
.end method

.method public resetPressedStatus(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 1904
    if-eqz p1, :cond_0

    .line 1905
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1906
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 1907
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 1909
    :cond_0
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 2624
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v3

    .line 2626
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 2627
    const/16 v17, 0x0

    .line 2718
    :goto_0
    return v17

    .line 2630
    :cond_0
    const/4 v13, 0x0

    .line 2632
    .local v13, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 2633
    .local v5, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 2634
    .local v4, childrenBottom:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    .line 2635
    .local v7, firstPosition:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 2636
    .local v14, toPosition:I
    const/4 v6, 0x1

    .line 2638
    .local v6, down:Z
    if-lt v14, v7, :cond_3

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    .line 2639
    move v12, v14

    .line 2641
    .local v12, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2642
    .local v10, selected:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 2643
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 2646
    .local v11, selectedBottom:I
    if-ge v13, v5, :cond_2

    .line 2647
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 2703
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2705
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 2706
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->clearScrollingCache()V

    .line 2707
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSpecificTop:I

    .line 2708
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 2709
    if-lt v12, v7, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_b

    .line 2710
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2711
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectionInt(I)V

    .line 2712
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invokeOnItemScrollListener()V

    .line 2716
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    .line 2718
    if-ltz v12, :cond_c

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2648
    .restart local v10       #selected:Landroid/view/View;
    .restart local v11       #selectedBottom:I
    :cond_2
    if-le v11, v4, :cond_1

    .line 2649
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 2653
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    .end local v12           #selectedPos:I
    :cond_3
    if-ge v14, v7, :cond_7

    .line 2655
    move v12, v7

    .line 2656
    .restart local v12       #selectedPos:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 2657
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2658
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 2660
    .local v15, top:I
    if-nez v8, :cond_5

    .line 2662
    move v13, v15

    .line 2664
    if-gtz v7, :cond_4

    if-ge v15, v5, :cond_5

    .line 2667
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 2670
    :cond_5
    if-lt v15, v5, :cond_6

    .line 2672
    add-int v12, v7, v8

    .line 2673
    move v13, v15

    .line 2674
    goto/16 :goto_1

    .line 2656
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2678
    .end local v8           #i:I
    .end local v12           #selectedPos:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mItemCount:I

    .line 2679
    .local v9, itemCount:I
    const/4 v6, 0x0

    .line 2680
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 2682
    .restart local v12       #selectedPos:I
    add-int/lit8 v8, v3, -0x1

    .restart local v8       #i:I
    :goto_4
    if-ltz v8, :cond_1

    .line 2683
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2684
    .restart local v16       #v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 2685
    .restart local v15       #top:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 2687
    .local v2, bottom:I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_9

    .line 2688
    move v13, v15

    .line 2689
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_8

    if-le v2, v4, :cond_9

    .line 2690
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 2694
    :cond_9
    if-gt v2, v4, :cond_a

    .line 2695
    add-int v12, v7, v8

    .line 2696
    move v13, v15

    .line 2697
    goto/16 :goto_1

    .line 2682
    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 2714
    .end local v2           #bottom:I
    .end local v8           #i:I
    .end local v9           #itemCount:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_b
    const/4 v12, -0x1

    goto :goto_2

    .line 2718
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 2934
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 2986
    :cond_0
    :goto_0
    return v2

    .line 2938
    :cond_1
    const/4 v2, 0x0

    .line 2939
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 2940
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 2963
    :goto_1
    if-eqz v3, :cond_0

    .line 2964
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->createTextFilter(Z)V

    .line 2966
    move-object v1, p3

    .line 2967
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 2968
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {p3, v5, v6, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 2971
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2972
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2974
    :pswitch_0
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 2975
    goto :goto_0

    .line 2947
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 2948
    goto :goto_1

    .line 2950
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

    .line 2952
    const/4 v2, 0x1

    .line 2953
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2955
    :cond_3
    const/4 v3, 0x0

    .line 2956
    goto :goto_1

    .line 2959
    :sswitch_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    goto :goto_1

    .line 2978
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 2979
    goto :goto_0

    .line 2982
    :pswitch_2
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 2940
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

    .line 2972
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 3227
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    .line 3228
    return-void
.end method

.method public setDelayActionUpTime(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1894
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    .line 1895
    return-void
.end method

.method public setDelayIncludeDoneWaiting(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1899
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayIncludeDoneWaiting:Z

    .line 1900
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1377
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    .line 1378
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 915
    iget-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 916
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->createTextFilter(Z)V

    .line 919
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 921
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 923
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 925
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 929
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    .line 930
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataSetObserver:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 933
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1113
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1118
    .local v0, changed:Z
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

    .line 1120
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->positionPopup()V

    .line 1123
    :cond_0
    return v0
.end method

.method public setOnScrollListener(Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    .line 603
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invokeOnItemScrollListener()V

    .line 604
    return-void
.end method

.method public setRecyclerListener(Lcom/htc/opensense/widget/AlbumAbsListView$RecyclerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3281
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollUp:Landroid/view/View;

    .line 1457
    iput-object p2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollDown:Landroid/view/View;

    .line 1458
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->clearScrollingCache()V

    .line 649
    :cond_0
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollingCacheEnabled:Z

    .line 650
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1389
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 1392
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1394
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1396
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1397
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1398
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1399
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    .line 1400
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    .line 1401
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    .line 1402
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    .line 1403
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1404
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1405
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 581
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    .line 582
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 740
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    .line 741
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayoutIfNecessary()V

    .line 743
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    .line 664
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3202
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTranscriptMode:I

    .line 3203
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1356
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
    .parameter "originalView"

    .prologue
    .line 1709
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1710
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 1711
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1712
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 1714
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1718
    :cond_0
    if-nez v6, :cond_1

    .line 1719
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1722
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1727
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
    .line 1339
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1344
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1342
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .locals 23
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 2422
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v5

    .line 2423
    .local v5, childCount:I
    if-nez v5, :cond_0

    .line 2533
    :goto_0
    return-void

    .line 2427
    :cond_0
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v10

    .line 2428
    .local v10, firstTop:I
    add-int/lit8 v21, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 2430
    .local v15, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 2433
    .local v16, listPadding:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v17, v21, v10

    .line 2434
    .local v17, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v8, v21, v22

    .line 2435
    .local v8, end:I
    sub-int v18, v15, v8

    .line 2437
    .local v18, spaceBelow:I
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

    .line 2438
    .local v13, height:I
    if-gez p1, :cond_1

    .line 2439
    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2444
    :goto_1
    if-gez p2, :cond_2

    .line 2445
    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2450
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2452
    .local v2, absIncrementalDeltaY:I
    move/from16 v0, v17

    if-lt v0, v2, :cond_3

    move/from16 v0, v18

    if-lt v0, v2, :cond_3

    .line 2453
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hideSelector()V

    .line 2454
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 2455
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 2456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    move/from16 v21, v0

    add-int v21, v21, p1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewNewTop:I

    goto/16 :goto_0

    .line 2441
    .end local v2           #absIncrementalDeltaY:I
    :cond_1
    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 2447
    :cond_2
    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 2458
    .restart local v2       #absIncrementalDeltaY:I
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    .line 2460
    .local v9, firstPosition:I
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

    .line 2462
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 2466
    :cond_4
    add-int v21, v9, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mItemCount:I

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

    .line 2468
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 2472
    :cond_5
    if-gez p2, :cond_8

    const/4 v7, 0x1

    .line 2474
    .local v7, down:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hideSelector()V

    .line 2476
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeaderViewsCount()I

    move-result v12

    .line 2477
    .local v12, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mItemCount:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getFooterViewsCount()I

    move-result v22

    sub-int v11, v21, v22

    .line 2479
    .local v11, footerViewsStart:I
    const/16 v19, 0x0

    .line 2480
    .local v19, start:I
    const/4 v6, 0x0

    .line 2483
    .local v6, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildrenTotalHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 2484
    if-eqz v7, :cond_a

    .line 2485
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v21, p2

    .line 2486
    .local v20, top:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    if-ge v14, v5, :cond_6

    .line 2487
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2488
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    .line 2517
    .end local v4           #child:Landroid/view/View;
    .end local v14           #i:I
    .end local v20           #top:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    move/from16 v21, v0

    add-int v21, v21, p1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewNewTop:I

    .line 2519
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mBlockLayoutRequests:Z

    .line 2520
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->detachViewsFromParent(II)V

    .line 2521
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 2523
    if-eqz v7, :cond_7

    .line 2524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    add-int v21, v21, v6

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    .line 2527
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 2528
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->fillGap(Z)V

    .line 2529
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mBlockLayoutRequests:Z

    .line 2531
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invokeOnItemScrollListener()V

    goto/16 :goto_0

    .line 2472
    .end local v6           #count:I
    .end local v7           #down:Z
    .end local v11           #footerViewsStart:I
    .end local v12           #headerViewsCount:I
    .end local v19           #start:I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 2491
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #down:Z
    .restart local v11       #footerViewsStart:I
    .restart local v12       #headerViewsCount:I
    .restart local v14       #i:I
    .restart local v19       #start:I
    .restart local v20       #top:I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 2486
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 2495
    .end local v4           #child:Landroid/view/View;
    .end local v14           #i:I
    .end local v20           #top:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v3, v21, p2

    .line 2496
    .local v3, bottom:I
    add-int/lit8 v14, v5, -0x1

    .restart local v14       #i:I
    :goto_5
    if-ltz v14, :cond_6

    .line 2497
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2498
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v3, :cond_6

    .line 2501
    move/from16 v19, v14

    .line 2502
    add-int/lit8 v6, v6, 0x1

    .line 2496
    add-int/lit8 v14, v14, -0x1

    goto :goto_5
.end method

.method trackMotionScrollWithConstrain(II)V
    .locals 0
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 3601
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->trackMotionScroll(II)V

    .line 3602
    return-void
.end method

.method unPressedAllChildren()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3638
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3639
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3641
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 3642
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1130
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 1133
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    .line 1136
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 1138
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1139
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5

    move v1, v4

    .line 1143
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 1148
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v3

    .line 1151
    .local v3, count:I
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    .line 1154
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 1155
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1156
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mBottom:I

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    .line 1159
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1161
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 1133
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v5

    .line 1139
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v6, v7

    .line 1143
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v5

    .line 1151
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v5

    .line 1156
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v7

    .line 1159
    goto :goto_5
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 1504
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
