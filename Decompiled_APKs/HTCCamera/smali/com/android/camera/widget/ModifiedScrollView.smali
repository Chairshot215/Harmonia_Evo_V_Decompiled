.class public Lcom/android/camera/widget/ModifiedScrollView;
.super Landroid/widget/FrameLayout;
.source "ModifiedScrollView.java"


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mFillViewport:Z

.field protected mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field protected mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScrollViewMovedFocus:Z

.field protected mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/widget/ModifiedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/widget/ModifiedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mChildToScrollTo:Landroid/view/View;

    iput-boolean v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    iput-boolean v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/android/camera/widget/ModifiedScrollView;->initScrollView()V

    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->setFillViewport(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private clamp(III)I
    .locals 1

    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1

    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/widget/ModifiedScrollView;->smoothScrollBy(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/widget/ModifiedScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/camera/widget/ModifiedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    :goto_1
    if-nez v1, :cond_2

    move-object v1, v5

    move v3, v8

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    :goto_3
    if-eqz v3, :cond_6

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    move-object v1, v5

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_7

    move-object v1, v5

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_0

    move-object v1, v5

    goto :goto_2

    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    add-int v2, p2, v1

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    :goto_0
    return-object p3

    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/android/camera/widget/ModifiedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private initScrollView()V
    .locals 3

    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->setFocusable(Z)V

    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->setDescendantFocusability(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mMaximumVelocity:I

    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/widget/ModifiedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/widget/ModifiedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    iget-object v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v1

    add-int v0, v1, v4

    const/16 v9, 0x21

    if-ne p1, v9, :cond_2

    move v6, v7

    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/android/camera/widget/ModifiedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, p0

    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iput-boolean v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollViewMovedFocus:Z

    iput-boolean v8, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollViewMovedFocus:Z

    :cond_1
    return v3

    :cond_2
    move v6, v8

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->doScrollY(I)V

    goto :goto_1

    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/widget/ModifiedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/widget/ModifiedScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/widget/ModifiedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/widget/ModifiedScrollView;->scrollBy(II)V

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/android/camera/widget/ModifiedScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11

    const/16 v10, 0x82

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getMaxScrollAmount()I

    move-result v3

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/android/camera/widget/ModifiedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/android/camera/widget/ModifiedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/camera/widget/ModifiedScrollView;->doScrollY(I)V

    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ModifiedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getDescendantFocusability()I

    move-result v2

    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->requestFocus()Z

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->setDescendantFocusability(I)V

    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    :cond_3
    move v6, v3

    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v6

    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->doScrollY(I)V

    goto :goto_0

    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v9

    add-int v5, v8, v9

    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    sub-int v6, v1, v5

    goto :goto_1

    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method protected canScroll()Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public computeScroll()V
    .locals 7

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/android/camera/widget/ModifiedScrollView;->clamp(III)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/camera/widget/ModifiedScrollView;->clamp(III)I

    move-result v4

    if-ne v3, v1, :cond_0

    if-eq v4, v2, :cond_1

    :cond_0
    iput v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    iput v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/camera/widget/ModifiedScrollView;->onScrollChanged(IIII)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->awakenScrollBars()Z

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->postInvalidate()V

    :cond_2
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v5

    add-int v4, v5, v3

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    add-int/2addr v5, v2

    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    sub-int/2addr v4, v2

    :cond_3
    const/4 v6, 0x0

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v1, v0, v4

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int v0, v2, v3

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/widget/ModifiedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/16 v2, 0x82

    const/16 v1, 0x21

    iget-object v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->fullScroll(I)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->fullScroll(I)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :sswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x3e -> :sswitch_2
        0x52 -> :sswitch_3
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14

    const/4 v13, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int v10, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    sub-int v4, v9, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    if-lez p1, :cond_3

    move v11, v13

    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_0

    move-object v12, p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v12, v0, :cond_1

    if-eqz v11, :cond_4

    const/16 v0, 0x82

    :goto_1
    invoke-virtual {v12, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v13, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollViewMovedFocus:Z

    iput-boolean v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollViewMovedFocus:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->invalidate()V

    :cond_2
    return-void

    :cond_3
    move v11, v3

    goto :goto_0

    :cond_4
    const/16 v0, 0x21

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6

    const/4 v4, 0x0

    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v2

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    :cond_0
    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/camera/widget/ModifiedScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    if-ge v2, v1, :cond_1

    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mBottom:I

    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/android/camera/widget/ModifiedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/android/camera/widget/ModifiedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    iget-boolean v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_0

    :goto_0
    return v5

    :cond_0
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    if-eq v1, v8, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v4, v6

    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTouchSlop:I

    if-le v4, v6, :cond_1

    iput-boolean v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    iput v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    float-to-int v8, v3

    invoke-direct {p0, v7, v8}, Lcom/android/camera/widget/ModifiedScrollView;->inChild(II)Z

    move-result v7

    if-nez v7, :cond_2

    iput-boolean v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    iput-boolean v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    :pswitch_3
    iput-boolean v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    iput v8, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ModifiedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsLayoutDirty:Z

    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/android/camera/widget/ModifiedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ModifiedScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mChildToScrollTo:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->scrollTo(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingLeft:I

    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Lcom/android/camera/widget/ModifiedScrollView;->getChildMeasureSpec(III)I

    move-result v2

    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int/2addr v3, v6

    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const/16 p1, 0x82

    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    :cond_1
    :goto_2
    return v1

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x21

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/widget/ModifiedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/android/camera/widget/ModifiedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    const/4 v6, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    float-to-int v8, v5

    invoke-direct {p0, v7, v8}, Lcom/android/camera/widget/ModifiedScrollView;->inChild(II)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_4
    iput v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    goto :goto_1

    :pswitch_2
    iget-boolean v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    sub-float/2addr v7, v5

    float-to-int v2, v7

    iput v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    invoke-virtual {p0, v6, v2}, Lcom/android/camera/widget/ModifiedScrollView;->scrollBy(II)V

    goto :goto_1

    :pswitch_3
    iget-boolean v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    iget v8, p0, Lcom/android/camera/widget/ModifiedScrollView;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    invoke-virtual {v4, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    float-to-int v3, v7

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/android/camera/widget/ModifiedScrollView;->mMinimumVelocity:I

    if-le v7, v8, :cond_5

    neg-int v7, v3

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->fling(I)V

    :cond_5
    iput v9, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    iput-boolean v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v10, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    :pswitch_4
    iget-boolean v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    iput v9, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    iput-boolean v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v10, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ModifiedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/camera/widget/ModifiedScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/camera/widget/ModifiedScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_1
    iput-object p2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Lcom/android/camera/widget/ModifiedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/camera/widget/ModifiedScrollView;->clamp(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/camera/widget/ModifiedScrollView;->clamp(III)I

    move-result p2

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int v3, v6, v7

    invoke-virtual {p0, v10}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->invalidate()V

    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastScroll:J

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/widget/ModifiedScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2

    iget v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->smoothScrollBy(II)V

    return-void
.end method
