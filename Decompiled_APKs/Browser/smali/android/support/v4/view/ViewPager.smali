.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$DataSetObserver;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$OnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mBaseLineFlingVelocity:F

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCurItem:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFlingVelocityInfluence:F

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Landroid/support/v4/view/PagerAdapter$DataSetObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 79
    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 228
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 92
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 93
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 94
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 109
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 124
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 146
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 229
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 233
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 92
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 93
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 94
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 109
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 124
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 146
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 234
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 235
    return-void
.end method

.method private completeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 960
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mScrolling:Z

    .line 961
    .local v2, needPopulate:Z
    if-eqz v2, :cond_2

    .line 963
    invoke-direct {p0, v8}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 964
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 965
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 966
    .local v3, oldX:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v4

    .line 967
    .local v4, oldY:I
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 968
    .local v5, x:I
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 969
    .local v6, y:I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 970
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 972
    :cond_1
    invoke-direct {p0, v8}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 974
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_2
    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 975
    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mScrolling:Z

    .line 976
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 977
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 978
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v7, :cond_3

    .line 979
    const/4 v2, 0x1

    .line 980
    iput-boolean v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 976
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 983
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_4
    if-eqz v2, :cond_5

    .line 984
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 986
    :cond_5
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1457
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1458
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1460
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1462
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1464
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 1442
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1443
    .local v2, pointerIndex:I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1444
    .local v1, pointerId:I
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1447
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1448
    .local v0, newPointerIndex:I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1449
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1450
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1451
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1454
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1447
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 11
    .parameter "width"
    .parameter "oldWidth"
    .parameter "margin"
    .parameter "oldMargin"

    .prologue
    const/4 v2, 0x0

    .line 877
    add-int v10, p1, p3

    .line 878
    .local v10, widthWithMargin:I
    if-lez p2, :cond_1

    .line 879
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v7

    .line 880
    .local v7, oldScrollPos:I
    add-int v8, p2, p4

    .line 881
    .local v8, oldwwm:I
    div-int v6, v7, v8

    .line 882
    .local v6, oldScrollItem:I
    rem-int v0, v7, v8

    int-to-float v0, v0

    int-to-float v3, v8

    div-float v9, v0, v3

    .line 883
    .local v9, scrollOffset:F
    int-to-float v0, v6

    add-float/2addr v0, v9

    int-to-float v3, v10

    mul-float/2addr v0, v3

    float-to-int v1, v0

    .line 884
    .local v1, scrollPos:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 885
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 888
    .local v5, newDuration:I
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    mul-int/2addr v3, v10

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 897
    .end local v5           #newDuration:I
    .end local v6           #oldScrollItem:I
    .end local v7           #oldScrollPos:I
    .end local v8           #oldwwm:I
    .end local v9           #scrollOffset:F
    :cond_0
    :goto_0
    return-void

    .line 891
    .end local v1           #scrollPos:I
    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    mul-int v1, v0, v10

    .line 892
    .restart local v1       #scrollPos:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 893
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 894
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 256
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 261
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1467
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1468
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    .line 1479
    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1611
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1613
    .local v2, focusableCount:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 1615
    .local v1, descendantFocusability:I
    const/high16 v5, 0x6

    if-eq v1, v5, :cond_1

    .line 1616
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1617
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1618
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1619
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 1620
    .local v4, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 1621
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1616
    .end local v4           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1631
    .end local v0           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    const/high16 v5, 0x4

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 1637
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1648
    :cond_3
    :goto_1
    return-void

    .line 1640
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1644
    :cond_5
    if-eqz p1, :cond_3

    .line 1645
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)V
    .locals 2
    .parameter "position"
    .parameter "index"

    .prologue
    .line 546
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    .line 547
    .local v0, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 548
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 549
    if-gez p2, :cond_0

    .line 550
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 1658
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1659
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1660
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1661
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 1662
    .local v2, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 1663
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1658
    .end local v2           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1667
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 790
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 792
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 804
    :goto_0
    return-void

    .line 794
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 1552
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1553
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1555
    :cond_0
    const/4 v1, 0x0

    .line 1557
    .local v1, handled:Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1559
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_6

    .line 1560
    if-ne p1, v4, :cond_4

    .line 1563
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 1564
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v1

    .line 1584
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1585
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 1587
    :cond_2
    return v1

    .line 1566
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1568
    :cond_4
    if-ne p1, v5, :cond_1

    .line 1571
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 1572
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_0

    .line 1574
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1577
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v3, 0x1

    if-ne p1, v3, :cond_8

    .line 1579
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_0

    .line 1580
    :cond_8
    if-eq p1, v5, :cond_9

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1582
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1334
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 1350
    :goto_0
    return v4

    .line 1337
    :cond_0
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 1338
    invoke-direct {p0, v9}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1339
    iput v5, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iput v5, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    .line 1340
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1341
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1345
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, time:J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 1346
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1347
    .local v8, ev:Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1348
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1349
    iput-wide v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 1350
    goto :goto_0

    .line 1343
    .end local v0           #time:J
    .end local v8           #ev:Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .parameter "v"
    .parameter "checkV"
    .parameter "dx"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1493
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 1494
    check-cast v7, Landroid/view/ViewGroup;

    .line 1495
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1496
    .local v9, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1497
    .local v10, scrollY:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1499
    .local v6, count:I
    add-int/lit8 v8, v6, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1

    .line 1502
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1503
    .local v1, child:Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    const/4 v0, 0x1

    .line 1512
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :goto_1
    return v0

    .line 1499
    .restart local v1       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #group:Landroid/view/ViewGroup;
    .restart local v8       #i:I
    .restart local v9       #scrollX:I
    .restart local v10       #scrollY:I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1512
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 10

    .prologue
    .line 929
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 930
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 932
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 933
    .local v2, oldX:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    .line 934
    .local v3, oldY:I
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 935
    .local v6, x:I
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 937
    .local v7, y:I
    if-ne v2, v6, :cond_0

    if-eq v3, v7, :cond_1

    .line 938
    :cond_0
    invoke-virtual {p0, v6, v7}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 941
    :cond_1
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v8, :cond_2

    .line 942
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int v5, v8, v9

    .line 943
    .local v5, widthWithMargin:I
    div-int v4, v6, v5

    .line 944
    .local v4, position:I
    rem-int v1, v6, v5

    .line 945
    .local v1, offsetPixels:I
    int-to-float v8, v1

    int-to-float v9, v5

    div-float v0, v8, v9

    .line 946
    .local v0, offset:F
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v8, v4, v0, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 950
    .end local v0           #offset:F
    .end local v1           #offsetPixels:I
    .end local v4           #position:I
    .end local v5           #widthWithMargin:I
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 957
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    .end local v6           #x:I
    .end local v7           #y:I
    :goto_0
    return-void

    .line 956
    :cond_3
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 559
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    move v2, v5

    .line 560
    .local v2, needPopulate:Z
    :goto_0
    const/4 v3, -0x1

    .line 562
    .local v3, newCurrItem:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 563
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 564
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    .line 566
    .local v4, newPos:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 562
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v2           #needPopulate:Z
    .end local v3           #newCurrItem:I
    .end local v4           #newPos:I
    :cond_1
    move v2, v6

    .line 559
    goto :goto_0

    .line 570
    .restart local v0       #i:I
    .restart local v1       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v2       #needPopulate:Z
    .restart local v3       #newCurrItem:I
    .restart local v4       #newPos:I
    :cond_2
    const/4 v7, -0x2

    if-ne v4, v7, :cond_3

    .line 571
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 572
    add-int/lit8 v0, v0, -0x1

    .line 573
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v9, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 574
    const/4 v2, 0x1

    .line 576
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v7, v8, :cond_0

    .line 578
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .line 583
    :cond_3
    iget v7, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eq v7, v4, :cond_0

    .line 584
    iget v7, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_4

    .line 586
    move v3, v4

    .line 589
    :cond_4
    iput v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 590
    const/4 v2, 0x1

    goto :goto_2

    .line 594
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v4           #newPos:I
    :cond_5
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v8, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 596
    if-ltz v3, :cond_6

    .line 598
    invoke-virtual {p0, v3, v6, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 599
    const/4 v2, 0x1

    .line 601
    :cond_6
    if-eqz v2, :cond_7

    .line 602
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 603
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 605
    :cond_7
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1518
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 1709
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1710
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1711
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1712
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1713
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 1714
    .local v3, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1716
    const/4 v4, 0x1

    .line 1721
    .end local v0           #child:Landroid/view/View;
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_1
    return v4

    .line 1710
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1721
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 488
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 489
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 490
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    .line 1257
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1258
    const/4 v2, 0x0

    .line 1260
    .local v2, needsInvalidate:Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v3

    .line 1261
    .local v3, overScrollMode:I
    if-eqz v3, :cond_0

    if-ne v3, v1, :cond_5

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    if-le v6, v1, :cond_5

    .line 1264
    :cond_0
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1265
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1266
    .local v4, restoreCount:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1268
    .local v0, height:I
    const/high16 v6, 0x4387

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1269
    neg-int v6, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1270
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1271
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1272
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1274
    .end local v0           #height:I
    .end local v4           #restoreCount:I
    :cond_1
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1276
    .restart local v4       #restoreCount:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1277
    .local v5, width:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1278
    .restart local v0       #height:I
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 1280
    .local v1, itemCount:I
    :cond_2
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1281
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v7, v1

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v8, v5

    mul-int/2addr v7, v8

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1283
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, v0, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1284
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1285
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1292
    .end local v0           #height:I
    .end local v1           #itemCount:I
    .end local v4           #restoreCount:I
    .end local v5           #width:I
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 1294
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 1296
    :cond_4
    return-void

    .line 1288
    :cond_5
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1289
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 476
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 477
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 478
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 481
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1360
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 1361
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1364
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1365
    .local v1, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1366
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    float-to-int v0, v2

    .line 1368
    .local v0, initialVelocity:I
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1369
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 1371
    :cond_1
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1372
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1379
    :goto_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 1381
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 1382
    return-void

    .line 1374
    :cond_2
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v4, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1377
    :cond_3
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v2, v4, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1530
    const/4 v0, 0x0

    .line 1531
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1532
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1548
    :cond_0
    :goto_0
    return v0

    .line 1534
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 1535
    goto :goto_0

    .line 1537
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 1538
    goto :goto_0

    .line 1540
    :sswitch_2
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1541
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1542
    :cond_1
    invoke-static {p1, v2}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1532
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 18
    .parameter "xOffset"

    .prologue
    .line 1392
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-nez v1, :cond_0

    .line 1393
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1396
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    add-float v1, v1, p1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1397
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-float v15, v1, p1

    .line 1398
    .local v15, scrollX:F
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v16

    .line 1399
    .local v16, width:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int v17, v16, v1

    .line 1401
    .local v17, widthWithMargin:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    mul-int v2, v2, v17

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v10, v1

    .line 1402
    .local v10, leftBound:F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int v1, v1, v17

    int-to-float v14, v1

    .line 1404
    .local v14, rightBound:F
    cmpg-float v1, v15, v10

    if-gez v1, :cond_3

    .line 1405
    move v15, v10

    .line 1410
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v2, v15

    int-to-float v2, v2

    sub-float v2, v15, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1411
    float-to-int v1, v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_2

    .line 1413
    float-to-int v1, v15

    div-int v11, v1, v17

    .line 1414
    .local v11, position:I
    float-to-int v1, v15

    rem-int v13, v1, v17

    .line 1415
    .local v13, positionOffsetPixels:I
    int-to-float v1, v13

    move/from16 v0, v17

    int-to-float v2, v0

    div-float v12, v1, v2

    .line 1416
    .local v12, positionOffset:F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v1, v11, v12, v13}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1421
    .end local v11           #position:I
    .end local v12           #positionOffset:F
    .end local v13           #positionOffsetPixels:I
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1422
    .local v3, time:J
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1424
    .local v9, ev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1425
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1426
    return-void

    .line 1406
    .end local v3           #time:J
    .end local v9           #ev:Landroid/view/MotionEvent;
    :cond_3
    cmpl-float v1, v15, v14

    if-lez v1, :cond_1

    .line 1407
    move v15, v14

    goto :goto_0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 2
    .parameter "child"

    .prologue
    .line 818
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 819
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 820
    :cond_0
    const/4 v1, 0x0

    .line 824
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 822
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 824
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 4
    .parameter "child"

    .prologue
    .line 807
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 808
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 809
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 807
    .restart local v1       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 5

    .prologue
    .line 238
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 239
    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 240
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 241
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 242
    .local v1, context:Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 243
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 244
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    .line 245
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    .line 246
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    .line 247
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 248
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 250
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 251
    .local v2, density:F
    const v3, 0x451c4000

    mul-float/2addr v3, v2

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mBaseLineFlingVelocity:F

    .line 252
    const v3, 0x3ecccccd

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mFlingVelocityInfluence:F

    .line 253
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 1438
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 829
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 830
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 831
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 1300
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1303
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1304
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 1305
    .local v2, scrollX:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 1306
    .local v3, width:I
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v4, v3

    rem-int v1, v2, v4

    .line 1307
    .local v1, offset:I
    if-eqz v1, :cond_0

    .line 1309
    sub-int v4, v2, v1

    add-int v0, v4, v3

    .line 1310
    .local v0, left:I
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v6, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1311
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1314
    .end local v0           #left:I
    .end local v1           #offset:I
    .end local v2           #scrollX:I
    .end local v3           #width:I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "ev"

    .prologue
    .line 996
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v7, v1, 0xff

    .line 999
    .local v7, action:I
    const/4 v1, 0x3

    if-eq v7, v1, :cond_0

    const/4 v1, 0x1

    if-ne v7, v1, :cond_1

    .line 1002
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1003
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1004
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1005
    const/4 v1, 0x0

    .line 1109
    :goto_0
    return v1

    .line 1010
    :cond_1
    if-eqz v7, :cond_3

    .line 1011
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_2

    .line 1013
    const/4 v1, 0x1

    goto :goto_0

    .line 1015
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_3

    .line 1017
    const/4 v1, 0x0

    goto :goto_0

    .line 1021
    :cond_3
    sparse-switch v7, :sswitch_data_0

    .line 1109
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1032
    :sswitch_0
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1033
    .local v8, activePointerId:I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_4

    .line 1038
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 1039
    .local v11, pointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    .line 1040
    .local v13, x:F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v10, v13, v1

    .line 1041
    .local v10, dx:F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 1042
    .local v14, xDiff:F
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 1043
    .local v15, y:F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    sub-float v1, v15, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1044
    .local v16, yDiff:F
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1045
    .local v12, scrollX:I
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_5

    if-eqz v12, :cond_6

    :cond_5
    const/4 v1, 0x0

    cmpg-float v1, v10, v1

    if-gez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v12, v1, :cond_7

    :cond_6
    const/4 v9, 0x1

    .line 1049
    .local v9, atEdge:Z
    :goto_2
    const/4 v3, 0x0

    float-to-int v4, v10

    float-to-int v5, v13

    float-to-int v6, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1051
    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    .line 1052
    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1053
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1045
    .end local v9           #atEdge:Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 1055
    .restart local v9       #atEdge:Z
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v14, v1

    if-lez v1, :cond_9

    cmpl-float v1, v14, v16

    if-lez v1, :cond_9

    .line 1057
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1058
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1059
    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1060
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_1

    .line 1062
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v16, v1

    if-lez v1, :cond_4

    .line 1068
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 1079
    .end local v8           #activePointerId:I
    .end local v9           #atEdge:Z
    .end local v10           #dx:F
    .end local v11           #pointerIndex:I
    .end local v12           #scrollX:I
    .end local v13           #x:F
    .end local v14           #xDiff:F
    .end local v15           #y:F
    .end local v16           #yDiff:F
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1080
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1081
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1083
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 1085
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1086
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1087
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1089
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 1090
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1091
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 1101
    :sswitch_2
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1021
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 901
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 902
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 903
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 905
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    .line 906
    .local v3, count:I
    sub-int v7, p4, p2

    .line 908
    .local v7, width:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 909
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 911
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v5

    .local v5, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v5, :cond_0

    .line 912
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v8, v7

    iget v9, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    mul-int v6, v8, v9

    .line 913
    .local v6, loff:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v8

    add-int v1, v8, v6

    .line 914
    .local v1, childLeft:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    .line 918
    .local v2, childTop:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 908
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    .end local v5           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v6           #loff:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 923
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 924
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 840
    invoke-static {v5, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v3

    invoke-static {v5, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 844
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    .line 846
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    .line 850
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 851
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 852
    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 855
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 856
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 857
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 858
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 861
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 856
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 864
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1678
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1679
    .local v1, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 1680
    const/4 v6, 0x0

    .line 1681
    .local v6, index:I
    const/4 v5, 0x1

    .line 1682
    .local v5, increment:I
    move v2, v1

    .line 1688
    .local v2, end:I
    :goto_0
    move v3, v6

    .local v3, i:I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 1689
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1690
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 1691
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 1692
    .local v4, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 1693
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1694
    const/4 v7, 0x1

    .line 1699
    .end local v0           #child:Landroid/view/View;
    .end local v4           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_2
    return v7

    .line 1684
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 1685
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 1686
    .restart local v5       #increment:I
    const/4 v2, -0x1

    .restart local v2       #end:I
    goto :goto_0

    .line 1688
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #i:I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 1699
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 770
    instance-of v1, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v1, :cond_0

    .line 771
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 786
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 775
    check-cast v0, Landroid/support/v4/view/ViewPager$SavedState;

    .line 776
    .local v0, ss:Landroid/support/v4/view/ViewPager$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 778
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 779
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 780
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 782
    :cond_1
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 783
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 784
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 759
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 760
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 761
    .local v0, ss:Landroid/support/v4/view/ViewPager$SavedState;
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iput v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 762
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_0

    .line 763
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 765
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 868
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 871
    if-eq p1, p3, :cond_0

    .line 872
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 874
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .parameter "ev"

    .prologue
    .line 1114
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 1118
    const/16 v29, 0x1

    .line 1252
    :goto_0
    return v29

    .line 1121
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v29

    if-nez v29, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v29

    if-eqz v29, :cond_1

    .line 1124
    const/16 v29, 0x0

    goto :goto_0

    .line 1127
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v29

    if-nez v29, :cond_3

    .line 1129
    :cond_2
    const/16 v29, 0x0

    goto :goto_0

    .line 1132
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    if-nez v29, :cond_4

    .line 1133
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1135
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1137
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1138
    .local v4, action:I
    const/4 v12, 0x0

    .line 1140
    .local v12, needsInvalidate:Z
    and-int/lit16 v0, v4, 0xff

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_0

    .line 1249
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v12, :cond_6

    .line 1250
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 1252
    :cond_6
    const/16 v29, 0x1

    goto :goto_0

    .line 1146
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 1149
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1150
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1154
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v29, v0

    if-nez v29, :cond_7

    .line 1155
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v16

    .line 1156
    .local v16, pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 1157
    .local v25, x:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v29, v0

    sub-float v29, v25, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v26

    .line 1158
    .local v26, xDiff:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v27

    .line 1159
    .local v27, y:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    move/from16 v29, v0

    sub-float v29, v27, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v28

    .line 1161
    .local v28, yDiff:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v29, v26, v29

    if-lez v29, :cond_7

    cmpl-float v29, v26, v28

    if-lez v29, :cond_7

    .line 1163
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1164
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1165
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1166
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1169
    .end local v16           #pointerIndex:I
    .end local v25           #x:F
    .end local v26           #xDiff:F
    .end local v27           #y:F
    .end local v28           #yDiff:F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 1171
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1173
    .local v5, activePointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 1174
    .restart local v25       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v29, v0

    sub-float v7, v29, v25

    .line 1175
    .local v7, deltaX:F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1176
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v29

    move/from16 v0, v29

    int-to-float v14, v0

    .line 1177
    .local v14, oldScrollX:F
    add-float v21, v14, v7

    .line 1178
    .local v21, scrollX:F
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v23

    .line 1179
    .local v23, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    move/from16 v29, v0

    add-int v24, v23, v29

    .line 1181
    .local v24, widthWithMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v29

    add-int/lit8 v10, v29, -0x1

    .line 1182
    .local v10, lastItemIndex:I
    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    mul-int v30, v30, v24

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v0, v29

    int-to-float v11, v0

    .line 1183
    .local v11, leftBound:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v29

    mul-int v29, v29, v24

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1185
    .local v20, rightBound:F
    cmpg-float v29, v21, v11

    if-gez v29, :cond_a

    .line 1186
    const/16 v29, 0x0

    cmpl-float v29, v11, v29

    if-nez v29, :cond_8

    .line 1187
    move/from16 v0, v21

    neg-float v15, v0

    .line 1188
    .local v15, over:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v29, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v30, v15, v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v12

    .line 1190
    .end local v15           #over:F
    :cond_8
    move/from16 v21, v11

    .line 1199
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v29, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v21, v30

    add-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1200
    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    .line 1202
    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v29, v0

    div-int v17, v29, v24

    .line 1203
    .local v17, position:I
    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v29, v0

    rem-int v19, v29, v24

    .line 1204
    .local v19, positionOffsetPixels:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v18, v29, v30

    .line 1205
    .local v18, positionOffset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto/16 :goto_1

    .line 1191
    .end local v17           #position:I
    .end local v18           #positionOffset:F
    .end local v19           #positionOffsetPixels:I
    :cond_a
    cmpl-float v29, v21, v20

    if-lez v29, :cond_9

    .line 1192
    mul-int v29, v10, v24

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v29, v20, v29

    if-nez v29, :cond_b

    .line 1193
    sub-float v15, v21, v20

    .line 1194
    .restart local v15       #over:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v29, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v30, v15, v30

    invoke-virtual/range {v29 .. v30}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v12

    .line 1196
    .end local v15           #over:F
    :cond_b
    move/from16 v21, v20

    goto/16 :goto_2

    .line 1211
    .end local v5           #activePointerIndex:I
    .end local v7           #deltaX:F
    .end local v10           #lastItemIndex:I
    .end local v11           #leftBound:F
    .end local v14           #oldScrollX:F
    .end local v20           #rightBound:F
    .end local v21           #scrollX:F
    .end local v23           #width:I
    .end local v24           #widthWithMargin:I
    .end local v25           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    .line 1213
    .local v22, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v29, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1214
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v9, v0

    .line 1216
    .local v9, initialVelocity:I
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1217
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    move/from16 v30, v0

    add-int v24, v29, v30

    .line 1218
    .restart local v24       #widthWithMargin:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v21

    .line 1219
    .local v21, scrollX:I
    div-int v6, v21, v24

    .line 1220
    .local v6, currentPage:I
    if-lez v9, :cond_c

    move v13, v6

    .line 1221
    .local v13, nextPage:I
    :goto_3
    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v13, v1, v2, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 1223
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1224
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v30

    or-int v12, v29, v30

    .line 1226
    goto/16 :goto_1

    .line 1220
    .end local v13           #nextPage:I
    :cond_c
    add-int/lit8 v13, v6, 0x1

    goto :goto_3

    .line 1229
    .end local v6           #currentPage:I
    .end local v9           #initialVelocity:I
    .end local v21           #scrollX:I
    .end local v22           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v24           #widthWithMargin:I
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 1230
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v29, v0

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1231
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1232
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v30

    or-int v12, v29, v30

    goto/16 :goto_1

    .line 1237
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 1238
    .local v8, index:I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 1239
    .restart local v25       #x:F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1240
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 1244
    .end local v8           #index:I
    .end local v25           #x:F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1245
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1591
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 1592
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1595
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1599
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1600
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1603
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 608
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v10, :cond_1

    .line 709
    :cond_0
    return-void

    .line 616
    :cond_1
    iget-boolean v10, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    if-nez v10, :cond_0

    .line 624
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 628
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v10, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 630
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 631
    .local v8, pageLimit:I
    const/4 v10, 0x0

    iget v13, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 632
    .local v9, startPos:I
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v10}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 633
    .local v0, N:I
    add-int/lit8 v10, v0, -0x1

    iget v13, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 638
    .local v4, endPos:I
    const/4 v7, -0x1

    .line 639
    .local v7, lastPos:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 640
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 641
    .local v6, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v10, v9, :cond_2

    iget v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v10, v4, :cond_4

    :cond_2
    iget-boolean v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_4

    .line 643
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 644
    add-int/lit8 v5, v5, -0x1

    .line 645
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v13, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v14, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, p0, v13, v14}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 661
    :cond_3
    iget v7, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 639
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 646
    :cond_4
    if-ge v7, v4, :cond_3

    iget v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v10, v9, :cond_3

    .line 650
    add-int/lit8 v7, v7, 0x1

    .line 651
    if-ge v7, v9, :cond_5

    .line 652
    move v7, v9

    .line 654
    :cond_5
    :goto_1
    if-gt v7, v4, :cond_3

    iget v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v7, v10, :cond_3

    .line 656
    invoke-virtual {p0, v7, v5}, Landroid/support/v4/view/ViewPager;->addNewItem(II)V

    .line 657
    add-int/lit8 v7, v7, 0x1

    .line 658
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 665
    .end local v6           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_6
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v7, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 666
    :goto_2
    if-ge v7, v4, :cond_9

    .line 667
    add-int/lit8 v7, v7, 0x1

    .line 668
    if-le v7, v9, :cond_8

    .line 669
    :goto_3
    if-gt v7, v4, :cond_9

    .line 671
    invoke-virtual {p0, v7, v12}, Landroid/support/v4/view/ViewPager;->addNewItem(II)V

    .line 672
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move v7, v12

    .line 665
    goto :goto_2

    :cond_8
    move v7, v9

    .line 668
    goto :goto_3

    .line 683
    :cond_9
    const/4 v2, 0x0

    .line 684
    .local v2, curItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v5, 0x0

    :goto_4
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 685
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v12, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v10, v12, :cond_d

    .line 686
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 690
    .restart local v2       #curItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_a
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v13, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eqz v2, :cond_e

    iget-object v10, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v12, p0, v13, v10}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 692
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v10, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 694
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 695
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 696
    .local v3, currentFocused:Landroid/view/View;
    if-eqz v3, :cond_f

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 697
    .restart local v6       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_6
    if-eqz v6, :cond_b

    iget v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v11, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v10, v11, :cond_0

    .line 698
    :cond_b
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 699
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 700
    .local v1, child:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 701
    if-eqz v6, :cond_c

    iget v10, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v11, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v10, v11, :cond_c

    .line 702
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/view/View;->requestFocus(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 698
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 684
    .end local v1           #child:Landroid/view/View;
    .end local v3           #currentFocused:Landroid/view/View;
    .end local v6           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    move-object v10, v11

    .line 690
    goto :goto_5

    .restart local v3       #currentFocused:Landroid/view/View;
    :cond_f
    move-object v6, v11

    .line 696
    goto :goto_6
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 7
    .parameter "adapter"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 267
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, v6}, Landroid/support/v4/view/PagerAdapter;->setDataSetObserver(Landroid/support/v4/view/PagerAdapter$DataSetObserver;)V

    .line 269
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 270
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 271
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 272
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 275
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 276
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 277
    iput v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 278
    invoke-virtual {p0, v5, v5}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 281
    .end local v0           #i:I
    :cond_1
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 283
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_3

    .line 284
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/PagerAdapter$DataSetObserver;

    if-nez v2, :cond_2

    .line 285
    new-instance v2, Landroid/support/v4/view/ViewPager$DataSetObserver;

    invoke-direct {v2, p0, v6}, Landroid/support/v4/view/ViewPager$DataSetObserver;-><init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/PagerAdapter$DataSetObserver;

    .line 287
    :cond_2
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/PagerAdapter$DataSetObserver;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/PagerAdapter;->setDataSetObserver(Landroid/support/v4/view/PagerAdapter$DataSetObserver;)V

    .line 288
    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 289
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    if-ltz v2, :cond_4

    .line 290
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 291
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v5, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 292
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 293
    iput-object v6, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 294
    iput-object v6, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 299
    :cond_3
    :goto_1
    return-void

    .line 296
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 313
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 314
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 315
    return-void

    :cond_0
    move v0, v1

    .line 314
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 325
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 326
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 334
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 7
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"
    .parameter "velocity"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 337
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    .line 338
    :cond_0
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    if-nez p3, :cond_3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 342
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 345
    :cond_3
    if-gez p1, :cond_6

    .line 346
    const/4 p1, 0x0

    .line 350
    :cond_4
    :goto_1
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 351
    .local v3, pageLimit:I
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v4, v3

    if-gt p1, v4, :cond_5

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v4, v3

    if-ge p1, v4, :cond_7

    .line 355
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 356
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    iput-boolean v1, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 347
    .end local v2           #i:I
    .end local v3           #pageLimit:I
    :cond_6
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_4

    .line 348
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 p1, v4, -0x1

    goto :goto_1

    .line 359
    .restart local v3       #pageLimit:I
    :cond_7
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v4, p1, :cond_8

    .line 360
    .local v1, dispatchSelected:Z
    :goto_3
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 361
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 362
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v4

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v4, v6

    mul-int v0, v4, p1

    .line 363
    .local v0, destX:I
    if-eqz p2, :cond_9

    .line 364
    invoke-virtual {p0, v0, v5, p4}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 365
    if-eqz v1, :cond_1

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_1

    .line 366
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .end local v0           #destX:I
    .end local v1           #dispatchSelected:Z
    :cond_8
    move v1, v5

    .line 359
    goto :goto_3

    .line 369
    .restart local v0       #destX:I
    .restart local v1       #dispatchSelected:Z
    :cond_9
    if-eqz v1, :cond_a

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_a

    .line 370
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 372
    :cond_a
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 373
    invoke-virtual {p0, v0, v5}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .parameter "limit"

    .prologue
    const/4 v3, 0x1

    .line 410
    if-ge p1, v3, :cond_0

    .line 411
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 p1, 0x1

    .line 415
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 416
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 417
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 419
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 378
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 379
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .parameter "marginPixels"

    .prologue
    .line 430
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 431
    .local v0, oldMargin:I
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 433
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 434
    .local v1, width:I
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 436
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 437
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 454
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 455
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 456
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 457
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 458
    return-void

    .line 456
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method smoothScrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 501
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "velocity"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 511
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 513
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 543
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 517
    .local v1, sx:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    .line 518
    .local v2, sy:I
    sub-int v3, p1, v1

    .line 519
    .local v3, dx:I
    sub-int v4, p2, v2

    .line 520
    .local v4, dy:I
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 521
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 522
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_0

    .line 526
    :cond_1
    invoke-direct {p0, v8}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 527
    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mScrolling:Z

    .line 528
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 530
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v6, v0, v7

    .line 531
    .local v6, pageDelta:F
    const/high16 v0, 0x42c8

    mul-float/2addr v0, v6

    float-to-int v5, v0

    .line 533
    .local v5, duration:I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 534
    if-lez p3, :cond_2

    .line 535
    int-to-float v0, v5

    int-to-float v7, v5

    int-to-float v8, p3

    iget v9, p0, Landroid/support/v4/view/ViewPager;->mBaseLineFlingVelocity:F

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mFlingVelocityInfluence:F

    mul-float/2addr v7, v8

    add-float/2addr v0, v7

    float-to-int v5, v0

    .line 539
    :goto_1
    const/16 v0, 0x258

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 541
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 542
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    goto :goto_0

    .line 537
    :cond_2
    add-int/lit8 v5, v5, 0x64

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 471
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
