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

.field mHeightMeasureSpec:I

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mLogFps:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewLeft:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalLeft:I

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

.field mScrollLeft:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field mScrollUp:Landroid/view/View;

.field mScrollWhenResurrectSelection:Z

.field mScrollingCacheEnabled:Z

.field mSelectedLeft:I

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 656
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;)V

    .line 209
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    .line 252
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 267
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 277
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 283
    new-instance v1, Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 288
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    .line 293
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    .line 298
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    .line 303
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    .line 308
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 313
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    .line 319
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mHeightMeasureSpec:I

    .line 392
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 430
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 437
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedLeft:I

    .line 476
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    .line 496
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 498
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 507
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    .line 510
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollProfilingStarted:Z

    .line 513
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mFlingProfilingStarted:Z

    .line 555
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    .line 579
    new-array v1, v4, [Z

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    .line 589
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 597
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollWhenResurrectSelection:Z

    .line 599
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    .line 2664
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    .line 2669
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->delayIncludeDoneWaiting:Z

    .line 2674
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    .line 657
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initAbsListView()V

    .line 659
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 660
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 661
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 662
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 663
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 666
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 667
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 670
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 209
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    .line 252
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 267
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 277
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 283
    new-instance v9, Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 288
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    .line 293
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    .line 298
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    .line 303
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    .line 308
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 313
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    .line 319
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mHeightMeasureSpec:I

    .line 392
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 430
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 437
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedLeft:I

    .line 476
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    .line 496
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 498
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 507
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    .line 510
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollProfilingStarted:Z

    .line 513
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mFlingProfilingStarted:Z

    .line 555
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    .line 579
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    .line 589
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 597
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollWhenResurrectSelection:Z

    .line 599
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    .line 2664
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    .line 2669
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->delayIncludeDoneWaiting:Z

    .line 2674
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    .line 671
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initAbsListView()V

    .line 673
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 676
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 677
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 678
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 681
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 684
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 685
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->setStackFromBottom(Z)V

    .line 687
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 688
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setScrollingCacheEnabled(Z)V

    .line 690
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 691
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->setTextFilterEnabled(Z)V

    .line 693
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 695
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setTranscriptMode(I)V

    .line 697
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 698
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setCacheColorHint(I)V

    .line 700
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 701
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setFastScrollEnabled(Z)V

    .line 703
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 704
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 706
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->setChoiceMode(I)V

    .line 708
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 709
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1479
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
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/HtcAbsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/HtcAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/widget/HtcAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/widget/HtcAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcFastScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$PositionScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    return v0
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5003
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 5021
    :cond_0
    return v2

    .line 5004
    :cond_1
    const/4 v2, 0x1

    .line 5006
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5007
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5008
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 5009
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5010
    const/4 v2, 0x0

    .line 5011
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

    .line 5014
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 5015
    const/4 v2, 0x0

    .line 5016
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

    .line 5007
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1050
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1051
    .local v0, childCount:I
    if-nez v0, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return v1

    .line 1052
    :cond_1
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1054
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
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 4749
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 4750
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4751
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 4752
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 4754
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x10900ac

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 4759
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 4761
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 4762
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4763
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4764
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4765
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 4766
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4767
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4768
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4769
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4770
    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 4771
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4772
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 4774
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 4775
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4779
    :goto_0
    return-void

    .line 4777
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 2096
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2098
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2099
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2101
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
    .line 4571
    sparse-switch p2, :sswitch_data_0

    .line 4597
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4573
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 4574
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 4575
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 4576
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 4600
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 4601
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 4602
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 4579
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

    .line 4580
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 4581
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 4582
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 4583
    .restart local v1       #dY:I
    goto :goto_0

    .line 4585
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 4586
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 4587
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 4588
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 4589
    .restart local v1       #dY:I
    goto :goto_0

    .line 4591
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

    .line 4592
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 4593
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 4594
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 4595
    .restart local v1       #dY:I
    goto :goto_0

    .line 4571
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

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 713
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setClickable(Z)V

    .line 714
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setFocusableInTouchMode(Z)V

    .line 715
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setWillNotDraw(Z)V

    .line 716
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 717
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setScrollingCacheEnabled(Z)V

    .line 719
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 720
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    .line 721
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    .line 722
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    .line 723
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mDensityScale:F

    .line 727
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getStrictModePolicySet()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mStrictModePolicy:I

    .line 729
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileLogFps()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLogFps:I

    .line 733
    instance-of v1, p0, Lcom/htc/widget/HtcGridViewCore;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/htc/widget/HtcGridView;

    if-nez v1, :cond_0

    .line 734
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    .line 735
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 3176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 3178
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3179
    .local v1, pointerId:I
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 3183
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 3184
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 3185
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3186
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3187
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 3188
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3191
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 3183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 2448
    const/4 v6, 0x0

    .line 2450
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2451
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2454
    :cond_0
    if-nez v6, :cond_1

    .line 2455
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2456
    invoke-super {p0, p0}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2458
    :cond_1
    if-eqz v6, :cond_2

    .line 2459
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->performHapticFeedback(I)Z

    .line 2461
    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 10

    .prologue
    const/high16 v9, 0x41a0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 4526
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4529
    .local v2, screenHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4532
    .local v3, screenWidth:I
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 4533
    .local v4, xy:[I
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getLocationOnScreen([I)V

    .line 4538
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4539
    aget v5, v4, v7

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mDensityScale:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    add-int v1, v5, v6

    .line 4540
    .local v1, rightGap:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4541
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v6, 0x15

    aget v7, v4, v7

    invoke-virtual {v5, p0, v6, v7, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4556
    .end local v1           #rightGap:I
    :goto_0
    return-void

    .line 4544
    .restart local v1       #rightGap:I
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v6, v4, v7

    invoke-virtual {v5, v6, v1, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 4547
    .end local v1           #rightGap:I
    :cond_1
    const/4 v5, 0x1

    aget v5, v4, v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mDensityScale:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    add-int v0, v5, v6

    .line 4548
    .local v0, bottomGap:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4549
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v6, 0x51

    aget v7, v4, v7

    invoke-virtual {v5, p0, v6, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 4552
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

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
    .line 2022
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

    .line 2024
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 4517
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4518
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 4519
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->positionPopup()V

    .line 4521
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->checkFocus()V

    .line 4523
    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1245
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
    .line 3198
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    .line 3199
    .local v2, count:I
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 3200
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3202
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 3213
    :cond_0
    return-void

    .line 3206
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 3207
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3208
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3209
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3211
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3206
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 4859
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 4821
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 4740
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
    .parameter "p"

    .prologue
    .line 4880
    instance-of v0, p1, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 861
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 862
    return-void
.end method

.method clearScrollingCache()V
    .locals 1

    .prologue
    .line 3736
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 3737
    new-instance v0, Lcom/htc/widget/HtcAbsListView$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$2;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 3752
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3753
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 4785
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 4786
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    .line 4788
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4789
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 4792
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1662
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 1663
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1664
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1665
    mul-int/lit8 v2, v1, 0x64

    .line 1667
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1668
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1669
    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1670
    .local v5, width:I
    if-lez v5, :cond_0

    .line 1671
    mul-int/lit8 v6, v3, 0x64

    div-int/2addr v6, v5

    add-int/2addr v2, v6

    .line 1674
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1675
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1676
    .local v0, bottom:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1677
    if-lez v5, :cond_1

    .line 1678
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v2, v6

    .line 1686
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #top:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #width:I
    :cond_1
    :goto_0
    return v2

    .line 1683
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1686
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1691
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 1692
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1693
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1694
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1695
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1696
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1697
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1698
    .local v6, width:I
    if-lez v6, :cond_0

    .line 1699
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1714
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    .end local v6           #width:I
    :cond_0
    :goto_0
    return v7

    .line 1703
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    .line 1704
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1705
    const/4 v3, 0x0

    .line 1711
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

    .line 1706
    .end local v3           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1707
    move v3, v1

    .restart local v3       #index:I
    goto :goto_1

    .line 1709
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
    .line 1719
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1556
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 1557
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1558
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1559
    mul-int/lit8 v2, v1, 0x64

    .line 1561
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1562
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1563
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1564
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1565
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1568
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1569
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1570
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1571
    if-lez v3, :cond_1

    .line 1572
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 1580
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 1577
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1580
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1585
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 1586
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1587
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1588
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1589
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1590
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1591
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1592
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1593
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

    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1609
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 1598
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    .line 1599
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1600
    const/4 v4, 0x0

    .line 1606
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

    .line 1601
    .end local v4           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1602
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 1604
    .end local v4           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4       #index:I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1615
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_0

    .line 1616
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1620
    .local v0, result:I
    :goto_0
    return v0

    .line 1618
    .end local v0           #result:I
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2360
    new-instance v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3728
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 3729
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3730
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3731
    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    .line 3733
    :cond_0
    return-void
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 4507
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 4508
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4510
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 2028
    const/4 v2, 0x0

    .line 2029
    .local v2, saveCount:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 2030
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2031
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2032
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    .line 2033
    .local v3, scrollX:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 2034
    .local v4, scrollY:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2037
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    .line 2040
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 2041
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 2042
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2045
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2047
    if-eqz v1, :cond_2

    .line 2048
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2051
    :cond_2
    if-eqz v0, :cond_3

    .line 2052
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2053
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    .line 2055
    :cond_3
    return-void

    .line 2029
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
    .line 2526
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 3074
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3075
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 3076
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 3078
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 2213
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->drawableStateChanged()V

    .line 2214
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2217
    :cond_0
    return-void
.end method

.method enableStopScrollNow()Z
    .locals 1

    .prologue
    .line 5550
    const/4 v0, 0x1

    return v0
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 4127
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 4128
    .local v0, childCount:I
    if-nez v0, :cond_1

    move v1, v2

    .line 4133
    :cond_0
    :goto_0
    return v1

    .line 4132
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v1

    .line 4133
    .local v1, motionRow:I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionColumn(I)I
.end method

.method protected abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 4870
    new-instance v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 4875
    new-instance v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomBorderHeight()I
    .locals 1

    .prologue
    .line 5588
    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomBoundary()I
    .locals 1

    .prologue
    .line 5515
    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1642
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 1643
    .local v1, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1644
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 1654
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 1647
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1648
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1651
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1652
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v4

    .line 1653
    .local v4, height:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1654
    .local v3, fadeLength:F
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

    .prologue
    .line 4936
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 836
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 837
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 848
    :cond_1
    return-object v3

    .line 840
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 841
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 842
    .local v0, count:I
    new-array v3, v0, [J

    .line 844
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 845
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 844
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 804
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 805
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 808
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 824
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getChildrenTotalHeight()I
    .locals 3

    .prologue
    .line 5558
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    if-eqz v2, :cond_1

    .line 5559
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getPageHeightWithGap()I

    move-result v0

    .line 5565
    :cond_0
    return v0

    .line 5561
    :cond_1
    const/4 v0, 0x0

    .line 5562
    .local v0, childrenTotalHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5563
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 5562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getChildrenTotalWidth()I
    .locals 3

    .prologue
    .line 5570
    const/4 v0, 0x0

    .line 5571
    .local v0, childrenTotalWidth:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5572
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 5571
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5574
    :cond_0
    return v0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 997
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView$FlingRunnable;
    .locals 1

    .prologue
    .line 5546
    new-instance v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1230
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1231
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1234
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1235
    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1240
    :goto_0
    return-void

    .line 1238
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 4055
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 4045
    const/4 v0, 0x0

    return v0
.end method

.method protected getItemsPerPage()I
    .locals 1

    .prologue
    .line 5619
    const/4 v0, 0x0

    return v0
.end method

.method getLeftBorderWidth()I
    .locals 1

    .prologue
    .line 5602
    const/4 v0, 0x0

    return v0
.end method

.method getLeftBoundary()I
    .locals 1

    .prologue
    .line 5520
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1724
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1725
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 1726
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1735
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1729
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1730
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1733
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1734
    .local v3, left:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1735
    .local v2, fadeLength:F
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

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getPageCount()I
    .locals 1

    .prologue
    .line 5628
    const/4 v0, 0x0

    return v0
.end method

.method protected getPageHeightWithGap()I
    .locals 1

    .prologue
    .line 5611
    const/4 v0, 0x0

    return v0
.end method

.method getRightBorderWidth()I
    .locals 1

    .prologue
    .line 5598
    const/4 v0, 0x0

    return v0
.end method

.method getRightBoundary()I
    .locals 1

    .prologue
    .line 5524
    const/4 v0, 0x0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1741
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1742
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 1743
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1753
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1746
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1747
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1750
    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1751
    .local v3, right:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v4

    .line 1752
    .local v4, width:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 1753
    .local v2, fadeLength:F
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

    .prologue
    .line 5636
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1890
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1891
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1893
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 4909
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1519
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 5592
    const/4 v0, 0x0

    return v0
.end method

.method getTopBoundary()I
    .locals 1

    .prologue
    .line 5511
    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1625
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1626
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1627
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1636
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1630
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1631
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1634
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1635
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1636
    .local v2, fadeLength:F
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

    .prologue
    .line 4904
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 4341
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    .line 4342
    .local v0, count:I
    if-lez v0, :cond_e

    .line 4349
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mNeedSync:Z

    if-eqz v5, :cond_4

    .line 4351
    iput-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mNeedSync:Z

    .line 4353
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    if-eq v5, v10, :cond_0

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    if-ne v5, v4, :cond_3

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mOldItemCount:I

    if-lt v5, v6, :cond_3

    .line 4358
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4359
    const/16 v4, 0x8

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 4483
    :cond_1
    :goto_0
    return-void

    .line 4361
    :cond_2
    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_0

    .line 4367
    :cond_3
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mSyncMode:I

    packed-switch v5, :pswitch_data_0

    .line 4431
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_d

    .line 4433
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemPosition()I

    move-result v2

    .line 4436
    .local v2, newPos:I
    if-lt v2, v0, :cond_5

    .line 4437
    add-int/lit8 v2, v0, -0x1

    .line 4439
    :cond_5
    if-gez v2, :cond_6

    .line 4440
    const/4 v2, 0x0

    .line 4444
    :cond_6
    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 4446
    .local v3, selectablePos:I
    if-ltz v3, :cond_c

    .line 4447
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 4369
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4374
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 4375
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    goto :goto_0

    .line 4381
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->findSyncPosition()I

    move-result v2

    .line 4382
    .restart local v2       #newPos:I
    if-ltz v2, :cond_4

    .line 4384
    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 4385
    .restart local v3       #selectablePos:I
    if-ne v3, v2, :cond_4

    .line 4387
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    .line 4390
    iget-wide v4, p0, Lcom/htc/widget/HtcAbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    iget-wide v4, p0, Lcom/htc/widget/HtcAbsListView;->mSyncWidth:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    .line 4393
    :cond_8
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 4402
    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 4397
    :cond_9
    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_1

    .line 4410
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :pswitch_1
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 4411
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    .line 4412
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    if-eqz v4, :cond_1

    .line 4413
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getItemsPerPage()I

    move-result v1

    .line 4414
    .local v1, itemsPerPage:I
    if-lez v1, :cond_a

    .line 4415
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v1

    mul-int/2addr v4, v1

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    .line 4417
    :cond_a
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    if-lt v4, v0, :cond_1

    .line 4418
    :goto_2
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    if-lt v4, v0, :cond_b

    .line 4419
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    goto :goto_2

    .line 4421
    :cond_b
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    if-gez v4, :cond_1

    .line 4422
    iput v7, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    goto/16 :goto_0

    .line 4451
    .end local v1           #itemsPerPage:I
    .restart local v2       #newPos:I
    .restart local v3       #selectablePos:I
    :cond_c
    invoke-virtual {p0, v2, v7}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 4452
    if-ltz v3, :cond_e

    .line 4453
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 4460
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_d
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    if-gez v5, :cond_1

    .line 4470
    :cond_e
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4471
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v4, :cond_f

    const/16 v4, 0x8

    :goto_3
    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 4477
    :goto_4
    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    .line 4478
    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedRowId:J

    .line 4479
    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mNextSelectedPosition:I

    .line 4480
    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Lcom/htc/widget/HtcAbsListView;->mNextSelectedRowId:J

    .line 4481
    iput-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mNeedSync:Z

    .line 4482
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    .line 4471
    :cond_f
    const/4 v4, 0x7

    goto :goto_3

    .line 4473
    :cond_10
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_11

    const/4 v4, 0x3

    :cond_11
    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_4

    .line 4367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 4798
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 4069
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 4070
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4071
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 4073
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 4074
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 4076
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 4077
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    .line 4078
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 4081
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedLeft:I

    .line 4084
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4086
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 4140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mDataChanged:Z

    .line 4141
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 4142
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 4143
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 4144
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcFastScroller;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 1165
    :cond_1
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 4607
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 787
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 791
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

    .prologue
    .line 1178
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1142
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1225
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1108
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

    .prologue
    const/4 v7, 0x1

    .line 2161
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2196
    :cond_0
    :goto_0
    return-void

    .line 2165
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2166
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2167
    .local v3, selectorRect:Landroid/graphics/Rect;
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

    .line 2170
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2172
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 2173
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2174
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2176
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2178
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isLongClickable()Z

    move-result v1

    .line 2179
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2180
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 2181
    if-eqz v1, :cond_6

    .line 2182
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2188
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 2189
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 2190
    new-instance v5, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    .line 2192
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2193
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2185
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
    .line 1812
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v5, 0x0

    .line 1958
    aput-boolean v5, p2, v5

    .line 1961
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1964
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 1970
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1971
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1972
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

    .line 1978
    :cond_0
    if-eq v0, v1, :cond_2

    .line 1979
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1980
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 1981
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2004
    :cond_1
    :goto_0
    return-object v0

    .line 1988
    :cond_2
    const/4 v2, 0x1

    aput-boolean v2, p2, v5

    .line 1989
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0

    .line 1992
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1993
    .restart local v0       #child:Landroid/view/View;
    if-nez v0, :cond_4

    .line 1994
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

    .line 1995
    :cond_4
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 1996
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 3762
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 3763
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3762
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3765
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 2260
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onAttachedToWindow()V

    .line 2262
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2263
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2264
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2265
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 2266
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2269
    :cond_0
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 10
    .parameter "consistency"

    .prologue
    .line 4972
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 4974
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    .line 4976
    .local v1, checkLayout:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 4978
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$2300(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 4979
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 4980
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 4981
    aget-object v7, v0, v3

    if-eqz v7, :cond_0

    .line 4982
    const/4 v4, 0x0

    .line 4983
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

    .line 4980
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4974
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4990
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$2400(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4991
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x0

    .line 4992
    :cond_3
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$2500(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 4993
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 4994
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    .line 4995
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Lcom/htc/widget/HtcAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v4, 0x0

    .line 4994
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4999
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 2222
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 2224
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2250
    :cond_0
    :goto_0
    return-object v3

    .line 2230
    :cond_1
    sget-object v4, Lcom/htc/widget/HtcAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 2235
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2236
    .local v3, state:[I
    const/4 v0, -0x1

    .line 2237
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 2238
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2239
    move v0, v2

    .line 2245
    :cond_2
    if-ltz v0, :cond_0

    .line 2246
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2237
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 4685
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4689
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 4690
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 4691
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 4692
    new-instance v0, Lcom/htc/widget/HtcAbsListView$3;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/widget/HtcAbsListView$3;-><init>(Lcom/htc/widget/HtcAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 4726
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4728
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4729
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 4731
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2273
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onDetachedFromWindow()V

    .line 2276
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 2279
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->clear()V

    .line 2281
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2282
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2283
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2284
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 2285
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2286
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 2289
    :cond_0
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 4487
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onDisplayHint(I)V

    .line 4488
    sparse-switch p1, :sswitch_data_0

    .line 4500
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    .line 4501
    return-void

    .line 4490
    :sswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4491
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    goto :goto_0

    .line 4495
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4496
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    goto :goto_0

    .line 4500
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4488
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 4862
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 4863
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 4864
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    .line 4866
    :cond_0
    return-void
.end method

.method protected onFling(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    .line 5538
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5539
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 5541
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 5542
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    .line 5543
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1524
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1525
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1526
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    .line 1528
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 4802
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4804
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

    .line 4805
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    .line 4814
    :cond_0
    :goto_0
    return-void

    .line 4809
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4810
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x4

    const/4 v12, -0x1

    const/high16 v11, -0x8000

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3082
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3085
    .local v0, action:I
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v10, :cond_0

    .line 3086
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v10, p1}, Lcom/htc/widget/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3087
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    .line 3172
    .end local v1           #intercepted:Z
    :goto_0
    return v8

    .line 3092
    :cond_0
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v8, v9

    .line 3172
    goto :goto_0

    .line 3094
    :pswitch_1
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3096
    .local v4, touchMode:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 3097
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 3098
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3102
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3103
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->findMotionColumn(I)I

    move-result v2

    .line 3109
    .local v2, motionPosition:I
    :goto_2
    if-eq v4, v13, :cond_3

    if-ltz v2, :cond_3

    .line 3112
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    sub-int v10, v2, v10

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3115
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 3116
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3117
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalLeft:I

    .line 3123
    :cond_2
    :goto_3
    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 3124
    iput v7, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 3125
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3126
    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3127
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 3129
    .end local v5           #v:Landroid/view/View;
    :cond_3
    iput v11, p0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    .line 3130
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3131
    iput v11, p0, Lcom/htc/widget/HtcAbsListView;->mLastX:I

    .line 3132
    :cond_4
    if-ne v4, v13, :cond_1

    goto :goto_0

    .line 3105
    .end local v2           #motionPosition:I
    :cond_5
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v2

    .restart local v2       #motionPosition:I
    goto :goto_2

    .line 3119
    .restart local v5       #v:Landroid/view/View;
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    goto :goto_3

    .line 3139
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v5           #v:Landroid/view/View;
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_2
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_1

    goto :goto_1

    .line 3141
    :pswitch_3
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 3142
    .local v3, pointerIndex:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 3144
    .restart local v7       #y:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3145
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    iget v11, p0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    sub-int/2addr v10, v11

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcAbsListView;->startScrollIfNeeded(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_0

    .line 3149
    :cond_7
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    sub-int v10, v7, v10

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcAbsListView;->startScrollIfNeeded(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_0

    .line 3160
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_4
    iput v12, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3161
    iput v12, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 3162
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_1

    .line 3167
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 3092
    nop

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

    .line 3139
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2494
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2499
    sparse-switch p1, :sswitch_data_0

    .line 2519
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 2502
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2505
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2509
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2510
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2511
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2512
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2514
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    goto :goto_0

    .line 2499
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1777
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcAdapterView;->onLayout(ZIIII)V

    .line 1778
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mInLayout:Z

    .line 1779
    if-eqz p1, :cond_1

    .line 1780
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1781
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1782
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 1781
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1784
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->markChildrenDirty()V

    .line 1787
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 1788
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mInLayout:Z

    .line 1789
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1761
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1762
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->useDefaultSelector()V

    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1765
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1766
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1767
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1768
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1769
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1424
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcAbsListView$SavedState;

    .line 1426
    .local v0, ss:Lcom/htc/widget/HtcAbsListView$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1427
    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mDataChanged:Z

    .line 1430
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1431
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->width:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView;->mSyncWidth:J

    .line 1436
    :goto_0
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_3

    .line 1437
    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mNeedSync:Z

    .line 1438
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView;->mSyncRowId:J

    .line 1439
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    .line 1442
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1443
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->viewLeft:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSpecificLeft:I

    .line 1444
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView;->mSyncRowId:J

    .line 1451
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSyncMode:I

    .line 1473
    :cond_0
    :goto_2
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 1476
    return-void

    .line 1433
    :cond_1
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView;->mSyncHeight:J

    goto :goto_0

    .line 1446
    :cond_2
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSpecificTop:I

    .line 1447
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView;->mSyncColumnId:J

    goto :goto_1

    .line 1452
    :cond_3
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1453
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 1455
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    .line 1456
    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mNeedSync:Z

    .line 1457
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView;->mSyncRowId:J

    .line 1458
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSyncPosition:I

    .line 1461
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1462
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->viewLeft:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSpecificLeft:I

    .line 1463
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView;->mSyncColumnId:J

    .line 1470
    :goto_3
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mSyncMode:I

    goto :goto_2

    .line 1465
    :cond_4
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSpecificTop:I

    .line 1466
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsListView;->mSyncRowId:J

    goto :goto_3
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v8, 0x0

    .line 1359
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 1361
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 1363
    .local v5, superState:Landroid/os/Parcelable;
    new-instance v4, Lcom/htc/widget/HtcAbsListView$SavedState;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1365
    .local v4, ss:Lcom/htc/widget/HtcAbsListView$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v1, 0x1

    .line 1366
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemId()J

    move-result-wide v2

    .line 1367
    .local v2, selectedId:J
    iput-wide v2, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    .line 1370
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1371
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->width:I

    .line 1376
    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_4

    .line 1379
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1380
    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedLeft:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->viewLeft:I

    .line 1385
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    .line 1386
    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    .line 1408
    :goto_3
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1409
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v8, :cond_0

    .line 1410
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1411
    .local v6, textFilter:Landroid/widget/EditText;
    if-eqz v6, :cond_0

    .line 1412
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1413
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 1414
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1419
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v6           #textFilter:Landroid/widget/EditText;
    :cond_0
    return-object v4

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v8

    .line 1365
    goto :goto_0

    .line 1373
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->height:I

    goto :goto_1

    .line 1382
    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    goto :goto_2

    .line 1388
    :cond_4
    if-eqz v1, :cond_6

    .line 1390
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1393
    .local v7, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1394
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->viewLeft:I

    .line 1398
    :goto_4
    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    .line 1399
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    goto :goto_3

    .line 1396
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    goto :goto_4

    .line 1401
    .end local v7           #v:Landroid/view/View;
    :cond_6
    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    .line 1402
    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->viewLeft:I

    .line 1403
    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    .line 1404
    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    goto :goto_3
.end method

.method onScrollToBoundary()V
    .locals 0

    .prologue
    .line 5555
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 2059
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2060
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mDataChanged:Z

    .line 2061
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 2064
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_1

    .line 2065
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onSizeChanged(IIII)V

    .line 2067
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
    .line 4829
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4830
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4831
    .local v1, length:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 4832
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 4834
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    .line 4835
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    .line 4841
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 4842
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 4844
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 4845
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 4852
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 4836
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 4838
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 4839
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    goto :goto_0

    .line 4847
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29
    .parameter "ev"

    .prologue
    .line 2686
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v25

    if-nez v25, :cond_2

    .line 2689
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v25

    if-nez v25, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isLongClickable()Z

    move-result v25

    if-eqz v25, :cond_1

    :cond_0
    const/16 v25, 0x1

    .line 3069
    :goto_0
    return v25

    .line 2689
    :cond_1
    const/16 v25, 0x0

    goto :goto_0

    .line 2693
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    move-object/from16 v25, v0

    if-nez v25, :cond_3

    .line 2694
    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstanceIfExist()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    .line 2698
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 2699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v16

    .line 2700
    .local v16, intercepted:Z
    if-eqz v16, :cond_4

    .line 2701
    const/16 v25, 0x1

    goto :goto_0

    .line 2705
    .end local v16           #intercepted:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2714
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-nez v25, :cond_5

    .line 2715
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2717
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2719
    and-int/lit16 v0, v4, 0xff

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 3069
    :cond_6
    :goto_1
    :pswitch_0
    const/16 v25, 0x1

    goto :goto_0

    .line 2721
    :pswitch_1
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 2722
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    .line 2723
    .local v23, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 2724
    .local v24, y:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v17

    .line 2725
    .local v17, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mDataChanged:Z

    move/from16 v25, v0

    if-nez v25, :cond_8

    .line 2726
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_a

    if-ltz v17, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v25

    check-cast v25, Landroid/widget/ListAdapter;

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 2730
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    if-nez v25, :cond_7

    .line 2733
    new-instance v25, Lcom/htc/widget/HtcAbsListView$CheckForTap;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView$CheckForTap;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2735
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2763
    :cond_8
    :goto_2
    if-ltz v17, :cond_9

    .line 2765
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v25, v17, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 2767
    .local v21, v:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 2768
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalLeft:I

    .line 2774
    .end local v21           #v:Landroid/view/View;
    :cond_9
    :goto_3
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 2775
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 2776
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 2777
    const/high16 v25, -0x8000

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    .line 2778
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 2779
    const/high16 v25, -0x8000

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastX:I

    goto/16 :goto_1

    .line 2737
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v25

    if-eqz v25, :cond_b

    if-gez v17, :cond_b

    .line 2741
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 2744
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 2746
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->createScrollingCache()V

    .line 2747
    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2748
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 2751
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 2752
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->findMotionColumn(I)I

    move-result v17

    .line 2758
    :goto_4
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_2

    .line 2754
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v17

    goto :goto_4

    .line 2770
    .restart local v21       #v:Landroid/view/View;
    :cond_d
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    goto/16 :goto_3

    .line 2784
    .end local v17           #motionPosition:I
    .end local v21           #v:Landroid/view/View;
    .end local v23           #x:I
    .end local v24           #y:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v20

    .line 2785
    .local v20, pointerIndex:I
    const/16 v25, -0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 2789
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 2790
    .restart local v24       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    move/from16 v25, v0

    sub-int v11, v24, v25

    .line 2793
    .local v11, deltaY:I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    .line 2794
    .restart local v23       #x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    move/from16 v25, v0

    sub-int v10, v23, v25

    .line 2797
    .local v10, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_1

    goto/16 :goto_1

    .line 2805
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v25

    if-eqz v25, :cond_e

    .line 2806
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2808
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcAbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2821
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v25

    if-eqz v25, :cond_12

    .line 2822
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastX:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    .line 2823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    move/from16 v25, v0

    sub-int v10, v10, v25

    .line 2824
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastX:I

    move/from16 v25, v0

    const/high16 v26, -0x8000

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastX:I

    move/from16 v25, v0

    sub-int v13, v23, v25

    .line 2825
    .local v13, incrementalDeltaX:I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13}, Lcom/htc/widget/HtcAbsListView;->trackMotionScrollWithConstrain(II)Z

    .line 2828
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 2829
    .local v18, motionView:Landroid/view/View;
    if-eqz v18, :cond_f

    .line 2832
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionViewNewLeft:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_f

    .line 2835
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->findMotionColumn(I)I

    move-result v17

    .line 2837
    .restart local v17       #motionPosition:I
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 2838
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v25, v17, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 2839
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalLeft:I

    .line 2840
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 2841
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 2844
    .end local v17           #motionPosition:I
    :cond_f
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastX:I

    .line 2878
    .end local v13           #incrementalDeltaX:I
    .end local v18           #motionView:Landroid/view/View;
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 2879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v11, v2, v3}, Landroid/text/method/TextSelectionMovementMethod;->onScrollChanged(IIII)V

    goto/16 :goto_1

    :cond_11
    move v13, v10

    .line 2824
    goto/16 :goto_5

    .line 2847
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    .line 2848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    move/from16 v25, v0

    sub-int v11, v11, v25

    .line 2849
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v25, v0

    const/high16 v26, -0x8000

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v25, v0

    sub-int v14, v24, v25

    .line 2852
    .local v14, incrementalDeltaY:I
    :goto_7
    const/4 v5, 0x0

    .line 2853
    .local v5, atEdge:Z
    if-eqz v14, :cond_13

    .line 2854
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14}, Lcom/htc/widget/HtcAbsListView;->trackMotionScrollWithConstrain(II)Z

    move-result v5

    .line 2858
    :cond_13
    if-eqz v5, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v25

    if-lez v25, :cond_15

    .line 2863
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v17

    .line 2864
    .restart local v17       #motionPosition:I
    if-ltz v17, :cond_14

    .line 2865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v25, v17, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 2866
    .restart local v18       #motionView:Landroid/view/View;
    if-eqz v18, :cond_14

    .line 2867
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 2869
    .end local v18           #motionView:Landroid/view/View;
    :cond_14
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 2870
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 2871
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 2873
    .end local v17           #motionPosition:I
    :cond_15
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    goto/16 :goto_6

    .end local v5           #atEdge:Z
    .end local v14           #incrementalDeltaY:I
    :cond_16
    move v14, v11

    .line 2849
    goto :goto_7

    .line 2889
    .end local v10           #deltaX:I
    .end local v11           #deltaY:I
    .end local v20           #pointerIndex:I
    .end local v23           #x:I
    .end local v24           #y:I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_2

    .line 2998
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    move/from16 v25, v0

    if-nez v25, :cond_17

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 3002
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3004
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 3005
    .local v12, handler:Landroid/os/Handler;
    if-eqz v12, :cond_18

    .line 3006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3009
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-eqz v25, :cond_19

    .line 3010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/VelocityTracker;->recycle()V

    .line 3011
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3014
    :cond_19
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 2893
    .end local v12           #handler:Landroid/os/Handler;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v17, v0

    .line 2894
    .restart local v17       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v25, v17, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2895
    .local v7, child:Landroid/view/View;
    if-eqz v7, :cond_26

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v25

    if-nez v25, :cond_26

    .line 2896
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v25, v0

    if-eqz v25, :cond_1a

    .line 2898
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    move/from16 v25, v0

    if-nez v25, :cond_1a

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2902
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    move-object/from16 v25, v0

    if-nez v25, :cond_1b

    .line 2903
    new-instance v25, Lcom/htc/widget/HtcAbsListView$PerformClick;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView$PerformClick;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    .line 2906
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    move-object/from16 v19, v0

    .line 2907
    .local v19, performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;
    move-object/from16 v0, v19

    iput-object v7, v0, Lcom/htc/widget/HtcAbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 2908
    move/from16 v0, v17

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$PerformClick;->mClickMotionPosition:I

    .line 2909
    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/HtcAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 2911
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 2914
    const/4 v6, 0x0

    .line 2915
    .local v6, b:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->delayIncludeDoneWaiting:Z

    move/from16 v25, v0

    if-eqz v25, :cond_20

    .line 2916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v25, v0

    if-eqz v25, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    .line 2917
    :cond_1c
    const/4 v6, 0x1

    .line 2925
    :cond_1d
    :goto_9
    if-eqz v6, :cond_25

    .line 2926
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 2927
    .restart local v12       #handler:Landroid/os/Handler;
    if-eqz v12, :cond_1e

    .line 2928
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v25, v0

    if-nez v25, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    :goto_a
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2931
    :cond_1e
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2932
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mDataChanged:Z

    move/from16 v25, v0

    if-nez v25, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_24

    .line 2933
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2934
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 2935
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 2936
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2937
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAbsListView;->positionSelector(Landroid/view/View;)V

    .line 2938
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1f

    .line 2940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 2941
    .local v9, d:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_1f

    instance-of v0, v9, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v25, v0

    if-eqz v25, :cond_1f

    .line 2942
    check-cast v9, Landroid/graphics/drawable/TransitionDrawable;

    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2946
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    move/from16 v25, v0

    if-eqz v25, :cond_23

    .line 2947
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    .line 2948
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2964
    :goto_b
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 2920
    .end local v12           #handler:Landroid/os/Handler;
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v25, v0

    if-eqz v25, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    .line 2921
    :cond_21
    const/4 v6, 0x1

    goto/16 :goto_9

    .line 2928
    .restart local v12       #handler:Landroid/os/Handler;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v25, v0

    goto/16 :goto_a

    .line 2950
    :cond_23
    new-instance v25, Lcom/htc/widget/HtcAbsListView$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/widget/HtcAbsListView$1;-><init>(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Lcom/htc/widget/HtcAbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 2962
    :cond_24
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    goto :goto_b

    .line 2965
    .end local v12           #handler:Landroid/os/Handler;
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mDataChanged:Z

    move/from16 v25, v0

    if-nez v25, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_26

    .line 2966
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2969
    .end local v6           #b:Z
    .end local v19           #performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;
    :cond_26
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    goto/16 :goto_8

    .line 2972
    .end local v7           #child:Landroid/view/View;
    .end local v17           #motionPosition:I
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v8

    .line 2973
    .local v8, childCount:I
    if-lez v8, :cond_29

    .line 2974
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    move/from16 v25, v0

    if-nez v25, :cond_27

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    move/from16 v25, v0

    add-int v25, v25, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_27

    add-int/lit8 v25, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_27

    .line 2978
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2979
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_8

    .line 2981
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    .line 2982
    .local v22, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v25, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2983
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v15, v0

    .line 2985
    .local v15, initialVelocity:I
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_28

    .line 2986
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView;->onFling(I)V

    goto/16 :goto_8

    .line 2988
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onUp()V

    goto/16 :goto_8

    .line 2992
    .end local v15           #initialVelocity:I
    .end local v22           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onUp()V

    goto/16 :goto_8

    .line 3026
    .end local v8           #childCount:I
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2a

    .line 3027
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3028
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1

    .line 3031
    :cond_2a
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3032
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 3033
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 3034
    .restart local v18       #motionView:Landroid/view/View;
    if-eqz v18, :cond_2b

    .line 3035
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3037
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 3039
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 3040
    .restart local v12       #handler:Landroid/os/Handler;
    if-eqz v12, :cond_2c

    .line 3041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3044
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2d

    .line 3045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/VelocityTracker;->recycle()V

    .line 3046
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3049
    :cond_2d
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 3054
    .end local v12           #handler:Landroid/os/Handler;
    .end local v18           #motionView:Landroid/view/View;
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3055
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    move/from16 v23, v0

    .line 3056
    .restart local v23       #x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    move/from16 v24, v0

    .line 3057
    .restart local v24       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v17

    .line 3058
    .restart local v17       #motionPosition:I
    if-ltz v17, :cond_2e

    .line 3060
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v25, v17, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3061
    .restart local v21       #v:Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3062
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3064
    .end local v21           #v:Landroid/view/View;
    :cond_2e
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    goto/16 :goto_1

    .line 2719
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

    .line 2797
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2889
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
    .parameter "isInTouchMode"

    .prologue
    .line 2649
    if-eqz p1, :cond_0

    .line 2651
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    .line 2655
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2658
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 2661
    :cond_0
    return-void
.end method

.method protected onUp()V
    .locals 1

    .prologue
    .line 5533
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 5534
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 5535
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2293
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onWindowFocusChanged(Z)V

    .line 2295
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 2297
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_4

    .line 2300
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2301
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->resetPressedStatus(Landroid/view/View;)V

    .line 2305
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2306
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 2307
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2310
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 2311
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 2312
    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 2313
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 2317
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 2319
    if-ne v0, v2, :cond_2

    .line 2321
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 2345
    :cond_2
    :goto_1
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    .line 2346
    return-void

    .end local v0           #touchMode:I
    :cond_3
    move v0, v2

    .line 2295
    goto :goto_0

    .line 2324
    .restart local v0       #touchMode:I
    :cond_4
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_5

    .line 2326
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    .line 2330
    :cond_5
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2332
    if-ne v0, v2, :cond_6

    .line 2334
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 2338
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    .line 2339
    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2340
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 937
    const/4 v7, 0x0

    .line 938
    .local v7, handled:Z
    const/4 v6, 0x1

    .line 940
    .local v6, dispatchItemClick:Z
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 941
    const/4 v7, 0x1

    .line 943
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 945
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    move v5, v8

    .line 946
    .local v5, newValue:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 947
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 948
    if-eqz v5, :cond_6

    .line 949
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 954
    :cond_1
    :goto_1
    if-eqz v5, :cond_7

    .line 955
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 959
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 960
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 962
    const/4 v6, 0x0

    .line 979
    .end local v5           #newValue:Z
    :cond_2
    :goto_3
    iput-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mDataChanged:Z

    .line 980
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 981
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 984
    :cond_3
    if-eqz v6, :cond_4

    .line 985
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 988
    :cond_4
    return v7

    :cond_5
    move v5, v0

    .line 945
    goto :goto_0

    .line 951
    .restart local v5       #newValue:Z
    :cond_6
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 957
    :cond_7
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 964
    .end local v5           #newValue:Z
    :cond_8
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v8, :cond_2

    .line 965
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_a

    move v5, v8

    .line 966
    .restart local v5       #newValue:Z
    :goto_4
    if-eqz v5, :cond_b

    .line 967
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 968
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 969
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 970
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 971
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 973
    :cond_9
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v5           #newValue:Z
    :cond_a
    move v5, v0

    .line 965
    goto :goto_4

    .line 974
    .restart local v5       #newValue:Z
    :cond_b
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 975
    :cond_c
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2537
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2538
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2539
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2540
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2543
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 2544
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 2545
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2546
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2547
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2548
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2549
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2553
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 2544
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2553
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
    .line 2566
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v0

    .line 2567
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 2568
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2570
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method protected positionSelector(Landroid/view/View;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 2009
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2010
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

    .line 2011
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView;->positionSelector(IIII)V

    .line 2014
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    .line 2015
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 2016
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    .line 2017
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->refreshDrawableState()V

    .line 2019
    :cond_0
    return-void

    .line 2016
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
    .line 4947
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 4948
    .local v1, childCount:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    invoke-static {v5}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$2200(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    move-result-object v3

    .line 4951
    .local v3, listener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4952
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4953
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 4955
    .local v4, lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    iget v6, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4956
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4957
    if-eqz v3, :cond_0

    .line 4959
    invoke-interface {v3, v0}, Lcom/htc/widget/HtcAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 4951
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4963
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 4964
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->removeAllViewsInLayout()V

    .line 4965
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 4094
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    .line 4095
    .local v0, position:I
    if-gez v0, :cond_0

    .line 4096
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 4098
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4099
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4100
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 3223
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_1

    .line 3264
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 3265
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 3268
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    .line 3270
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1532
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1533
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->requestLayout()V

    .line 1535
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1273
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1274
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resetList()V

    .line 1275
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 1276
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 1278
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1541
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->removeAllViewsInLayout()V

    .line 1542
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 1543
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataChanged:Z

    .line 1544
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mNeedSync:Z

    .line 1545
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mOldSelectedPosition:I

    .line 1546
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/HtcAbsListView;->mOldSelectedRowId:J

    .line 1547
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 1548
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    .line 1549
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 1550
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1551
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 1552
    return-void
.end method

.method public resetPressedStatus(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 2676
    if-eqz p1, :cond_0

    .line 2677
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2678
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2679
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2681
    :cond_0
    return-void
.end method

.method resurrectSelection()Z
    .locals 25

    .prologue
    .line 4160
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    .line 4162
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 4163
    const/16 v23, 0x0

    .line 4336
    :goto_0
    return v23

    .line 4166
    :cond_0
    const/16 v19, 0x0

    .line 4169
    .local v19, selectedTop:I
    const/16 v16, 0x0

    .line 4171
    .local v16, selectedLeft:I
    const/4 v7, 0x0

    .line 4172
    .local v7, childrenTop:I
    const/4 v4, 0x0

    .line 4173
    .local v4, childrenBottom:I
    const/4 v5, 0x0

    .line 4174
    .local v5, childrenLeft:I
    const/4 v6, 0x0

    .line 4176
    .local v6, childrenRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 4177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getLeftBorderWidth()I

    move-result v24

    add-int v5, v23, v24

    .line 4178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLeft:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getRightBorderWidth()I

    move-result v24

    sub-int v6, v23, v24

    .line 4185
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 4186
    .local v9, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    move/from16 v20, v0

    .line 4187
    .local v20, toPosition:I
    const/4 v8, 0x1

    .line 4189
    .local v8, down:Z
    move/from16 v0, v20

    if-lt v0, v9, :cond_7

    add-int v23, v9, v3

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 4190
    move/from16 v17, v20

    .line 4192
    .local v17, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 4195
    .local v14, selected:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 4196
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    .line 4197
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v18

    .line 4200
    .local v18, selectedRight:I
    move/from16 v0, v16

    if-ge v0, v5, :cond_4

    .line 4201
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v23

    add-int v16, v5, v23

    .line 4313
    .end local v14           #selected:Landroid/view/View;
    .end local v18           #selectedRight:I
    :cond_1
    :goto_2
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 4314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4315
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 4316
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 4319
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 4320
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mSpecificLeft:I

    .line 4324
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v17

    .line 4325
    move/from16 v0, v17

    if-lt v0, v9, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getLastVisiblePosition()I

    move-result v23

    move/from16 v0, v17

    move/from16 v1, v23

    if-gt v0, v1, :cond_16

    .line 4326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollWhenResurrectSelection:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 4327
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 4328
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setSelectionInt(I)V

    .line 4329
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    .line 4334
    :cond_2
    :goto_4
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 4336
    if-ltz v17, :cond_17

    const/16 v23, 0x1

    goto/16 :goto_0

    .line 4180
    .end local v8           #down:Z
    .end local v9           #firstPosition:I
    .end local v17           #selectedPos:I
    .end local v20           #toPosition:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getTopBorderHeight()I

    move-result v24

    add-int v7, v23, v24

    .line 4181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mBottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTop:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getBottomBorderHeight()I

    move-result v24

    sub-int v4, v23, v24

    goto/16 :goto_1

    .line 4202
    .restart local v8       #down:Z
    .restart local v9       #firstPosition:I
    .restart local v14       #selected:Landroid/view/View;
    .restart local v17       #selectedPos:I
    .restart local v18       #selectedRight:I
    .restart local v20       #toPosition:I
    :cond_4
    move/from16 v0, v18

    if-le v0, v6, :cond_1

    .line 4203
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    sub-int v23, v6, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v24

    sub-int v16, v23, v24

    goto/16 :goto_2

    .line 4207
    .end local v18           #selectedRight:I
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    .line 4208
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 4211
    .local v15, selectedBottom:I
    move/from16 v0, v19

    if-ge v0, v7, :cond_6

    .line 4212
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v23

    add-int v19, v7, v23

    goto/16 :goto_2

    .line 4213
    :cond_6
    if-le v15, v4, :cond_1

    .line 4214
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v23, v4, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v24

    sub-int v19, v23, v24

    goto/16 :goto_2

    .line 4220
    .end local v14           #selected:Landroid/view/View;
    .end local v15           #selectedBottom:I
    .end local v17           #selectedPos:I
    :cond_7
    move/from16 v0, v20

    if-ge v0, v9, :cond_e

    .line 4222
    move/from16 v17, v9

    .line 4223
    .restart local v17       #selectedPos:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5
    if-ge v10, v3, :cond_1

    .line 4224
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 4225
    .local v22, v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v21

    .line 4228
    .local v21, top:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 4230
    .local v12, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 4231
    if-nez v10, :cond_9

    .line 4233
    move/from16 v16, v12

    .line 4235
    if-gtz v9, :cond_8

    if-ge v12, v5, :cond_9

    .line 4238
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v23

    add-int v5, v5, v23

    .line 4241
    :cond_9
    if-lt v12, v5, :cond_d

    .line 4243
    add-int v17, v9, v10

    .line 4244
    move/from16 v16, v12

    .line 4245
    goto/16 :goto_2

    .line 4248
    :cond_a
    if-nez v10, :cond_c

    .line 4250
    move/from16 v19, v21

    .line 4252
    if-gtz v9, :cond_b

    move/from16 v0, v21

    if-ge v0, v7, :cond_c

    .line 4255
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v23

    add-int v7, v7, v23

    .line 4258
    :cond_c
    move/from16 v0, v21

    if-lt v0, v7, :cond_d

    .line 4260
    add-int v17, v9, v10

    .line 4261
    move/from16 v19, v21

    .line 4262
    goto/16 :goto_2

    .line 4223
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 4268
    .end local v10           #i:I
    .end local v12           #left:I
    .end local v17           #selectedPos:I
    .end local v21           #top:I
    .end local v22           #v:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    .line 4269
    .local v11, itemCount:I
    const/4 v8, 0x0

    .line 4270
    add-int v23, v9, v3

    add-int/lit8 v17, v23, -0x1

    .line 4272
    .restart local v17       #selectedPos:I
    add-int/lit8 v10, v3, -0x1

    .restart local v10       #i:I
    :goto_6
    if-ltz v10, :cond_1

    .line 4273
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 4276
    .restart local v22       #v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v21

    .line 4277
    .restart local v21       #top:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 4278
    .local v2, bottom:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 4279
    .restart local v12       #left:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v13

    .line 4281
    .local v13, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 4282
    add-int/lit8 v23, v3, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_10

    .line 4283
    move/from16 v16, v12

    .line 4284
    add-int v23, v9, v3

    move/from16 v0, v23

    if-lt v0, v11, :cond_f

    if-le v13, v6, :cond_10

    .line 4285
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v23

    sub-int v6, v6, v23

    .line 4289
    :cond_10
    if-gt v13, v6, :cond_14

    .line 4290
    add-int v17, v9, v10

    .line 4291
    move/from16 v16, v12

    .line 4292
    goto/16 :goto_2

    .line 4295
    :cond_11
    add-int/lit8 v23, v3, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_13

    .line 4296
    move/from16 v19, v21

    .line 4297
    add-int v23, v9, v3

    move/from16 v0, v23

    if-lt v0, v11, :cond_12

    if-le v2, v4, :cond_13

    .line 4298
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v23

    sub-int v4, v4, v23

    .line 4302
    :cond_13
    if-gt v2, v4, :cond_14

    .line 4303
    add-int v17, v9, v10

    .line 4304
    move/from16 v19, v21

    .line 4305
    goto/16 :goto_2

    .line 4272
    :cond_14
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 4322
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

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mSpecificTop:I

    goto/16 :goto_3

    .line 4332
    :cond_16
    const/16 v17, -0x1

    goto/16 :goto_4

    .line 4336
    :cond_17
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 4619
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 4677
    :cond_0
    :goto_0
    return v2

    .line 4623
    :cond_1
    const/4 v2, 0x0

    .line 4624
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 4625
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 4654
    :goto_1
    if-eqz v3, :cond_0

    .line 4655
    invoke-direct {p0, v7}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 4657
    move-object v1, p3

    .line 4658
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 4659
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {p3, v5, v6, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4662
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4663
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4665
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4666
    goto :goto_0

    .line 4632
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 4633
    goto :goto_1

    .line 4635
    :sswitch_1
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4636
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    .line 4638
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    invoke-virtual {v5, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 4639
    const/4 v2, 0x1

    .line 4646
    :cond_3
    :goto_2
    const/4 v3, 0x0

    .line 4647
    goto :goto_1

    .line 4640
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

    .line 4642
    const/4 v2, 0x1

    .line 4643
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 4650
    :sswitch_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    goto :goto_1

    .line 4669
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4670
    goto :goto_0

    .line 4673
    :pswitch_2
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 4625
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

    .line 4663
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
    .line 91
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 742
    if-eqz p1, :cond_0

    .line 743
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 745
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 754
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 756
    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 4919
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 4920
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    .line 4921
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 4922
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4923
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 4922
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4925
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 4927
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .parameter "choiceMode"

    .prologue
    .line 1010
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    .line 1011
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1013
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1015
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1016
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1017
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1020
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1023
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1024
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearChoices()V

    .line 1025
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setLongClickable(Z)V

    .line 1028
    :cond_3
    return-void
.end method

.method public setDelayActionUpTime(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2666
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    .line 2667
    return-void
.end method

.method public setDelayIncludeDoneWaiting(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2671
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->delayIncludeDoneWaiting:Z

    .line 2672
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 2113
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 2114
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 1072
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    .line 1074
    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    .line 1080
    if-eqz p1, :cond_2

    .line 1081
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-nez v0, :cond_0

    .line 1082
    new-instance v0, Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    goto :goto_0

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->stop()V

    .line 1087
    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1491
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1492
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 1495
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1497
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1499
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1500
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1501
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1505
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    .line 1506
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 1509
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1796
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1798
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 1802
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 1803
    .local v1, visible:Z
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

    .line 1804
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->positionPopup()V

    .line 1808
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 1802
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 873
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    if-eqz p2, :cond_2

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    .line 879
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 882
    :cond_2
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_9

    .line 883
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 884
    .local v6, oldValue:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 885
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 886
    if-eqz p2, :cond_7

    .line 887
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 892
    :cond_4
    :goto_1
    if-eq v6, p2, :cond_5

    .line 893
    if-eqz p2, :cond_8

    .line 894
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 899
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    .line 900
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 901
    .local v3, id:J
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 928
    .end local v3           #id:J
    .end local v6           #oldValue:Z
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 929
    iput-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mDataChanged:Z

    .line 930
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 931
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    goto :goto_0

    .line 889
    .restart local v6       #oldValue:Z
    :cond_7
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 896
    :cond_8
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 905
    .end local v6           #oldValue:Z
    :cond_9
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_d

    move v7, v8

    .line 908
    .local v7, updateIds:Z
    :goto_4
    if-nez p2, :cond_a

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 909
    :cond_a
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 910
    if-eqz v7, :cond_b

    .line 911
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 916
    :cond_b
    if-eqz p2, :cond_e

    .line 917
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 918
    if-eqz v7, :cond_c

    .line 919
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 921
    :cond_c
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7           #updateIds:Z
    :cond_d
    move v7, v0

    .line 905
    goto :goto_4

    .line 922
    .restart local v7       #updateIds:Z
    :cond_e
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 923
    :cond_f
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1041
    new-instance v0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->setWrapped(Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;)V

    .line 1044
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 1152
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    .line 1153
    return-void
.end method

.method public setRecyclerListener(Lcom/htc/widget/HtcAbsListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 5036
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #setter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$2202(Lcom/htc/widget/HtcAbsListView$RecycleBin;Lcom/htc/widget/HtcAbsListView$RecyclerListener;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    .line 5037
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "up"
    .parameter "down"

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2201
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollLeft:Landroid/view/View;

    .line 2202
    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollRight:Landroid/view/View;

    .line 2209
    :goto_0
    return-void

    .line 2205
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    .line 2206
    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    goto :goto_0
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1195
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1196
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 1198
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    .line 1199
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 2124
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2125
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 2128
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2129
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2130
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2132
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2135
    .local v0, padding:Landroid/graphics/Rect;
    if-eqz p1, :cond_1

    .line 2136
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2137
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2138
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2140
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    .line 2141
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    .line 2142
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    .line 2143
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    .line 2144
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1130
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    .line 1131
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 1266
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1267
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    .line 1268
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayoutIfNecessary()V

    .line 1270
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 1212
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    .line 1213
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 4894
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    .line 4895
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2092
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
    .parameter "originalView"

    .prologue
    .line 2471
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2472
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 2473
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2474
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 2476
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2477
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2480
    :cond_0
    if-nez v6, :cond_1

    .line 2481
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2484
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2489
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 3716
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v0, :cond_1

    .line 3717
    instance-of v0, p0, Lcom/htc/widget/BouncingListView;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 3718
    check-cast v0, Lcom/htc/widget/BouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/BouncingListView;->getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 3724
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->startScroll(II)V

    .line 3725
    return-void

    .line 3720
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    goto :goto_0

    .line 3722
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 3688
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 3689
    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    .line 3691
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->start(I)V

    .line 3692
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 3704
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 3705
    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    .line 3707
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->start(II)V

    .line 3708
    return-void
.end method

.method protected startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2621
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2622
    .local v0, distance:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    if-le v0, v5, :cond_2

    .line 2623
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->createScrollingCache()V

    .line 2624
    const/4 v5, 0x3

    iput v5, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2625
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 2626
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2630
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2631
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2633
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2634
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2635
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2636
    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2638
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 2641
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2645
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
    .line 2075
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2080
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2078
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2075
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 36
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 3776
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v5

    .line 3777
    .local v5, childCount:I
    if-nez v5, :cond_0

    .line 3778
    const/16 v34, 0x1

    .line 4035
    :goto_0
    return v34

    .line 3781
    :cond_0
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTop()I

    move-result v13

    .line 3782
    .local v13, firstTop:I
    add-int/lit8 v34, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getBottom()I

    move-result v20

    .line 3785
    .local v20, lastBottom:I
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 3786
    .local v11, firstLeft:I
    add-int/lit8 v34, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getRight()I

    move-result v21

    .line 3789
    .local v21, lastRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    .line 3799
    .local v24, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v34

    if-eqz v34, :cond_3

    .line 3800
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    sub-int v29, v34, v11

    .line 3801
    .local v29, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v34

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    sub-int v10, v34, v35

    .line 3802
    .local v10, end:I
    sub-int v30, v21, v10

    .line 3803
    .local v30, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    move/from16 v35, v0

    sub-int v33, v34, v35

    .line 3805
    .local v33, width:I
    if-gez p1, :cond_1

    .line 3806
    add-int/lit8 v34, v33, -0x1

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3811
    :goto_1
    if-gez p2, :cond_2

    .line 3812
    add-int/lit8 v34, v33, -0x1

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3837
    .end local v33           #width:I
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 3840
    .local v12, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v34

    if-eqz v34, :cond_7

    .line 3842
    if-nez v12, :cond_6

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getLeftBoundary()I

    move-result v35

    add-int v34, v34, v35

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getLeftBorderWidth()I

    move-result v35

    add-int v34, v34, v35

    move/from16 v0, v34

    if-le v11, v0, :cond_6

    if-lez p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->enableStopScrollNow()Z

    move-result v34

    if-eqz v34, :cond_6

    .line 3844
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onScrollToBoundary()V

    .line 3845
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 3808
    .end local v12           #firstPosition:I
    .restart local v33       #width:I
    :cond_1
    add-int/lit8 v34, v33, -0x1

    move/from16 v0, v34

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 3814
    :cond_2
    add-int/lit8 v34, v33, -0x1

    move/from16 v0, v34

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 3818
    .end local v10           #end:I
    .end local v29           #spaceAbove:I
    .end local v30           #spaceBelow:I
    .end local v33           #width:I
    :cond_3
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    sub-int v29, v34, v13

    .line 3819
    .restart local v29       #spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v34

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    sub-int v10, v34, v35

    .line 3820
    .restart local v10       #end:I
    sub-int v30, v20, v10

    .line 3821
    .restart local v30       #spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    move/from16 v35, v0

    sub-int v16, v34, v35

    .line 3823
    .local v16, height:I
    if-gez p1, :cond_4

    .line 3824
    add-int/lit8 v34, v16, -0x1

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3829
    :goto_3
    if-gez p2, :cond_5

    .line 3830
    add-int/lit8 v34, v16, -0x1

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto/16 :goto_2

    .line 3826
    :cond_4
    add-int/lit8 v34, v16, -0x1

    move/from16 v0, v34

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_3

    .line 3832
    :cond_5
    add-int/lit8 v34, v16, -0x1

    move/from16 v0, v34

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 3848
    .end local v16           #height:I
    .restart local v12       #firstPosition:I
    :cond_6
    add-int v34, v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getRightBoundary()I

    move-result v34

    mul-int/lit8 v34, v34, 0x2

    sub-int v34, v10, v34

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getRightBorderWidth()I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v0, v21

    move/from16 v1, v34

    if-ge v0, v1, :cond_9

    if-gez p1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->enableStopScrollNow()Z

    move-result v34

    if-eqz v34, :cond_9

    .line 3850
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onScrollToBoundary()V

    .line 3851
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 3855
    :cond_7
    if-nez v12, :cond_8

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getTopBoundary()I

    move-result v35

    add-int v34, v34, v35

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getTopBorderHeight()I

    move-result v35

    add-int v34, v34, v35

    move/from16 v0, v34

    if-le v13, v0, :cond_8

    if-lez p1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->enableStopScrollNow()Z

    move-result v34

    if-eqz v34, :cond_8

    .line 3857
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onScrollToBoundary()V

    .line 3858
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 3861
    :cond_8
    add-int v34, v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getBottomBoundary()I

    move-result v34

    mul-int/lit8 v34, v34, 0x2

    sub-int v34, v10, v34

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getBottomBorderHeight()I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v0, v20

    move/from16 v1, v34

    if-ge v0, v1, :cond_9

    if-gez p1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->enableStopScrollNow()Z

    move-result v34

    if-eqz v34, :cond_9

    if-gtz v13, :cond_9

    .line 3863
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onScrollToBoundary()V

    .line 3864
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 3868
    :cond_9
    if-gez p2, :cond_11

    const/4 v9, 0x1

    .line 3870
    .local v9, down:Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v18

    .line 3871
    .local v18, inTouchMode:Z
    if-eqz v18, :cond_a

    .line 3872
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    .line 3875
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeaderViewsCount()I

    move-result v15

    .line 3876
    .local v15, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    move/from16 v34, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getFooterViewsCount()I

    move-result v35

    sub-int v14, v34, v35

    .line 3878
    .local v14, footerViewsStart:I
    const/16 v31, 0x0

    .line 3879
    .local v31, start:I
    const/4 v8, 0x0

    .line 3884
    .local v8, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v34

    if-eqz v34, :cond_16

    .line 3885
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildrenTotalWidth()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_b

    .line 3886
    if-eqz v9, :cond_14

    .line 3887
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    sub-int v23, v34, p2

    .line 3888
    .local v23, left:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_5
    move/from16 v0, v17

    if-ge v0, v5, :cond_b

    .line 3889
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3890
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v34

    move/from16 v0, v34

    move/from16 v1, v23

    if-lt v0, v1, :cond_12

    .line 3929
    .end local v4           #child:Landroid/view/View;
    .end local v17           #i:I
    .end local v23           #left:I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalLeft:I

    move/from16 v34, v0

    add-int v34, v34, p1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewNewLeft:I

    .line 3998
    :goto_6
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView;->mBlockLayoutRequests:Z

    .line 4000
    if-lez v8, :cond_c

    .line 4001
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v8}, Lcom/htc/widget/HtcAbsListView;->detachViewsFromParent(II)V

    .line 4005
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v34

    if-eqz v34, :cond_21

    .line 4006
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->offsetChildrenLeftAndRight(I)V

    .line 4012
    :goto_7
    if-eqz v9, :cond_d

    .line 4013
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    move/from16 v34, v0

    add-int v34, v34, v8

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    .line 4016
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 4018
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4019
    .local v2, absIncrementalDeltaY:I
    move/from16 v0, v29

    if-lt v0, v2, :cond_e

    move/from16 v0, v30

    if-ge v0, v2, :cond_f

    .line 4020
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAbsListView;->fillGap(Z)V

    .line 4023
    :cond_f
    if-nez v18, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    move/from16 v34, v0

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_10

    .line 4024
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectedPosition:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v6, v34, v35

    .line 4025
    .local v6, childIndex:I
    if-ltz v6, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v34

    move/from16 v0, v34

    if-ge v6, v0, :cond_10

    .line 4026
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->positionSelector(Landroid/view/View;)V

    .line 4030
    .end local v6           #childIndex:I
    :cond_10
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView;->mBlockLayoutRequests:Z

    .line 4032
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    .line 4033
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->awakenScrollBars()Z

    .line 4035
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 3868
    .end local v2           #absIncrementalDeltaY:I
    .end local v8           #count:I
    .end local v9           #down:Z
    .end local v14           #footerViewsStart:I
    .end local v15           #headerViewsCount:I
    .end local v18           #inTouchMode:Z
    .end local v31           #start:I
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 3893
    .restart local v4       #child:Landroid/view/View;
    .restart local v8       #count:I
    .restart local v9       #down:Z
    .restart local v14       #footerViewsStart:I
    .restart local v15       #headerViewsCount:I
    .restart local v17       #i:I
    .restart local v18       #inTouchMode:Z
    .restart local v23       #left:I
    .restart local v31       #start:I
    :cond_12
    add-int/lit8 v8, v8, 0x1

    .line 3894
    add-int v26, v12, v17

    .line 3895
    .local v26, position:I
    move/from16 v0, v26

    if-lt v0, v15, :cond_13

    move/from16 v0, v26

    if-ge v0, v14, :cond_13

    .line 3896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3888
    :cond_13
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 3907
    .end local v4           #child:Landroid/view/View;
    .end local v17           #i:I
    .end local v23           #left:I
    .end local v26           #position:I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v34

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    sub-int v27, v34, p2

    .line 3908
    .local v27, right:I
    add-int/lit8 v17, v5, -0x1

    .restart local v17       #i:I
    :goto_8
    if-ltz v17, :cond_b

    .line 3909
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3910
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v34

    move/from16 v0, v34

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    .line 3913
    move/from16 v31, v17

    .line 3914
    add-int/lit8 v8, v8, 0x1

    .line 3915
    add-int v26, v12, v17

    .line 3916
    .restart local v26       #position:I
    move/from16 v0, v26

    if-lt v0, v15, :cond_15

    move/from16 v0, v26

    if-ge v0, v14, :cond_15

    .line 3917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3908
    :cond_15
    add-int/lit8 v17, v17, -0x1

    goto :goto_8

    .line 3932
    .end local v4           #child:Landroid/view/View;
    .end local v17           #i:I
    .end local v26           #position:I
    .end local v27           #right:I
    :cond_16
    const/16 v22, 0x0

    .line 3933
    .local v22, lastRow:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v34, v0

    if-eqz v34, :cond_17

    move-object/from16 v34, p0

    .line 3934
    check-cast v34, Lcom/htc/widget/HtcGridViewCore;

    invoke-virtual/range {v34 .. v34}, Lcom/htc/widget/HtcGridViewCore;->getNumColumns()I

    move-result v7

    .line 3935
    .local v7, cols:I
    if-lez v7, :cond_17

    .line 3937
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getRowPerPage()I

    move-result v28

    .line 3938
    .local v28, rows:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getItemsPerPage()I

    move-result v19

    .line 3939
    .local v19, itemsPerPage:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getPageCount()I

    move-result v25

    .line 3940
    .local v25, pageCount:I
    add-int/lit8 v34, v25, -0x1

    mul-int v34, v34, v7

    mul-int v22, v34, v28

    .line 3945
    .end local v7           #cols:I
    .end local v19           #itemsPerPage:I
    .end local v25           #pageCount:I
    .end local v28           #rows:I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildrenTotalHeight()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_1a

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v34, v0

    if-eqz v34, :cond_19

    if-nez v9, :cond_1a

    .line 3995
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    move/from16 v34, v0

    add-int v34, v34, p1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewNewTop:I

    goto/16 :goto_6

    .line 3947
    :cond_1a
    if-eqz v9, :cond_1f

    .line 3948
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    sub-int v32, v34, p2

    .line 3949
    .local v32, top:I
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_9
    move/from16 v0, v17

    if-ge v0, v5, :cond_19

    .line 3950
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3952
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v34

    move/from16 v0, v34

    move/from16 v1, v32

    if-lt v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v34, v0

    if-eqz v34, :cond_19

    .line 3954
    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v34

    move/from16 v0, v34

    move/from16 v1, v32

    if-le v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v34, v0

    if-nez v34, :cond_19

    .line 3957
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    move/from16 v34, v0

    add-int v34, v34, v8

    move/from16 v0, v34

    move/from16 v1, v22

    if-ge v0, v1, :cond_19

    .line 3960
    :cond_1d
    add-int/lit8 v8, v8, 0x1

    .line 3961
    add-int v26, v12, v17

    .line 3962
    .restart local v26       #position:I
    move/from16 v0, v26

    if-lt v0, v15, :cond_1e

    move/from16 v0, v26

    if-ge v0, v14, :cond_1e

    .line 3963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3949
    :cond_1e
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 3973
    .end local v4           #child:Landroid/view/View;
    .end local v17           #i:I
    .end local v26           #position:I
    .end local v32           #top:I
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v34

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    sub-int v3, v34, p2

    .line 3974
    .local v3, bottom:I
    add-int/lit8 v17, v5, -0x1

    .restart local v17       #i:I
    :goto_a
    if-ltz v17, :cond_19

    .line 3975
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3976
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v34

    move/from16 v0, v34

    if-le v0, v3, :cond_19

    .line 3979
    move/from16 v31, v17

    .line 3980
    add-int/lit8 v8, v8, 0x1

    .line 3981
    add-int v26, v12, v17

    .line 3982
    .restart local v26       #position:I
    move/from16 v0, v26

    if-lt v0, v15, :cond_20

    move/from16 v0, v26

    if-ge v0, v14, :cond_20

    .line 3983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3974
    :cond_20
    add-int/lit8 v17, v17, -0x1

    goto :goto_a

    .line 4008
    .end local v3           #bottom:I
    .end local v4           #child:Landroid/view/View;
    .end local v17           #i:I
    .end local v22           #lastRow:I
    .end local v26           #position:I
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->offsetChildrenTopAndBottom(I)V

    goto/16 :goto_7
.end method

.method trackMotionScrollWithConstrain(II)Z
    .locals 1
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 5529
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->trackMotionScroll(II)Z

    move-result v0

    return v0
.end method

.method unPressedUnSelectChildren(Landroid/view/View;)V
    .locals 4
    .parameter "sel"

    .prologue
    .line 5579
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5580
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5581
    .local v0, child:Landroid/view/View;
    if-eq v0, p1, :cond_0

    .line 5582
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5579
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5585
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

    .line 1817
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1819
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 1822
    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    if-lez v8, :cond_4

    move v1, v6

    .line 1825
    .local v1, canScrollLeft:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1826
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 1827
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1828
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getLeftBorderWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_5

    move v1, v6

    .line 1832
    .end local v4           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v1, :cond_6

    move v8, v7

    :goto_2
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1835
    .end local v1           #canScrollLeft:Z
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 1837
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v5

    .line 1840
    .local v5, count:I
    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    if-ge v8, v10, :cond_7

    move v2, v6

    .line 1843
    .local v2, canScrollRight:Z
    :goto_3
    if-nez v2, :cond_2

    if-lez v5, :cond_2

    .line 1844
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1845
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mRight:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getRightBorderWidth()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_8

    move v2, v6

    .line 1848
    .end local v4           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v2, :cond_9

    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1885
    .end local v2           #canScrollRight:Z
    .end local v5           #count:I
    :cond_3
    :goto_6
    return-void

    :cond_4
    move v1, v7

    .line 1822
    goto :goto_0

    .restart local v1       #canScrollLeft:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_5
    move v1, v7

    .line 1828
    goto :goto_1

    .end local v4           #child:Landroid/view/View;
    :cond_6
    move v8, v9

    .line 1832
    goto :goto_2

    .end local v1           #canScrollLeft:Z
    .restart local v5       #count:I
    :cond_7
    move v2, v7

    .line 1840
    goto :goto_3

    .restart local v2       #canScrollRight:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_8
    move v2, v7

    .line 1845
    goto :goto_4

    .end local v4           #child:Landroid/view/View;
    :cond_9
    move v7, v9

    .line 1848
    goto :goto_5

    .line 1852
    .end local v2           #canScrollRight:Z
    .end local v5           #count:I
    :cond_a
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v8, :cond_c

    .line 1855
    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    if-lez v8, :cond_e

    move v3, v6

    .line 1858
    .local v3, canScrollUp:Z
    :goto_7
    if-nez v3, :cond_b

    .line 1859
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_b

    .line 1860
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1861
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getTopBorderHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_f

    move v3, v6

    .line 1865
    .end local v4           #child:Landroid/view/View;
    :cond_b
    :goto_8
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v3, :cond_10

    move v8, v7

    :goto_9
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1868
    .end local v3           #canScrollUp:Z
    :cond_c
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 1870
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v5

    .line 1873
    .restart local v5       #count:I
    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    if-ge v8, v10, :cond_11

    move v0, v6

    .line 1876
    .local v0, canScrollDown:Z
    :goto_a
    if-nez v0, :cond_d

    if-lez v5, :cond_d

    .line 1877
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1878
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mBottom:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getBottomBorderHeight()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_12

    move v0, v6

    .line 1881
    .end local v4           #child:Landroid/view/View;
    :cond_d
    :goto_b
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_13

    :goto_c
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .end local v0           #canScrollDown:Z
    .end local v5           #count:I
    :cond_e
    move v3, v7

    .line 1855
    goto :goto_7

    .restart local v3       #canScrollUp:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_f
    move v3, v7

    .line 1861
    goto :goto_8

    .end local v4           #child:Landroid/view/View;
    :cond_10
    move v8, v9

    .line 1865
    goto :goto_9

    .end local v3           #canScrollUp:Z
    .restart local v5       #count:I
    :cond_11
    move v0, v7

    .line 1873
    goto :goto_a

    .restart local v0       #canScrollDown:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_12
    move v0, v7

    .line 1878
    goto :goto_b

    .end local v4           #child:Landroid/view/View;
    :cond_13
    move v7, v9

    .line 1881
    goto :goto_c
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 2255
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
