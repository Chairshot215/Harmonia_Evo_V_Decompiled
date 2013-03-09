.class public Lcom/android/camera/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/SlidingDrawer$1;,
        Lcom/android/camera/widget/SlidingDrawer$SlidingHandler;,
        Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;,
        Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;,
        Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;,
        Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;,
        Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ACTION_UP:I = 0x7d0

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlidingDrawer"

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

.field private mHandle:Landroid/widget/ImageView;

.field private mHandleClosedDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleOpeningDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleSlideOpeningDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mIsHandleOpened:Z

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

.field private mOnDrawerCloseListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final mRect:Landroid/graphics/Rect;

.field private mSlideHandle:Z

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mSlideHandle:Z

    iput-boolean v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    iput-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleClosedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpeningDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpeningDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mRect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    new-instance v5, Lcom/android/camera/widget/SlidingDrawer$SlidingHandler;

    invoke-direct {v5, p0, v9}, Lcom/android/camera/widget/SlidingDrawer$SlidingHandler;-><init>(Lcom/android/camera/widget/SlidingDrawer;Lcom/android/camera/widget/SlidingDrawer$1;)V

    iput-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    sget-object v5, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mAllowSingleTap:Z

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimateOnClick:Z

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-nez v3, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-nez v1, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    if-ne v3, v1, :cond_3

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    iput v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleId:I

    iput v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40c0

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mTapThreshold:I

    const/high16 v5, 0x42c8

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumTapVelocity:I

    const/high16 v5, 0x4316

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    const/high16 v5, 0x44fa

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    const/high16 v5, 0x447a

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/widget/SlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/widget/SlidingDrawer;)Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/SlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/widget/SlidingDrawer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/widget/SlidingDrawer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->doActionUp()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lcom/android/camera/widget/SlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->performFling(IFZ)V

    return-void
.end method

.method private animateOpen(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lcom/android/camera/widget/SlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->performFling(IFZ)V

    return-void
.end method

.method private closeDrawer()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/android/camera/widget/SlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleClosedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mSlideHandle:Z

    iput-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerCloseListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerCloseListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    :cond_0
    return-void
.end method

.method private doActionUp()V
    .locals 13

    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v4, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    iget-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_6

    cmpg-float v9, v7, v10

    if-gez v9, :cond_5

    :goto_0
    cmpg-float v9, v6, v10

    if-gez v9, :cond_0

    neg-float v6, v6

    :cond_0
    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v6, v9

    if-lez v9, :cond_1

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v6, v9

    :cond_1
    :goto_1
    float-to-double v9, v6

    float-to-double v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v3, v9

    if-eqz v1, :cond_2

    neg-float v3, v3

    :cond_2
    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_12

    if-eqz v5, :cond_9

    iget-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v2, v9, :cond_4

    :cond_3
    iget-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_b

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-le v2, v9, :cond_b

    :cond_4
    iget-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mAllowSingleTap:Z

    if-eqz v9, :cond_f

    invoke-virtual {p0, v8}, Lcom/android/camera/widget/SlidingDrawer;->playSoundEffect(I)V

    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_d

    if-eqz v5, :cond_c

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/camera/widget/SlidingDrawer;->animateClose(I)V

    :goto_3
    return-void

    :cond_5
    move v1, v8

    goto :goto_0

    :cond_6
    cmpg-float v9, v6, v10

    if-gez v9, :cond_8

    :goto_4
    cmpg-float v9, v7, v10

    if-gez v9, :cond_7

    neg-float v7, v7

    :cond_7
    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_1

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v9

    goto :goto_1

    :cond_8
    move v1, v8

    goto :goto_4

    :cond_9
    iget-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_a

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v0, v9, :cond_4

    :cond_a
    iget-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_b

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mRight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-gt v0, v9, :cond_4

    :cond_b
    if-eqz v5, :cond_11

    :goto_5
    invoke-direct {p0, v2, v3, v8}, Lcom/android/camera/widget/SlidingDrawer;->performFling(IFZ)V

    goto :goto_3

    :cond_c
    move v2, v0

    goto :goto_2

    :cond_d
    if-eqz v5, :cond_e

    :goto_6
    invoke-direct {p0, v2}, Lcom/android/camera/widget/SlidingDrawer;->animateOpen(I)V

    goto :goto_3

    :cond_e
    move v2, v0

    goto :goto_6

    :cond_f
    if-eqz v5, :cond_10

    :goto_7
    invoke-direct {p0, v2, v3, v8}, Lcom/android/camera/widget/SlidingDrawer;->performFling(IFZ)V

    goto :goto_3

    :cond_10
    move v2, v0

    goto :goto_7

    :cond_11
    move v2, v0

    goto :goto_5

    :cond_12
    if-eqz v5, :cond_13

    :goto_8
    invoke-direct {p0, v2, v3, v8}, Lcom/android/camera/widget/SlidingDrawer;->performFling(IFZ)V

    goto :goto_3

    :cond_13
    move v2, v0

    goto :goto_8
.end method

.method private doAnimation()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->incrementAnimation()V

    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    iget v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getHeight()I

    move-result v2

    :goto_0
    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_2

    iput-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->closeDrawer()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iput-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->openDrawer()V

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/camera/HTCCamera;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-ne p0, v2, :cond_3

    const-string v2, "open_menu"

    const-string v3, "complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->atsLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "pref_set_white_balance"

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "open_white_balance"

    const-string v3, "complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->atsLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/camera/widget/SlidingDrawer;->moveHandle(I)V

    iget-wide v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mCurrentAnimationTime:J

    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    iget v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedAcceleration:F

    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    iput-wide v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationLastTime:J

    return-void
.end method

.method private moveHandle(I)V
    .locals 13

    const/4 v11, 0x1

    const/16 v10, -0x2711

    const/16 v9, -0x2712

    const/4 v12, 0x0

    iget-object v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_a

    if-ne p1, v10, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v8

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    :goto_1
    return-void

    :cond_0
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v9, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v8

    if-nez v8, :cond_2

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v8, v9

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    goto :goto_1

    :cond_2
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v8, v9

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    sub-int v1, p1, v7

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v8, :cond_6

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int v1, v8, v7

    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_4
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mSlideHandle:Z

    if-eqz v8, :cond_5

    const/4 v6, 0x0

    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_8

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    add-int v6, v8, v9

    :goto_5
    if-le p1, v6, :cond_9

    iput-boolean v12, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpeningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_6
    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v1

    iget v10, v2, Landroid/graphics/Rect;->right:I

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v1

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->union(IIII)V

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v1

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getWidth()I

    move-result v9

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    iget-object v11, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v5, v12, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v5}, Lcom/android/camera/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_6
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    if-le v1, v8, :cond_4

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v8, v9

    sub-int v1, v8, v7

    goto :goto_3

    :cond_7
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getHeight()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    goto :goto_5

    :cond_9
    iput-boolean v11, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_a
    if-ne p1, v10, :cond_b

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_1

    :cond_b
    if-ne p1, v9, :cond_c

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mRight:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v8, v9

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    sub-int v0, p1, v4

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v8, :cond_f

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int v0, v8, v4

    :cond_d
    :goto_7
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mSlideHandle:Z

    if-eqz v8, :cond_e

    const/4 v6, 0x0

    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_10

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    add-int v6, v8, v9

    :goto_8
    if-le p1, v6, :cond_11

    iput-boolean v12, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpeningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    :goto_9
    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v0

    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v0

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->union(IIII)V

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget-object v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getHeight()I

    move-result v10

    invoke-virtual {v5, v8, v12, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v5}, Lcom/android/camera/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_f
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mRight:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    if-le v0, v8, :cond_d

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mRight:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v8, v9

    sub-int v0, v8, v4

    goto :goto_7

    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getWidth()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    goto :goto_8

    :cond_11
    iput-boolean v11, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method private openDrawer()V
    .locals 2

    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/android/camera/widget/SlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerOpenListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerOpenListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    :cond_0
    return-void
.end method

.method private performFling(IFZ)V
    .locals 6

    const/16 v5, 0x3e8

    const/4 v4, 0x0

    int-to-float v2, p1

    iput v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    iput p2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    iget-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_4

    if-nez p3, :cond_0

    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    :goto_0
    add-int/2addr v2, v3

    if-le p1, v2, :cond_3

    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    :cond_0
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    iput v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->stopTracking()V

    return-void

    :cond_2
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    iput v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    :cond_4
    if-nez p3, :cond_7

    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getHeight()I

    move-result v2

    :goto_2
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_7

    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    :cond_5
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    iput v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    iput v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1
.end method

.method private prepareContent()V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x4000

    iget-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_2

    iget v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

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
    iget-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    iget v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

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

    iput-boolean v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedAcceleration:F

    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/camera/widget/SlidingDrawer;->moveHandle(I)V

    iput-boolean v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    iget-object v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mCurrentAnimationTime:J

    iput-boolean v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    :goto_2
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_1

    :cond_2
    iget-boolean v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    iput-boolean v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    iget-object v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/widget/SlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    iput-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->prepareContent()V

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/widget/SlidingDrawer;->animateClose(I)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->prepareContent()V

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/widget/SlidingDrawer;->animateOpen(I)V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->animateOpen()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->closeDrawer()V

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getDrawingTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/android/camera/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget-boolean v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_6

    :cond_0
    iget-object v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

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

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    iget v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_4
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/camera/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    :cond_6
    iget-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/camera/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getHandleArea()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

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

    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mLocked:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    iget v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;-><init>(Lcom/android/camera/widget/SlidingDrawer;Lcom/android/camera/widget/SlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-boolean v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mLocked:Z

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    if-nez v10, :cond_2

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

    float-to-int v10, v6

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    float-to-int v11, v7

    iget v12, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-interface {v9, p1, v10, v11}, Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;->onCapture(Landroid/view/MotionEvent;II)Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    iget-object v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

    float-to-int v11, v6

    iget v12, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    float-to-int v12, v7

    iget v13, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    invoke-interface {v10, p1, v11, v12}, Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;->onCapture(Landroid/view/MotionEvent;II)Z

    move-result v4

    :cond_3
    if-eq v4, v9, :cond_0

    iput-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    iget-boolean v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v10, :cond_5

    iput-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->prepareContent()V

    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v8}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_4
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    float-to-int v8, v7

    sub-int/2addr v8, v5

    iput v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTouchDelta:I

    invoke-direct {p0, v5}, Lcom/android/camera/widget/SlidingDrawer;->prepareTracking(I)V

    :goto_2
    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mSlideHandle:Z

    move v8, v9

    goto :goto_0

    :cond_5
    iput-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpeningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    float-to-int v8, v6

    sub-int/2addr v8, v3

    iput v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTouchDelta:I

    invoke-direct {p0, v3}, Lcom/android/camera/widget/SlidingDrawer;->prepareTracking(I)V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v7, p4, p2

    sub-int v6, p5, p3

    iget-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_0

    :cond_1
    sub-int v8, v6, v0

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_1

    :cond_2
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    :goto_3
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

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

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

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
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    iget-boolean v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    iget-object v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/android/camera/widget/SlidingDrawer;->setMeasuredDimension(II)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    iget-object v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/16 v5, 0x7d0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mLocked:Z

    if-eqz v1, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    move v1, v3

    :goto_2
    move v3, v1

    goto :goto_0

    :pswitch_0
    const-string v1, "SlidingDrawer"

    const-string v4, "not enter this state due to the event was intercepted by onInterceptTouchEvent()"

    invoke-static {v1, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    :goto_3
    float-to-int v1, v1

    iget v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mTouchDelta:I

    sub-int/2addr v1, v4

    invoke-direct {p0, v1}, Lcom/android/camera/widget/SlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    goto :goto_3

    :pswitch_2
    iput-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mSlideHandle:Z

    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpeningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public open()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->openDrawer()V

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->requestLayout()V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public setHandleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleClosedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpeningDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpeningDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setHandleOpened()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setHandleSlideOpened()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOnCaptureListener(Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerCloseListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;

    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerOpenListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;

    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->openDrawer()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->requestLayout()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mLocked:Z

    return-void
.end method
