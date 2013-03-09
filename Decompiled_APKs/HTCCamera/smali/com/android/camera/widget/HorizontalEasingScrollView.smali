.class public Lcom/android/camera/widget/HorizontalEasingScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalEasingScrollView.java"

# interfaces
.implements Lcom/android/camera/widget/ScrollWheelScroller$FlingStateListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DEBUG:Z = false

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field public static final PIX_SCROLL_FAST:I = 0x7

.field public static final PIX_SCROLL_MEDIUM:I = 0xf

.field public static final PIX_SCROLL_SLOW:I = 0x32

.field public static final SCROLL_STATE_DRAGGING:I = 0xc9

.field public static final SCROLL_STATE_FLINGING:I = 0xca

.field public static final SCROLL_STATE_IDLE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "HorizontalEasingScrollView"


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mDefaultPixScrollSpeed:I

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnScrollListner:Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;

.field private mPhysics:Lcom/htc/widget/EaseOutCubic;

.field private mScrollState:I

.field private mScrollViewMovedFocus:Z

.field protected mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v1}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPhysics:Lcom/htc/widget/EaseOutCubic;

    const/4 v1, 0x7

    iput v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mDefaultPixScrollSpeed:I

    iput-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mOnScrollListner:Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;

    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollState:I

    iput-boolean v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsLayoutDirty:Z

    iput-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mChildToScrollTo:Landroid/view/View;

    iput-boolean v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    iput-boolean v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mSmoothScrollingEnabled:Z

    invoke-direct {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->initScrollView()V

    sget-object v1, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->setFillViewport(Z)V

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

.method private doScrollX(I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->smoothScrollBy(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getFocusables(I)Ljava/util/ArrayList;

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

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    :goto_1
    if-nez v1, :cond_2

    move-object v1, v5

    move v3, v7

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v6, 0x1

    :goto_3
    if-eqz v3, :cond_6

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    move-object v1, v5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    move-object v1, v5

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_0

    move-object v1, v5

    goto :goto_2

    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    add-int v1, p2, v0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    :goto_0
    return-object p3

    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    new-instance v1, Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/widget/ScrollWheelScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->setFocusable(Z)V

    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->setDescendantFocusability(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mMaximumVelocity:I

    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

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

    invoke-direct {p0, v0, p2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v0

    add-int v1, v0, v6

    const/16 v9, 0x11

    if-ne p1, v9, :cond_2

    move v3, v7

    :goto_0
    invoke-direct {p0, v3, p2, p3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, p0

    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iput-boolean v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollViewMovedFocus:Z

    iput-boolean v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollViewMovedFocus:Z

    :cond_1
    return v4

    :cond_2
    move v3, v8

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->doScrollX(I)V

    goto :goto_1

    :cond_4
    sub-int v2, p3, v1

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollBy(II)V

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method

.method private updateScrollState(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xc8

    iget-boolean v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_2

    const/16 v0, 0xc9

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollState:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollState:I

    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mOnScrollListner:Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mOnScrollListner:Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;

    invoke-interface {v1, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;->onScrollStateChanged(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v1}, Lcom/android/camera/widget/ScrollWheelScroller;->isFlinging()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xca

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11

    const/16 v10, 0x42

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getMaxScrollAmount()I

    move-result v3

    if-eqz v4, :cond_3

    invoke-direct {p0, v4, v3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/camera/widget/HorizontalEasingScrollView;->doScrollX(I)V

    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getDescendantFocusability()I

    move-result v2

    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->requestFocus()Z

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->setDescendantFocusability(I)V

    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    :cond_3
    move v6, v3

    const/16 v8, 0x11

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v6

    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->doScrollX(I)V

    goto :goto_0

    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

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

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v5}, Lcom/android/camera/widget/ScrollWheelScroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v5}, Lcom/android/camera/widget/ScrollWheelScroller;->getCurrX()I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v5}, Lcom/android/camera/widget/ScrollWheelScroller;->getCurrY()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/android/camera/widget/HorizontalEasingScrollView;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/camera/widget/HorizontalEasingScrollView;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    :goto_0
    iget v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    if-eq v2, v5, :cond_1

    :cond_0
    iget v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v1, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->onScrollChanged(IIII)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->postInvalidate()V

    :cond_2
    return-void

    :cond_3
    iput v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    iput v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    goto :goto_0
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v7

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v3

    add-int v4, v3, v6

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    add-int/2addr v3, v1

    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_3

    sub-int/2addr v4, v1

    :cond_3
    const/4 v5, 0x0

    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4

    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v0, v2, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_1

    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v3, 0x0

    const/16 v4, 0x42

    const/16 v5, 0x11

    iget-object v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/camera/widget/HorizontalEasingScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/camera/widget/HorizontalEasingScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14

    const/4 v13, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingLeft:I

    sub-int v12, v0, v1

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    sub-int v6, v11, v12

    move v3, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/widget/ScrollWheelScroller;->fling(IIIIIIII)V

    if-lez p1, :cond_3

    move v9, v13

    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v0}, Lcom/android/camera/widget/ScrollWheelScroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_0

    move-object v10, p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v10, v0, :cond_1

    if-eqz v9, :cond_4

    const/16 v0, 0x42

    :goto_1
    invoke-virtual {v10, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v13, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollViewMovedFocus:Z

    iput-boolean v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollViewMovedFocus:Z

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v0}, Lcom/android/camera/widget/ScrollWheelScroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->awakenScrollBars(I)Z

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->invalidate()V

    :cond_2
    return-void

    :cond_3
    move v9, v4

    goto :goto_0

    :cond_4
    const/16 v0, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6

    const/4 v4, 0x0

    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    :cond_0
    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mRight:I

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    if-ge v2, v0, :cond_1

    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildMeasureSpec(III)I

    move-result v0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildMeasureSpec(III)I

    move-result v0

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onFlingStateChanged(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollerStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->updateScrollState(Ljava/lang/String;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsLayoutDirty:Z

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mChildToScrollTo:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollTo(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingTop:I

    iget v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildMeasureSpec(III)I

    move-result v1

    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    sub-int/2addr v4, v6

    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const/16 p1, 0x42

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

    const/16 p1, 0x11

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mRight:I

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLeft:I

    sub-int v1, v3, v4

    invoke-direct {p0, v0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->canScroll()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    move v8, v9

    goto :goto_0

    :pswitch_0
    iget-boolean v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    iget-object v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v10}, Lcom/android/camera/widget/ScrollWheelScroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_4

    move v8, v9

    :cond_4
    iput-boolean v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    iget-boolean v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    if-eq v4, v8, :cond_5

    const-string v8, "onInterceptTouchEvent action DOWN"

    invoke-direct {p0, v8}, Lcom/android/camera/widget/HorizontalEasingScrollView;->updateScrollState(Ljava/lang/String;)V

    :cond_5
    iget-object v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v8}, Lcom/android/camera/widget/ScrollWheelScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v8}, Lcom/android/camera/widget/ScrollWheelScroller;->abortAnimation()V

    :cond_6
    iput v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLastMotionX:F

    goto :goto_1

    :pswitch_1
    iget v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLastMotionX:F

    sub-float/2addr v10, v7

    float-to-int v2, v10

    iput v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLastMotionX:F

    if-eqz v2, :cond_7

    iget-boolean v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    if-nez v10, :cond_7

    iput-boolean v9, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    const-string v10, "onInterceptTouchEvent action MOVE"

    invoke-direct {p0, v10}, Lcom/android/camera/widget/HorizontalEasingScrollView;->updateScrollState(Ljava/lang/String;)V

    :cond_7
    if-gez v2, :cond_8

    iget v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    if-lez v10, :cond_3

    invoke-virtual {p0, v2, v8}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollBy(II)V

    goto :goto_1

    :cond_8
    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    sub-int v5, v10, v11

    invoke-virtual {p0, v8}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    iget v11, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    sub-int/2addr v10, v11

    sub-int v1, v10, v5

    if-lez v1, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {p0, v10, v8}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollBy(II)V

    goto :goto_1

    :pswitch_2
    iget-boolean v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    if-eqz v10, :cond_9

    iput-boolean v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    const-string v8, "onInterceptTouchEvent action UP"

    invoke-direct {p0, v8}, Lcom/android/camera/widget/HorizontalEasingScrollView;->updateScrollState(Ljava/lang/String;)V

    :cond_9
    iget-object v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v6, v8, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mMinimumVelocity:I

    if-le v8, v10, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_a

    neg-int v8, v3

    invoke-virtual {p0, v8}, Lcom/android/camera/widget/HorizontalEasingScrollView;->fling(I)V

    :cond_a
    iget-object v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v3

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method protected printState(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, " easing IDLE"

    goto :goto_0

    :pswitch_1
    const-string v0, " easing DRAGGING"

    goto :goto_0

    :pswitch_2
    const-string v0, " easing FLINGING"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_1
    iput-object p2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mChildToScrollTo:Landroid/view/View;

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

    invoke-direct {p0, p2, p3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v1}, Lcom/android/camera/widget/ScrollWheelScroller;->abortAnimation()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->clamp(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->clamp(III)I

    move-result p2

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    if-eq p2, v1, :cond_2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_2
    return-void
.end method

.method public setDefaultPixScrollSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mDefaultPixScrollSpeed:I

    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mOnScrollListner:Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v0, p0}, Lcom/android/camera/widget/ScrollWheelScroller;->setScrollerStateListener(Lcom/android/camera/widget/ScrollWheelScroller$FlingStateListner;)V

    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mDefaultPixScrollSpeed:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->smoothScrollBy(III)V

    return-void
.end method

.method public final smoothScrollBy(III)V
    .locals 9

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLastScroll:J

    sub-long v7, v0, v2

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v0}, Lcom/android/camera/widget/ScrollWheelScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v0}, Lcom/android/camera/widget/ScrollWheelScroller;->abortAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int v5, v3, p3

    iget-object v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPhysics:Lcom/htc/widget/EaseOutCubic;

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/widget/ScrollWheelScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v0}, Lcom/android/camera/widget/ScrollWheelScroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->awakenScrollBars(I)Z

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->invalidate()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLastScroll:J

    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mDefaultPixScrollSpeed:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->smoothScrollTo(III)V

    return-void
.end method

.method public final smoothScrollTo(III)V
    .locals 2

    iget v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->smoothScrollBy(III)V

    return-void
.end method
