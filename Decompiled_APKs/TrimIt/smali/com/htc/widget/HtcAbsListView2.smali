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
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 547
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;)V

    .line 189
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 204
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 214
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 220
    new-instance v1, Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 225
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    .line 230
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    .line 235
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    .line 240
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    .line 245
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    .line 250
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    .line 256
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    .line 328
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 361
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 368
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 407
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    .line 427
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 429
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 438
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    .line 441
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollProfilingStarted:Z

    .line 444
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingProfilingStarted:Z

    .line 486
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    .line 2165
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    .line 2170
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    .line 2175
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    .line 548
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->initAbsListView()V

    .line 550
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setVerticalScrollBarEnabled(Z)V

    .line 551
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 552
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 553
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 554
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 557
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcAbsListView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 558
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 561
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 204
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 214
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 220
    new-instance v9, Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 225
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    .line 230
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    .line 235
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    .line 240
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    .line 245
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    .line 250
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    .line 256
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    .line 328
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 361
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 368
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 407
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    .line 427
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 429
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 438
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    .line 441
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollProfilingStarted:Z

    .line 444
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingProfilingStarted:Z

    .line 486
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    .line 2165
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    .line 2170
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    .line 2175
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    .line 562
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->initAbsListView()V

    .line 564
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 567
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 568
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 569
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 572
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 575
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 576
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->setStackFromBottom(Z)V

    .line 578
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 579
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setScrollingCacheEnabled(Z)V

    .line 581
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 582
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->setTextFilterEnabled(Z)V

    .line 584
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 586
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->setTranscriptMode(I)V

    .line 588
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 589
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setCacheColorHint(I)V

    .line 591
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 592
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setFastScrollEnabled(Z)V

    .line 594
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 595
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->setSmoothScrollbarEnabled(Z)V

    .line 597
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 598
    return-void
.end method

.method private acceptFilter()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1031
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

    .line 1038
    :goto_0
    return v2

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    .line 1036
    .local v0, context:Landroid/content/Context;
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1038
    .local v1, inputManager:Landroid/view/inputmethod/InputMethodManager;
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
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    return v0
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 3717
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 3718
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3719
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3720
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3722
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x10900ac

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    .line 3727
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 3729
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3730
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3731
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3732
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3733
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3734
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3735
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3736
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3737
    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    .line 3738
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3740
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 3741
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 3745
    :goto_0
    return-void

    .line 3743
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1639
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1641
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1642
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1644
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
    .line 3584
    sparse-switch p2, :sswitch_data_0

    .line 3610
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3586
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 3587
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3588
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 3589
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3613
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 3614
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 3615
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 3592
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

    .line 3593
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 3594
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3595
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 3596
    .restart local v1       #dY:I
    goto :goto_0

    .line 3598
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 3599
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3600
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 3601
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3602
    .restart local v1       #dY:I
    goto :goto_0

    .line 3604
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

    .line 3605
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 3606
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3607
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3608
    .restart local v1       #dY:I
    goto :goto_0

    .line 3584
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

    .line 786
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setFocusableInTouchMode(Z)V

    .line 787
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setWillNotDraw(Z)V

    .line 788
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 789
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setScrollingCacheEnabled(Z)V

    .line 791
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchSlop:I

    .line 792
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    .line 793
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 1960
    const/4 v6, 0x0

    .line 1962
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1966
    :cond_0
    if-nez v6, :cond_1

    .line 1967
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1968
    invoke-super {p0, p0}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1970
    :cond_1
    if-eqz v6, :cond_2

    .line 1971
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->performHapticFeedback(I)Z

    .line 1973
    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 10

    .prologue
    const/high16 v9, 0x41a0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 3539
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3542
    .local v2, screenHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3545
    .local v3, screenWidth:I
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 3546
    .local v4, xy:[I
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getLocationOnScreen([I)V

    .line 3551
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3552
    aget v5, v4, v7

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    add-int v1, v5, v6

    .line 3553
    .local v1, rightGap:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3554
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const/16 v6, 0x15

    aget v7, v4, v7

    invoke-virtual {v5, p0, v6, v7, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3569
    .end local v1           #rightGap:I
    :goto_0
    return-void

    .line 3557
    .restart local v1       #rightGap:I
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    aget v6, v4, v7

    invoke-virtual {v5, v6, v1, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 3560
    .end local v1           #rightGap:I
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

    .line 3561
    .local v0, bottomGap:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3562
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const/16 v6, 0x51

    aget v7, v4, v7

    invoke-virtual {v5, p0, v6, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 3565
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    aget v6, v4, v7

    invoke-virtual {v5, v6, v0, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1566
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

    .line 1568
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 3530
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3531
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 3532
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->positionPopup()V

    .line 3534
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->checkFocus()V

    .line 3536
    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 798
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
    .line 2608
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    .line 2609
    .local v2, count:I
    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    .line 2610
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    .line 2612
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2623
    :cond_0
    return-void

    .line 2616
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2617
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2618
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2619
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2621
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2616
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 3822
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3786
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 3708
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
    .parameter "p"

    .prologue
    .line 3843
    instance-of v0, p1, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    return v0
.end method

.method protected clearScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2825
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    if-eqz v0, :cond_2

    .line 2826
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2827
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2828
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    .line 2830
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2831
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 2833
    :cond_1
    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    .line 2835
    :cond_2
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 3751
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 3752
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    .line 3754
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3755
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    .line 3758
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1227
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 1228
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1229
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1230
    mul-int/lit8 v2, v1, 0x64

    .line 1232
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1233
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1234
    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1235
    .local v5, width:I
    if-lez v5, :cond_0

    .line 1236
    mul-int/lit8 v6, v3, 0x64

    div-int/2addr v6, v5

    add-int/2addr v2, v6

    .line 1239
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1240
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1241
    .local v0, bottom:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1242
    if-lez v5, :cond_1

    .line 1243
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v2, v6

    .line 1251
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #top:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #width:I
    :cond_1
    :goto_0
    return v2

    .line 1248
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1251
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1256
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    .line 1257
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1258
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1259
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1260
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1261
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1262
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1263
    .local v6, width:I
    if-lez v6, :cond_0

    .line 1264
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1279
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    .end local v6           #width:I
    :cond_0
    :goto_0
    return v7

    .line 1268
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    .line 1269
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1270
    const/4 v3, 0x0

    .line 1276
    .local v3, index:I
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

    .line 1271
    .end local v3           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1272
    move v3, v1

    .restart local v3       #index:I
    goto :goto_1

    .line 1274
    .end local v3           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    .restart local v3       #index:I
    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1128
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 1129
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1130
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1131
    mul-int/lit8 v2, v1, 0x64

    .line 1133
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1134
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1135
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1136
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1137
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1140
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1141
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1142
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1143
    if-lez v3, :cond_1

    .line 1144
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 1152
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 1149
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1152
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1157
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    .line 1158
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1159
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1160
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1161
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1162
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1163
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1164
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1165
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1180
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 1169
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    .line 1170
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1171
    const/4 v4, 0x0

    .line 1177
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

    .line 1172
    .end local v4           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1173
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 1175
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
    .line 1185
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1874
    new-instance v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2817
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 2818
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2819
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    .line 2820
    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    .line 2822
    :cond_0
    return-void
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 3520
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3521
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3523
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1572
    const/4 v2, 0x0

    .line 1573
    .local v2, saveCount:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 1574
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1575
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1576
    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollX:I

    .line 1577
    .local v3, scrollX:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollY:I

    .line 1578
    .local v4, scrollY:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/widget/HtcAbsListView2;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/widget/HtcAbsListView2;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1581
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    .line 1584
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 1585
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1586
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1589
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1591
    if-eqz v1, :cond_2

    .line 1592
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1595
    :cond_2
    if-eqz v0, :cond_3

    .line 1596
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1597
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    .line 1599
    :cond_3
    return-void

    .line 1573
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
    .line 2025
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 2519
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 2520
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller3;->draw(Landroid/graphics/Canvas;)V

    .line 2523
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1749
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->drawableStateChanged()V

    .line 1750
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1753
    :cond_0
    return-void
.end method

.method enableStopScrollNow()Z
    .locals 1

    .prologue
    .line 4286
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
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 3833
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 3838
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getBottomBorderHeight()I
    .locals 1

    .prologue
    .line 4321
    const/4 v0, 0x0

    return v0
.end method

.method getBottomBoundary()I
    .locals 1

    .prologue
    .line 4251
    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1207
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 1208
    .local v1, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1209
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 1219
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 1212
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1213
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1216
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1217
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v4

    .line 1218
    .local v4, height:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1219
    .local v3, fadeLength:F
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

    .prologue
    .line 3892
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    return v0
.end method

.method getChildrenTotalHeight()I
    .locals 3

    .prologue
    .line 4294
    const/4 v0, 0x0

    .line 4295
    .local v0, childrenTotalHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4296
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 4295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4298
    :cond_0
    return v0
.end method

.method getChildrenTotalWidth()I
    .locals 3

    .prologue
    .line 4303
    const/4 v0, 0x0

    .line 4304
    .local v0, childrenTotalWidth:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4305
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 4304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4307
    :cond_0
    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView2$FlingRunnable;
    .locals 1

    .prologue
    .line 4282
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 773
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 777
    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcAbsListView2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 782
    :goto_0
    return-void

    .line 780
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 3115
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 3105
    const/4 v0, 0x0

    return v0
.end method

.method getLeftBorderWidth()I
    .locals 1

    .prologue
    .line 4335
    const/4 v0, 0x0

    return v0
.end method

.method getLeftBoundary()I
    .locals 1

    .prologue
    .line 4256
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1289
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1290
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 1291
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1300
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1294
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1295
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1298
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1299
    .local v3, left:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1300
    .local v2, fadeLength:F
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

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method getRightBorderWidth()I
    .locals 1

    .prologue
    .line 4331
    const/4 v0, 0x0

    return v0
.end method

.method getRightBoundary()I
    .locals 1

    .prologue
    .line 4260
    const/4 v0, 0x0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1307
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 1308
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1318
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1311
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1312
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1315
    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1316
    .local v3, right:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v4

    .line 1317
    .local v4, width:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 1318
    .local v2, fadeLength:F
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

    .prologue
    .line 1441
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1442
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1444
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 3872
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1075
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1078
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 4325
    const/4 v0, 0x0

    return v0
.end method

.method getTopBoundary()I
    .locals 1

    .prologue
    .line 4247
    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1191
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1192
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1201
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1195
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1196
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1199
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1200
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1201
    .local v2, fadeLength:F
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

    .prologue
    .line 3867
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

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

    .line 3386
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    .line 3387
    .local v0, count:I
    if-lez v0, :cond_c

    .line 3394
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mNeedSync:Z

    if-eqz v4, :cond_4

    .line 3396
    iput-boolean v6, p0, Lcom/htc/widget/HtcAbsListView2;->mNeedSync:Z

    .line 3398
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    if-ne v4, v3, :cond_3

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mOldItemCount:I

    if-lt v4, v5, :cond_3

    .line 3403
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3404
    const/16 v3, 0x8

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3514
    :cond_1
    :goto_0
    return-void

    .line 3406
    :cond_2
    const/4 v3, 0x3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_0

    .line 3412
    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncMode:I

    packed-switch v4, :pswitch_data_0

    .line 3462
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_b

    .line 3464
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemPosition()I

    move-result v1

    .line 3467
    .local v1, newPos:I
    if-lt v1, v0, :cond_5

    .line 3468
    add-int/lit8 v1, v0, -0x1

    .line 3470
    :cond_5
    if-gez v1, :cond_6

    .line 3471
    const/4 v1, 0x0

    .line 3475
    :cond_6
    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3477
    .local v2, selectablePos:I
    if-ltz v2, :cond_a

    .line 3478
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3414
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3419
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3420
    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncPosition:I

    goto :goto_0

    .line 3426
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->findSyncPosition()I

    move-result v1

    .line 3427
    .restart local v1       #newPos:I
    if-ltz v1, :cond_4

    .line 3429
    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3430
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_4

    .line 3432
    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncPosition:I

    .line 3435
    iget-wide v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    iget-wide v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncWidth:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 3438
    :cond_8
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3447
    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3442
    :cond_9
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_1

    .line 3455
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3456
    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncPosition:I

    goto :goto_0

    .line 3482
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_a
    invoke-virtual {p0, v1, v6}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3483
    if-ltz v2, :cond_c

    .line 3484
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 3491
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_b
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    if-gez v4, :cond_1

    .line 3501
    :cond_c
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3502
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eqz v3, :cond_d

    const/16 v3, 0x8

    :goto_2
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3508
    :goto_3
    iput v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    .line 3509
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedRowId:J

    .line 3510
    iput v8, p0, Lcom/htc/widget/HtcAbsListView2;->mNextSelectedPosition:I

    .line 3511
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/widget/HtcAbsListView2;->mNextSelectedRowId:J

    .line 3512
    iput-boolean v6, p0, Lcom/htc/widget/HtcAbsListView2;->mNeedSync:Z

    .line 3513
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->checkSelectionChanged()V

    goto/16 :goto_0

    .line 3502
    :cond_d
    const/4 v3, 0x7

    goto :goto_2

    .line 3504
    :cond_e
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eqz v4, :cond_f

    const/4 v3, 0x3

    :cond_f
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_3

    .line 3412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 3764
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3129
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 3130
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3131
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 3132
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3134
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 3135
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    .line 3136
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 3139
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 3142
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3144
    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 3182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mDataChanged:Z

    .line 3183
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    .line 3184
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 3185
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3186
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 701
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcFastScroller3;->onScroll(Lcom/htc/widget/HtcAbsListView2;III)V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView2;III)V

    .line 707
    :cond_1
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 3620
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 650
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

    .prologue
    const/4 v7, 0x1

    .line 1701
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1702
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 1703
    .local v3, selectorRect:Landroid/graphics/Rect;
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

    .line 1706
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1708
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1709
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1732
    .end local v4           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1710
    .restart local v4       #v:Landroid/view/View;
    :cond_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1712
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 1714
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isLongClickable()Z

    move-result v1

    .line 1715
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1716
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1717
    if-eqz v1, :cond_6

    .line 1718
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1724
    :cond_4
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView2;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 1725
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1726
    new-instance v5, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;-><init>(Lcom/htc/widget/HtcAbsListView2;Lcom/htc/widget/HtcAbsListView2$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    .line 1728
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1729
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1721
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
    .line 1363
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    .line 1508
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1511
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1517
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1518
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1519
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

    .line 1525
    :cond_0
    if-eq v0, v1, :cond_1

    .line 1526
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1527
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 1528
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1548
    :cond_1
    :goto_0
    return-object v0

    .line 1536
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1537
    .restart local v0       #child:Landroid/view/View;
    if-nez v0, :cond_3

    .line 1538
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

    .line 1539
    :cond_3
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 1540
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 2844
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 2845
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2844
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2847
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1796
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onAttachedToWindow()V

    .line 1798
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1799
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1800
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1802
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 1758
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 1760
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1786
    :cond_0
    :goto_0
    return-object v3

    .line 1766
    :cond_1
    sget-object v4, Lcom/htc/widget/HtcAbsListView2;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1771
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1772
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1773
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 1774
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1775
    move v0, v2

    .line 1781
    :cond_2
    if-ltz v0, :cond_0

    .line 1782
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1773
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 3692
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3696
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 3697
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3699
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1806
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onDetachedFromWindow()V

    .line 1808
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1809
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1810
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1812
    :cond_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 3825
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 3826
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3827
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    .line 3829
    :cond_0
    return-void
.end method

.method onFling(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    .line 4274
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    if-nez v0, :cond_0

    .line 4275
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    .line 4277
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 4278
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->start(I)V

    .line 4279
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1083
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1084
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1085
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    .line 1087
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->unPressedUnSelectChildren(Landroid/view/View;)V

    .line 1088
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 3768
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3770
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3771
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    .line 3780
    :cond_0
    :goto_0
    return-void

    .line 3775
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3776
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/high16 v9, -0x8000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2528
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 2529
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 2532
    .local v5, y:I
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v8, :cond_0

    .line 2533
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v8, p1}, Lcom/htc/widget/HtcFastScroller3;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2534
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    .line 2600
    .end local v1           #intercepted:Z
    :goto_0
    return v6

    .line 2539
    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v6, v7

    .line 2600
    goto :goto_0

    .line 2543
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2544
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v2

    .line 2550
    .local v2, motionPosition:I
    :goto_2
    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    if-ltz v2, :cond_2

    .line 2553
    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2556
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2557
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 2558
    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    .line 2565
    :goto_3
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2566
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2567
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 2569
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    .line 2570
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto :goto_1

    .line 2546
    .end local v2           #motionPosition:I
    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v2

    .restart local v2       #motionPosition:I
    goto :goto_2

    .line 2560
    .restart local v3       #v:Landroid/view/View;
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 2561
    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    goto :goto_3

    .line 2575
    .end local v2           #motionPosition:I
    .end local v3           #v:Landroid/view/View;
    :pswitch_1
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    .line 2578
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2579
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    sub-int v8, v4, v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 2583
    :cond_5
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 2594
    :pswitch_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2595
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    goto :goto_1

    .line 2539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2575
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

    .line 2006
    sparse-switch p1, :sswitch_data_0

    .line 2018
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2009
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2011
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2012
    .local v0, view:Landroid/view/View;
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->performItemClick(Landroid/view/View;IJ)Z

    .line 2013
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2014
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2015
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2006
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
    .line 1338
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcAdapterView;->onLayout(ZIIII)V

    .line 1339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mInLayout:Z

    .line 1340
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 1341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mInLayout:Z

    .line 1342
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1326
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1327
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->useDefaultSelector()V

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    .line 1330
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1331
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1332
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1333
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1334
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 977
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcAbsListView2$SavedState;

    .line 979
    .local v0, ss:Lcom/htc/widget/HtcAbsListView2$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 980
    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mDataChanged:Z

    .line 983
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->width:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncWidth:J

    .line 989
    :goto_0
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_3

    .line 990
    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mNeedSync:Z

    .line 991
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncPosition:I

    .line 994
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 995
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSpecificLeft:I

    .line 996
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncRowId:J

    .line 1003
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncMode:I

    .line 1025
    :cond_0
    :goto_2
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setFilterText(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 1028
    return-void

    .line 986
    :cond_1
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncHeight:J

    goto :goto_0

    .line 998
    :cond_2
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSpecificTop:I

    .line 999
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncColumnId:J

    goto :goto_1

    .line 1004
    :cond_3
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1005
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 1007
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    .line 1008
    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mNeedSync:Z

    .line 1010
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncPosition:I

    .line 1013
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1014
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSpecificLeft:I

    .line 1015
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncColumnId:J

    .line 1022
    :goto_3
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncMode:I

    goto :goto_2

    .line 1017
    :cond_4
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSpecificTop:I

    .line 1018
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSyncRowId:J

    goto :goto_3
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v8, 0x0

    .line 912
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    .line 914
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 916
    .local v5, superState:Landroid/os/Parcelable;
    new-instance v4, Lcom/htc/widget/HtcAbsListView2$SavedState;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAbsListView2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 918
    .local v4, ss:Lcom/htc/widget/HtcAbsListView2$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v1, 0x1

    .line 919
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemId()J

    move-result-wide v2

    .line 920
    .local v2, selectedId:J
    iput-wide v2, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    .line 923
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 924
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->width:I

    .line 929
    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_4

    .line 932
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 933
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    .line 938
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    .line 939
    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    .line 961
    :goto_3
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    .line 962
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v8, :cond_0

    .line 963
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    .line 964
    .local v6, textFilter:Landroid/widget/EditText;
    if-eqz v6, :cond_0

    .line 965
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 966
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    .line 972
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v6           #textFilter:Landroid/widget/EditText;
    :cond_0
    return-object v4

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v8

    .line 918
    goto :goto_0

    .line 926
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->height:I

    goto :goto_1

    .line 935
    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    goto :goto_2

    .line 941
    :cond_4
    if-eqz v1, :cond_6

    .line 943
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 946
    .local v7, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 947
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    .line 951
    :goto_4
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    .line 952
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    goto :goto_3

    .line 949
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    goto :goto_4

    .line 954
    .end local v7           #v:Landroid/view/View;
    :cond_6
    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    .line 955
    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    .line 956
    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    .line 957
    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    goto :goto_3
.end method

.method onScrollToBoundary()V
    .locals 0

    .prologue
    .line 4291
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1603
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mDataChanged:Z

    .line 1605
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_1

    .line 1608
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller3;->onSizeChanged(IIII)V

    .line 1610
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 3793
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3794
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3795
    .local v1, length:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 3796
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 3798
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    .line 3799
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    .line 3805
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 3806
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 3808
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 3809
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 3816
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 3800
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 3802
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3803
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    goto :goto_0

    .line 3811
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "ev"

    .prologue
    .line 2188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller3;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 2190
    .local v14, intercepted:Z
    if-eqz v14, :cond_0

    .line 2191
    const/16 v22, 0x1

    .line 2514
    .end local v14           #intercepted:Z
    :goto_0
    return v22

    .line 2194
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2195
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 2196
    .local v20, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2205
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 2206
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2208
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2210
    packed-switch v4, :pswitch_data_0

    .line 2514
    :cond_2
    :goto_1
    const/16 v22, 0x1

    goto :goto_0

    .line 2212
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView2;->pointToPosition(II)I

    move-result v15

    .line 2213
    .local v15, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 2214
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

    .line 2218
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 2221
    new-instance v22, Lcom/htc/widget/HtcAbsListView2$CheckForTap;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView2$CheckForTap;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2223
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

    .line 2247
    :cond_4
    :goto_2
    if-ltz v15, :cond_5

    .line 2249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 2252
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 2253
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 2254
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    .line 2261
    :goto_3
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2263
    .end local v18           #v:Landroid/view/View;
    :cond_5
    const/high16 v22, -0x8000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    .line 2264
    const/high16 v22, -0x8000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto/16 :goto_1

    .line 2225
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    if-eqz v22, :cond_7

    if-gez v15, :cond_7

    .line 2229
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2232
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->createScrollingCache()V

    .line 2233
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2236
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 2237
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v15

    .line 2243
    :goto_4
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    goto :goto_2

    .line 2239
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v15

    goto :goto_4

    .line 2256
    .restart local v18       #v:Landroid/view/View;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 2257
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    goto :goto_3

    .line 2269
    .end local v15           #motionPosition:I
    .end local v18           #v:Landroid/view/View;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    move/from16 v22, v0

    sub-int v9, v21, v22

    .line 2272
    .local v9, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    move/from16 v22, v0

    sub-int v8, v20, v22

    .line 2275
    .local v8, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    goto/16 :goto_1

    .line 2283
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 2284
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2286
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2299
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 2300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 2301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    move/from16 v22, v0

    sub-int v8, v8, v22

    .line 2302
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

    .line 2303
    .local v11, incrementalDeltaX:I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScrollWithConstrain(II)V

    .line 2306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2307
    .local v16, motionView:Landroid/view/View;
    if-eqz v16, :cond_b

    .line 2310
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 2313
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v15

    .line 2315
    .restart local v15       #motionPosition:I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    .line 2316
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2317
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 2318
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    .line 2319
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2322
    .end local v15           #motionPosition:I
    :cond_b
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto/16 :goto_1

    .end local v11           #incrementalDeltaX:I
    .end local v16           #motionView:Landroid/view/View;
    :cond_c
    move v11, v8

    .line 2302
    goto :goto_5

    .line 2325
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 2326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    move/from16 v22, v0

    sub-int v9, v9, v22

    .line 2327
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

    .line 2328
    .local v12, incrementalDeltaY:I
    :goto_6
    if-eqz v12, :cond_e

    .line 2329
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScrollWithConstrain(II)V

    .line 2333
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2334
    .restart local v16       #motionView:Landroid/view/View;
    if-eqz v16, :cond_f

    .line 2337
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    .line 2340
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v15

    .line 2342
    .restart local v15       #motionPosition:I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    .line 2343
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2344
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 2345
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    .line 2346
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2349
    .end local v15           #motionPosition:I
    :cond_f
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    goto/16 :goto_1

    .end local v12           #incrementalDeltaY:I
    .end local v16           #motionView:Landroid/view/View;
    :cond_10
    move v12, v9

    .line 2327
    goto :goto_6

    .line 2360
    .end local v8           #deltaX:I
    .end local v9           #deltaY:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_2

    .line 2467
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-nez v22, :cond_11

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2471
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 2473
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 2474
    .local v10, handler:Landroid/os/Handler;
    if-eqz v10, :cond_12

    .line 2475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2478
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 2480
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 2364
    .end local v10           #handler:Landroid/os/Handler;
    :pswitch_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2365
    .restart local v15       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2366
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v22

    if-nez v22, :cond_1f

    .line 2367
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 2369
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-nez v22, :cond_13

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2373
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v22, v0

    if-nez v22, :cond_14

    .line 2374
    new-instance v22, Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView2$PerformClick;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    .line 2377
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v17, v0

    .line 2378
    .local v17, performClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;
    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mChild:Landroid/view/View;

    .line 2379
    move-object/from16 v0, v17

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mClickMotionPosition:I

    .line 2380
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAbsListView2$PerformClick;->rememberWindowAttachCount()V

    .line 2382
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 2385
    const/4 v5, 0x0

    .line 2386
    .local v5, b:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    .line 2387
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

    .line 2388
    :cond_15
    const/4 v5, 0x1

    .line 2396
    :cond_16
    :goto_8
    if-eqz v5, :cond_1e

    .line 2397
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 2398
    .restart local v10       #handler:Landroid/os/Handler;
    if-eqz v10, :cond_17

    .line 2399
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

    .line 2402
    :cond_17
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 2403
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2404
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_19

    .line 2405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 2406
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 2407
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2408
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAbsListView2;->positionSelector(Landroid/view/View;)V

    .line 2409
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2412
    .local v7, d:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_18

    instance-of v0, v7, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_18

    .line 2413
    check-cast v7, Landroid/graphics/drawable/TransitionDrawable;

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2417
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1d

    .line 2418
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    .line 2419
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    .line 2435
    :cond_19
    :goto_a
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2391
    .end local v10           #handler:Landroid/os/Handler;
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

    .line 2392
    :cond_1b
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 2399
    .restart local v10       #handler:Landroid/os/Handler;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    goto/16 :goto_9

    .line 2422
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

    .line 2437
    .end local v10           #handler:Landroid/os/Handler;
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_1f

    .line 2438
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    .line 2442
    .end local v5           #b:Z
    .end local v17           #performClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;
    :cond_1f
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    goto/16 :goto_7

    .line 2445
    .end local v6           #child:Landroid/view/View;
    .end local v15           #motionPosition:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 2446
    .local v19, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2450
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_20

    .line 2451
    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .line 2457
    .local v13, initialVelocity:I
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

    .line 2460
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcAbsListView2;->onFling(I)V

    goto/16 :goto_7

    .line 2453
    .end local v13           #initialVelocity:I
    :cond_20
    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .restart local v13       #initialVelocity:I
    goto :goto_b

    .line 2462
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onUp()V

    goto/16 :goto_7

    .line 2493
    .end local v13           #initialVelocity:I
    .end local v19           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_7
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2494
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2496
    .restart local v16       #motionView:Landroid/view/View;
    if-eqz v16, :cond_22

    .line 2497
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2499
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 2501
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 2502
    .restart local v10       #handler:Landroid/os/Handler;
    if-eqz v10, :cond_23

    .line 2503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2506
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 2507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 2508
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 2210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 2275
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2360
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
    .line 2149
    if-eqz p1, :cond_0

    .line 2151
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 2155
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2158
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 2159
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 2162
    :cond_0
    return-void
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 4269
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 4270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 4271
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1816
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onWindowFocusChanged(Z)V

    .line 1818
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 1820
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_3

    .line 1823
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1824
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->resetPressedStatus(Landroid/view/View;)V

    .line 1828
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    .line 1829
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1831
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    .line 1833
    if-ne v0, v2, :cond_1

    .line 1835
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 1859
    :cond_1
    :goto_1
    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    .line 1860
    return-void

    .end local v0           #touchMode:I
    :cond_2
    move v0, v2

    .line 1818
    goto :goto_0

    .line 1838
    .restart local v0       #touchMode:I
    :cond_3
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v3, :cond_4

    .line 1840
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    .line 1844
    :cond_4
    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    if-eq v0, v3, :cond_1

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1846
    if-ne v0, v2, :cond_5

    .line 1848
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    goto :goto_1

    .line 1852
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 1853
    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 1854
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2036
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    .line 2037
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2038
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    .line 2039
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    .line 2042
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 2043
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 2044
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2045
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2046
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2047
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2048
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2052
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 2043
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2052
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
    .line 2065
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->pointToPosition(II)I

    move-result v0

    .line 2066
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 2067
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2069
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
    .line 1552
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->unPressedUnSelectChildren(Landroid/view/View;)V

    .line 1553
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 1554
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

    .line 1555
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView2;->positionSelector(IIII)V

    .line 1558
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    .line 1559
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1560
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    .line 1561
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->refreshDrawableState()V

    .line 1563
    :cond_0
    return-void

    .line 1560
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
    .line 3903
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 3904
    .local v1, childCount:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView2$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    invoke-static {v5}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->access$1500(Lcom/htc/widget/HtcAbsListView2$RecycleBin;)Lcom/htc/widget/HtcAbsListView2$RecyclerListener;

    move-result-object v3

    .line 3907
    .local v3, listener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3908
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3909
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 3911
    .local v4, lp:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iget v6, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3912
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3913
    if-eqz v3, :cond_0

    .line 3915
    invoke-interface {v3, v0}, Lcom/htc/widget/HtcAbsListView2$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 3907
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3919
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 3920
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    .line 3921
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 3152
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedPosition:I

    .line 3153
    .local v0, position:I
    if-gez v0, :cond_0

    .line 3154
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3156
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3157
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3158
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 2633
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2634
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2635
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/widget/HtcAbsListView2$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView2;I)V

    .line 2636
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    .line 2639
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1092
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1093
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->requestLayout()V

    .line 1095
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resetList()V

    .line 828
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 829
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 831
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1101
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    .line 1102
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    .line 1103
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDataChanged:Z

    .line 1104
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mNeedSync:Z

    .line 1105
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mOldSelectedPosition:I

    .line 1106
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOldSelectedRowId:J

    .line 1107
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 1108
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    .line 1109
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 1110
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1111
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 1112
    return-void
.end method

.method resetListAndClearViews()V
    .locals 2

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    .line 1120
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    .line 1121
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->clear()V

    .line 1122
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->setViewTypeCount(I)V

    .line 1123
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 1124
    return-void
.end method

.method public resetPressedStatus(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 2177
    if-eqz p1, :cond_0

    .line 2178
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2179
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2180
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2182
    :cond_0
    return-void
.end method

.method resurrectSelection()Z
    .locals 25

    .prologue
    .line 3202
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v3

    .line 3204
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 3205
    const/16 v23, 0x0

    .line 3381
    :goto_0
    return v23

    .line 3208
    :cond_0
    const/16 v19, 0x0

    .line 3211
    .local v19, selectedTop:I
    const/16 v16, 0x0

    .line 3213
    .local v16, selectedLeft:I
    const/4 v7, 0x0

    .line 3214
    .local v7, childrenTop:I
    const/4 v4, 0x0

    .line 3215
    .local v4, childrenBottom:I
    const/4 v5, 0x0

    .line 3216
    .local v5, childrenLeft:I
    const/4 v6, 0x0

    .line 3218
    .local v6, childrenRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 3219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v24

    add-int v5, v23, v24

    .line 3220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLeft:I

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

    .line 3227
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    .line 3228
    .local v9, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    move/from16 v20, v0

    .line 3229
    .local v20, toPosition:I
    const/4 v8, 0x1

    .line 3231
    .local v8, down:Z
    move/from16 v0, v20

    if-lt v0, v9, :cond_7

    add-int v23, v9, v3

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 3232
    move/from16 v17, v20

    .line 3234
    .local v17, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3237
    .local v14, selected:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 3238
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    .line 3239
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v18

    .line 3242
    .local v18, selectedRight:I
    move/from16 v0, v16

    if-ge v0, v5, :cond_4

    .line 3243
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    add-int v16, v5, v23

    .line 3355
    .end local v14           #selected:Landroid/view/View;
    .end local v18           #selectedRight:I
    :cond_1
    :goto_2
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3357
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 3360
    :cond_2
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 3361
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 3364
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 3365
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mSpecificLeft:I

    .line 3369
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v17

    .line 3370
    move/from16 v0, v17

    if-lt v0, v9, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLastVisiblePosition()I

    move-result v23

    move/from16 v0, v17

    move/from16 v1, v23

    if-gt v0, v1, :cond_16

    .line 3371
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3372
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setSelectionInt(I)V

    .line 3373
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    .line 3379
    :goto_4
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 3381
    if-ltz v17, :cond_17

    const/16 v23, 0x1

    goto/16 :goto_0

    .line 3222
    .end local v8           #down:Z
    .end local v9           #firstPosition:I
    .end local v17           #selectedPos:I
    .end local v20           #toPosition:I
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

    .line 3223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mBottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTop:I

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

    .line 3244
    .restart local v8       #down:Z
    .restart local v9       #firstPosition:I
    .restart local v14       #selected:Landroid/view/View;
    .restart local v17       #selectedPos:I
    .restart local v18       #selectedRight:I
    .restart local v20       #toPosition:I
    :cond_4
    move/from16 v0, v18

    if-le v0, v6, :cond_1

    .line 3245
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    sub-int v23, v6, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v24

    sub-int v16, v23, v24

    goto/16 :goto_2

    .line 3249
    .end local v18           #selectedRight:I
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    .line 3250
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 3253
    .local v15, selectedBottom:I
    move/from16 v0, v19

    if-ge v0, v7, :cond_6

    .line 3254
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    add-int v19, v7, v23

    goto/16 :goto_2

    .line 3255
    :cond_6
    if-le v15, v4, :cond_1

    .line 3256
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v23, v4, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v24

    sub-int v19, v23, v24

    goto/16 :goto_2

    .line 3262
    .end local v14           #selected:Landroid/view/View;
    .end local v15           #selectedBottom:I
    .end local v17           #selectedPos:I
    :cond_7
    move/from16 v0, v20

    if-ge v0, v9, :cond_e

    .line 3264
    move/from16 v17, v9

    .line 3265
    .restart local v17       #selectedPos:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5
    if-ge v10, v3, :cond_1

    .line 3266
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3267
    .local v22, v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v21

    .line 3270
    .local v21, top:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 3272
    .local v12, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 3273
    if-nez v10, :cond_9

    .line 3275
    move/from16 v16, v12

    .line 3277
    if-gtz v9, :cond_8

    if-ge v12, v5, :cond_9

    .line 3280
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    add-int v5, v5, v23

    .line 3283
    :cond_9
    if-lt v12, v5, :cond_d

    .line 3285
    add-int v17, v9, v10

    .line 3286
    move/from16 v16, v12

    .line 3287
    goto/16 :goto_2

    .line 3290
    :cond_a
    if-nez v10, :cond_c

    .line 3292
    move/from16 v19, v21

    .line 3294
    if-gtz v9, :cond_b

    move/from16 v0, v21

    if-ge v0, v7, :cond_c

    .line 3297
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    add-int v7, v7, v23

    .line 3300
    :cond_c
    move/from16 v0, v21

    if-lt v0, v7, :cond_d

    .line 3302
    add-int v17, v9, v10

    .line 3303
    move/from16 v19, v21

    .line 3304
    goto/16 :goto_2

    .line 3265
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3310
    .end local v10           #i:I
    .end local v12           #left:I
    .end local v17           #selectedPos:I
    .end local v21           #top:I
    .end local v22           #v:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    .line 3311
    .local v11, itemCount:I
    const/4 v8, 0x0

    .line 3312
    add-int v23, v9, v3

    add-int/lit8 v17, v23, -0x1

    .line 3314
    .restart local v17       #selectedPos:I
    add-int/lit8 v10, v3, -0x1

    .restart local v10       #i:I
    :goto_6
    if-ltz v10, :cond_1

    .line 3315
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3318
    .restart local v22       #v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v21

    .line 3319
    .restart local v21       #top:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 3320
    .local v2, bottom:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 3321
    .restart local v12       #left:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v13

    .line 3323
    .local v13, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 3324
    add-int/lit8 v23, v3, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_10

    .line 3325
    move/from16 v16, v12

    .line 3326
    add-int v23, v9, v3

    move/from16 v0, v23

    if-lt v0, v11, :cond_f

    if-le v13, v6, :cond_10

    .line 3327
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    sub-int v6, v6, v23

    .line 3331
    :cond_10
    if-gt v13, v6, :cond_14

    .line 3332
    add-int v17, v9, v10

    .line 3333
    move/from16 v16, v12

    .line 3334
    goto/16 :goto_2

    .line 3337
    :cond_11
    add-int/lit8 v23, v3, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_13

    .line 3338
    move/from16 v19, v21

    .line 3339
    add-int v23, v9, v3

    move/from16 v0, v23

    if-lt v0, v11, :cond_12

    if-le v2, v4, :cond_13

    .line 3340
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    sub-int v4, v4, v23

    .line 3344
    :cond_13
    if-gt v2, v4, :cond_14

    .line 3345
    add-int v17, v9, v10

    .line 3346
    move/from16 v19, v21

    .line 3347
    goto/16 :goto_2

    .line 3314
    :cond_14
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 3367
    .end local v2           #bottom:I
    .end local v10           #i:I
    .end local v11           #itemCount:I
    .end local v12           #left:I
    .end local v13           #right:I
    .end local v21           #top:I
    .end local v22           #v:Landroid/view/View;
    :cond_15
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mSpecificTop:I

    goto/16 :goto_3

    .line 3375
    :cond_16
    const/16 v17, -0x1

    .line 3376
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3377
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    goto/16 :goto_4

    .line 3381
    :cond_17
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 3632
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 3684
    :cond_0
    :goto_0
    return v2

    .line 3636
    :cond_1
    const/4 v2, 0x0

    .line 3637
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 3638
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 3661
    :goto_1
    if-eqz v3, :cond_0

    .line 3662
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 3664
    move-object v1, p3

    .line 3665
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 3666
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {v1, p3, v5, v6, v4}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    .line 3669
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3670
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3672
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 3673
    goto :goto_0

    .line 3645
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 3646
    goto :goto_1

    .line 3648
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

    .line 3650
    const/4 v2, 0x1

    .line 3651
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3653
    :cond_3
    const/4 v3, 0x0

    .line 3654
    goto :goto_1

    .line 3657
    :sswitch_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    goto :goto_1

    .line 3676
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 3677
    goto :goto_0

    .line 3680
    :pswitch_2
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 3638
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

    .line 3670
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
    .line 3882
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    .line 3883
    return-void
.end method

.method public setDelayActionUpTime(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2167
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    .line 2168
    return-void
.end method

.method public setDelayIncludeDoneWaiting(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2172
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    .line 2173
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1656
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 1657
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 614
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    .line 616
    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    .line 622
    if-eqz p1, :cond_2

    .line 623
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller3;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    goto :goto_0

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller3;->stop()V

    .line 629
    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1049
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1050
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 1053
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1055
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1057
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1059
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1063
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    .line 1064
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 1067
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
    .line 1349
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1354
    .local v0, changed:Z
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

    .line 1356
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->positionPopup()V

    .line 1359
    :cond_0
    return v0
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView2$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 693
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    .line 694
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    .line 695
    return-void
.end method

.method public setRecyclerListener(Lcom/htc/widget/HtcAbsListView2$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3935
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    #setter for: Lcom/htc/widget/HtcAbsListView2$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    invoke-static {v0, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->access$1502(Lcom/htc/widget/HtcAbsListView2$RecycleBin;Lcom/htc/widget/HtcAbsListView2$RecyclerListener;)Lcom/htc/widget/HtcAbsListView2$RecyclerListener;

    .line 3936
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    .line 1738
    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    .line 1745
    :goto_0
    return-void

    .line 1741
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    .line 1742
    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    goto :goto_0
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 740
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    .line 741
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1667
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1668
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "sel"

    .prologue
    const/4 v3, 0x0

    .line 1671
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1672
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1673
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1675
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1676
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1677
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1678
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    .line 1679
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    .line 1680
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    .line 1681
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    .line 1682
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1683
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1684
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 672
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    .line 673
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 820
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    .line 821
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayoutIfNecessary()V

    .line 823
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 754
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    .line 755
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3857
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    .line 3858
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1635
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
    .parameter "originalView"

    .prologue
    .line 1983
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1984
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 1985
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1986
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 1988
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1992
    :cond_0
    if-nez v6, :cond_1

    .line 1993
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView2;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1996
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2001
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2121
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2122
    .local v0, distance:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchSlop:I

    if-le v0, v5, :cond_2

    .line 2123
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->createScrollingCache()V

    .line 2124
    const/4 v5, 0x3

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2125
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    .line 2126
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2130
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2131
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2133
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2134
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2135
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2136
    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2138
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 2141
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->requestDisallowInterceptTouchEvent(Z)V

    .line 2145
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1618
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1623
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1621
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1618
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .locals 29
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 2857
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    .line 2858
    .local v5, childCount:I
    if-nez v5, :cond_0

    .line 3096
    :goto_0
    return-void

    .line 2862
    :cond_0
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v11

    .line 2863
    .local v11, firstTop:I
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getBottom()I

    move-result v16

    .line 2866
    .local v16, lastBottom:I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 2867
    .local v9, firstLeft:I
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getRight()I

    move-result v17

    .line 2870
    .local v17, lastRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 2880
    .local v19, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 2881
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v22, v27, v9

    .line 2882
    .local v22, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    .line 2883
    .local v8, end:I
    sub-int v23, v17, v8

    .line 2884
    .local v23, spaceBelow:I
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

    .line 2886
    .local v26, width:I
    if-gez p1, :cond_1

    .line 2887
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2892
    :goto_1
    if-gez p2, :cond_2

    .line 2893
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2918
    .end local v26           #width:I
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2920
    .local v2, absIncrementalDeltaY:I
    move/from16 v0, v22

    if-lt v0, v2, :cond_7

    move/from16 v0, v23

    if-lt v0, v2, :cond_7

    .line 2921
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 2924
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 2925
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenLeftAndRight(I)V

    .line 2926
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 2927
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    goto/16 :goto_0

    .line 2889
    .end local v2           #absIncrementalDeltaY:I
    .restart local v26       #width:I
    :cond_1
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 2895
    :cond_2
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 2899
    .end local v8           #end:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    .end local v26           #width:I
    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v22, v27, v11

    .line 2900
    .restart local v22       #spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    .line 2901
    .restart local v8       #end:I
    sub-int v23, v16, v8

    .line 2902
    .restart local v23       #spaceBelow:I
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

    .line 2904
    .local v14, height:I
    if-gez p1, :cond_4

    .line 2905
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2910
    :goto_3
    if-gez p2, :cond_5

    .line 2911
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto/16 :goto_2

    .line 2907
    :cond_4
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_3

    .line 2913
    :cond_5
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 2929
    .end local v14           #height:I
    .restart local v2       #absIncrementalDeltaY:I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenTopAndBottom(I)V

    .line 2930
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 2931
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    goto/16 :goto_0

    .line 2935
    :cond_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    .line 2938
    .local v10, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 2940
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

    .line 2942
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 2946
    :cond_8
    add-int v27, v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

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

    .line 2948
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 2953
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

    .line 2955
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 2959
    :cond_a
    add-int v27, v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

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

    .line 2961
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 2966
    :cond_b
    if-gez p2, :cond_e

    const/4 v7, 0x1

    .line 2968
    .local v7, down:Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 2970
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeaderViewsCount()I

    move-result v13

    .line 2971
    .local v13, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getFooterViewsCount()I

    move-result v28

    sub-int v12, v27, v28

    .line 2973
    .local v12, footerViewsStart:I
    const/16 v24, 0x0

    .line 2974
    .local v24, start:I
    const/4 v6, 0x0

    .line 2979
    .local v6, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_13

    .line 2980
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildrenTotalWidth()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    .line 2981
    if-eqz v7, :cond_11

    .line 2982
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v18, v27, p2

    .line 2983
    .local v18, left:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_5
    if-ge v15, v5, :cond_c

    .line 2984
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2985
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    .line 3024
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v18           #left:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    .line 3075
    :goto_6
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView2;->mBlockLayoutRequests:Z

    .line 3076
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/widget/HtcAbsListView2;->detachViewsFromParent(II)V

    .line 3079
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_19

    .line 3080
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenLeftAndRight(I)V

    .line 3086
    :goto_7
    if-eqz v7, :cond_d

    .line 3087
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    move/from16 v27, v0

    add-int v27, v27, v6

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    .line 3090
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3091
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAbsListView2;->fillGap(Z)V

    .line 3092
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView2;->mBlockLayoutRequests:Z

    .line 3094
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    goto/16 :goto_0

    .line 2966
    .end local v6           #count:I
    .end local v7           #down:Z
    .end local v12           #footerViewsStart:I
    .end local v13           #headerViewsCount:I
    .end local v24           #start:I
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 2988
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #down:Z
    .restart local v12       #footerViewsStart:I
    .restart local v13       #headerViewsCount:I
    .restart local v15       #i:I
    .restart local v18       #left:I
    .restart local v24       #start:I
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 2989
    add-int v20, v10, v15

    .line 2990
    .local v20, position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_10

    move/from16 v0, v20

    if-ge v0, v12, :cond_10

    .line 2991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2983
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 3002
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v18           #left:I
    .end local v20           #position:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    sub-int v21, v27, p2

    .line 3003
    .local v21, right:I
    add-int/lit8 v15, v5, -0x1

    .restart local v15       #i:I
    :goto_8
    if-ltz v15, :cond_c

    .line 3004
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3005
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    .line 3008
    move/from16 v24, v15

    .line 3009
    add-int/lit8 v6, v6, 0x1

    .line 3010
    add-int v20, v10, v15

    .line 3011
    .restart local v20       #position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_12

    move/from16 v0, v20

    if-ge v0, v12, :cond_12

    .line 3012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3003
    :cond_12
    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    .line 3026
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v20           #position:I
    .end local v21           #right:I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildrenTotalHeight()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_14

    .line 3027
    if-eqz v7, :cond_17

    .line 3028
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v25, v27, p2

    .line 3029
    .local v25, top:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_9
    if-ge v15, v5, :cond_14

    .line 3030
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3031
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v25

    if-lt v0, v1, :cond_15

    .line 3070
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v25           #top:I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    goto/16 :goto_6

    .line 3034
    .restart local v4       #child:Landroid/view/View;
    .restart local v15       #i:I
    .restart local v25       #top:I
    :cond_15
    add-int/lit8 v6, v6, 0x1

    .line 3035
    add-int v20, v10, v15

    .line 3036
    .restart local v20       #position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_16

    move/from16 v0, v20

    if-ge v0, v12, :cond_16

    .line 3037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3029
    :cond_16
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 3048
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v20           #position:I
    .end local v25           #top:I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    sub-int v3, v27, p2

    .line 3049
    .local v3, bottom:I
    add-int/lit8 v15, v5, -0x1

    .restart local v15       #i:I
    :goto_a
    if-ltz v15, :cond_14

    .line 3050
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3051
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    if-le v0, v3, :cond_14

    .line 3054
    move/from16 v24, v15

    .line 3055
    add-int/lit8 v6, v6, 0x1

    .line 3056
    add-int v20, v10, v15

    .line 3057
    .restart local v20       #position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_18

    move/from16 v0, v20

    if-ge v0, v12, :cond_18

    .line 3058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3049
    :cond_18
    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    .line 3082
    .end local v3           #bottom:I
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v20           #position:I
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenTopAndBottom(I)V

    goto/16 :goto_7
.end method

.method trackMotionScrollWithConstrain(II)V
    .locals 0
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 4265
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScroll(II)V

    .line 4266
    return-void
.end method

.method unPressedUnSelectChildren(Landroid/view/View;)V
    .locals 4
    .parameter "sel"

    .prologue
    .line 4312
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4313
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4314
    .local v0, child:Landroid/view/View;
    if-eq v0, p1, :cond_0

    .line 4315
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4312
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4318
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method updateScrollIndicators()V
    .locals 12

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1368
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1370
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 1373
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    if-lez v8, :cond_4

    move v1, v6

    .line 1376
    .local v1, canScrollLeft:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1377
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 1378
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1379
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_5

    move v1, v6

    .line 1383
    .end local v4           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    if-eqz v1, :cond_6

    move v8, v7

    :goto_2
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    .end local v1           #canScrollLeft:Z
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 1388
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    .line 1391
    .local v5, count:I
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    if-ge v8, v10, :cond_7

    move v2, v6

    .line 1394
    .local v2, canScrollRight:Z
    :goto_3
    if-nez v2, :cond_2

    if-lez v5, :cond_2

    .line 1395
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1396
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcAbsListView2;->mRight:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBorderWidth()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_8

    move v2, v6

    .line 1399
    .end local v4           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    if-eqz v2, :cond_9

    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1436
    .end local v2           #canScrollRight:Z
    .end local v5           #count:I
    :cond_3
    :goto_6
    return-void

    :cond_4
    move v1, v7

    .line 1373
    goto :goto_0

    .restart local v1       #canScrollLeft:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_5
    move v1, v7

    .line 1379
    goto :goto_1

    .end local v4           #child:Landroid/view/View;
    :cond_6
    move v8, v9

    .line 1383
    goto :goto_2

    .end local v1           #canScrollLeft:Z
    .restart local v5       #count:I
    :cond_7
    move v2, v7

    .line 1391
    goto :goto_3

    .restart local v2       #canScrollRight:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_8
    move v2, v7

    .line 1396
    goto :goto_4

    .end local v4           #child:Landroid/view/View;
    :cond_9
    move v7, v9

    .line 1399
    goto :goto_5

    .line 1403
    .end local v2           #canScrollRight:Z
    .end local v5           #count:I
    :cond_a
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    if-eqz v8, :cond_c

    .line 1406
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    if-lez v8, :cond_e

    move v3, v6

    .line 1409
    .local v3, canScrollUp:Z
    :goto_7
    if-nez v3, :cond_b

    .line 1410
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_b

    .line 1411
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1412
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBorderHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_f

    move v3, v6

    .line 1416
    .end local v4           #child:Landroid/view/View;
    :cond_b
    :goto_8
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    if-eqz v3, :cond_10

    move v8, v7

    :goto_9
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1419
    .end local v3           #canScrollUp:Z
    :cond_c
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 1421
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    .line 1424
    .restart local v5       #count:I
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/htc/widget/HtcAbsListView2;->mItemCount:I

    if-ge v8, v10, :cond_11

    move v0, v6

    .line 1427
    .local v0, canScrollDown:Z
    :goto_a
    if-nez v0, :cond_d

    if-lez v5, :cond_d

    .line 1428
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1429
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcAbsListView2;->mBottom:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBorderHeight()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_12

    move v0, v6

    .line 1432
    .end local v4           #child:Landroid/view/View;
    :cond_d
    :goto_b
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_13

    :goto_c
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .end local v0           #canScrollDown:Z
    .end local v5           #count:I
    :cond_e
    move v3, v7

    .line 1406
    goto :goto_7

    .restart local v3       #canScrollUp:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_f
    move v3, v7

    .line 1412
    goto :goto_8

    .end local v4           #child:Landroid/view/View;
    :cond_10
    move v8, v9

    .line 1416
    goto :goto_9

    .end local v3           #canScrollUp:Z
    .restart local v5       #count:I
    :cond_11
    move v0, v7

    .line 1424
    goto :goto_a

    .restart local v0       #canScrollDown:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_12
    move v0, v7

    .line 1429
    goto :goto_b

    .end local v4           #child:Landroid/view/View;
    :cond_13
    move v7, v9

    .line 1432
    goto :goto_c
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 1791
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
