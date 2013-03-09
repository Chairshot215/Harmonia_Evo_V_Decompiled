.class Lcom/htc/widget/CarouselSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "CarouselSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/CarouselSlidingDrawer$1;,
        Lcom/htc/widget/CarouselSlidingDrawer$SlidingHandler;,
        Lcom/htc/widget/CarouselSlidingDrawer$DrawerToggler;,
        Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;,
        Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;,
        Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;,
        Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CarouselSlidingDrawer"

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;

.field private mOnEditModeDrawerStateListener:Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

.field private final mRoundedHandlerOffset:I

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/CarouselSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v10, 0x3f00

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    new-instance v6, Lcom/htc/widget/CarouselSlidingDrawer$SlidingHandler;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lcom/htc/widget/CarouselSlidingDrawer$SlidingHandler;-><init>(Lcom/htc/widget/CarouselSlidingDrawer;Lcom/htc/widget/CarouselSlidingDrawer$1;)V

    iput-object v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandler:Landroid/os/Handler;

    sget-object v6, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v7, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVertical:Z

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottomOffset:I

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAllowSingleTap:Z

    const/4 v6, 0x6

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimateOnClick:Z

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-nez v3, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move v6, v8

    goto :goto_0

    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-nez v1, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The content attribute is required and must refer to a valid child."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    if-ne v3, v1, :cond_3

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The content and handle attributes must refer to different children."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    iput v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleId:I

    iput v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContentId:I

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40c0

    mul-float/2addr v6, v2

    add-float/2addr v6, v10

    float-to-int v6, v6

    iput v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTapThreshold:I

    const/high16 v6, 0x42c8

    mul-float/2addr v6, v2

    add-float/2addr v6, v10

    float-to-int v6, v6

    iput v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumTapVelocity:I

    const/high16 v6, 0x4316

    mul-float/2addr v6, v2

    add-float/2addr v6, v10

    float-to-int v6, v6

    iput v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumMinorVelocity:I

    const/high16 v6, 0x4348

    mul-float/2addr v6, v2

    add-float/2addr v6, v10

    float-to-int v6, v6

    iput v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumMajorVelocity:I

    const/high16 v6, 0x44fa

    mul-float/2addr v6, v2

    add-float/2addr v6, v10

    float-to-int v6, v6

    iput v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumAcceleration:I

    const/high16 v6, 0x447a

    mul-float/2addr v6, v2

    add-float/2addr v6, v10

    float-to-int v6, v6

    iput v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v8}, Lcom/htc/widget/CarouselSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x205009e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x205011b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mRoundedHandlerOffset:I

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/CarouselSlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/CarouselSlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/CarouselSlidingDrawer;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselSlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->performFling(IFZ)V

    return-void
.end method

.method private animateOpen(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselSlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->performFling(IFZ)V

    return-void
.end method

.method private clipIgnoreArea(Landroid/graphics/Canvas;)V
    .locals 6

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->getHitRect(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20500b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method private closeDrawer()V
    .locals 2

    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselSlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerCloseListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerCloseListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    invoke-interface {v0}, Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;->onDrawerCompleteClose()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->incrementAnimation()V

    iget v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    iput-boolean v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->closeDrawer()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iput-boolean v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->openDrawer()V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselSlidingDrawer;->moveHandle(I)V

    iget-wide v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mCurrentAnimationTime:J

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    iget v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimationPosition:F

    iget v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedVelocity:F

    iget v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedAcceleration:F

    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimationPosition:F

    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedVelocity:F

    iput-wide v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimationLastTime:J

    return-void
.end method

.method private moveHandle(I)V
    .locals 12

    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    iget-object v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    iget-boolean v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_4

    if-ne p1, v9, :cond_0

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->invalidate()V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v8, :cond_1

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v1, p1, v6

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_3

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v5}, Lcom/htc/widget/CarouselSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_2

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_1

    :cond_4
    if-ne p1, v9, :cond_5

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    :cond_5
    if-ne p1, v8, :cond_6

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v0, p1, v4

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_8

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    :cond_7
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v5}, Lcom/htc/widget/CarouselSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_8
    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_7

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_2
.end method

.method private openDrawer()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    invoke-interface {v0}, Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;->onDrawerAboutToOpen()V

    :cond_0
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselSlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 6

    const/16 v5, 0x3e8

    const/4 v4, 0x0

    int-to-float v2, p1

    iput v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimationPosition:F

    iput p2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedVelocity:F

    iget-boolean v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_4

    if-nez p3, :cond_0

    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    iget v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleHeight:I

    :goto_0
    add-int/2addr v2, v3

    if-le p1, v2, :cond_3

    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    :cond_0
    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    iput v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedVelocity:F

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mCurrentAnimationTime:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimating:Z

    iget-object v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->stopTracking()V

    return-void

    :cond_2
    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    iput v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    :cond_4
    if-nez p3, :cond_7

    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    iget-boolean v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->getHeight()I

    move-result v2

    :goto_2
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_7

    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    :cond_5
    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    iput v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    iput v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1
.end method

.method private prepareContent()V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x4000

    iget-boolean v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_2

    iget v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleHeight:I

    iget v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottom:I

    iget v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mRoundedHandlerOffset:I

    add-int v3, v5, v6

    iget v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mRight:I

    iget v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    iget v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mRoundedHandlerOffset:I

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mRight:I

    iget v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottom:I

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTop:I

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    iget v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8

    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTracking:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-boolean v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedAcceleration:F

    iget v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimatedVelocity:F

    iget v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimationPosition:F

    iget v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/htc/widget/CarouselSlidingDrawer;->moveHandle(I)V

    iput-boolean v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimating:Z

    iget-object v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mCurrentAnimationTime:J

    iput-boolean v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimating:Z

    :goto_2
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_1

    :cond_2
    iget-boolean v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    iput-boolean v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimating:Z

    iget-object v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselSlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTracking:Z

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerScrollListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerScrollListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->prepareContent()V

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerScrollListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->animateClose(I)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->prepareContent()V

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerScrollListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->animateOpen(I)V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->sendAccessibilityEvent(I)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->animateOpen()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->closeDrawer()V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->getDrawingTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    iget-boolean v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVertical:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselSlidingDrawer;->clipIgnoreArea(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/htc/widget/CarouselSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget-boolean v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_6

    :cond_0
    iget-object v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v4, :cond_5

    move v6, v5

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_4
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/htc/widget/CarouselSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    :cond_6
    iget-boolean v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/htc/widget/CarouselSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mLocked:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/widget/CarouselSkinUtil;->getDrawerBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselSlidingDrawer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    iget v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/htc/widget/CarouselSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/CarouselSlidingDrawer$DrawerToggler;-><init>(Lcom/htc/widget/CarouselSlidingDrawer;Lcom/htc/widget/CarouselSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mRoundedHandlerOffset:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mLocked:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v6, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTracking:Z

    if-nez v6, :cond_2

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    iget-boolean v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v7, p4, p2

    sub-int v6, p5, p3

    iget-object v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    iget-boolean v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    iget-boolean v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v2, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    iget v10, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mRoundedHandlerOffset:I

    sub-int/2addr v9, v10

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    :cond_1
    sub-int v8, v6, v0

    iget v9, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_1

    :cond_2
    iget-boolean v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    :goto_3
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    iget v10, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_3
    sub-int v8, v7, v3

    iget v9, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mBottomOffset:I

    add-int v1, v8, v9

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 10

    const/high16 v9, 0x4000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/CarouselSlidingDrawer;->measureChild(Landroid/view/View;II)V

    iget-boolean v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mRoundedHandlerOffset:I

    add-int v1, v7, v8

    iget-object v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/htc/widget/CarouselSlidingDrawer;->setMeasuredDimension(II)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    iget-object v7, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mLocked:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v5, v2

    float-to-int v6, v3

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mTracking:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mAnimating:Z

    if-nez v5, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public open()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->openDrawer()V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->requestLayout()V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselSlidingDrawer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerCloseListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;

    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;

    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnDrawerScrollListener:Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;

    return-void
.end method

.method public setOnEditModeDrawerStateListener(Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mOnEditModeDrawerStateListener:Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->openDrawer()V

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->requestLayout()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/CarouselSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselSlidingDrawer;->mLocked:Z

    return-void
.end method
