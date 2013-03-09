.class public Lcom/htc/launcher/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/widget/SlidingDrawer$SlidingHandler;,
        Lcom/htc/launcher/widget/SlidingDrawer$DrawerToggler;,
        Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;,
        Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerCloseListener;,
        Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x19

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8

.field private static final tag:Ljava/lang/String; = "SlidingDrawer"


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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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

.field private mOnDrawerCloseListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z

.field private overlapPadding:I

.field public final requestLayout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/launcher/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/high16 v9, 0x3f00

    const/4 v7, 0x0

    .line 202
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 111
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 128
    new-instance v5, Lcom/htc/launcher/widget/SlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/htc/launcher/widget/SlidingDrawer$SlidingHandler;-><init>(Lcom/htc/launcher/widget/SlidingDrawer;Lcom/htc/launcher/widget/SlidingDrawer$1;)V

    iput-object v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 147
    iput v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->overlapPadding:I

    .line 510
    new-instance v5, Lcom/htc/launcher/widget/SlidingDrawer$1;

    invoke-direct {v5, p0}, Lcom/htc/launcher/widget/SlidingDrawer$1;-><init>(Lcom/htc/launcher/widget/SlidingDrawer;)V

    iput-object v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->requestLayout:Ljava/lang/Runnable;

    .line 203
    sget-object v5, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 205
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 206
    .local v4, orientation:I
    if-ne v4, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    .line 207
    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottomOffset:I

    .line 208
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    .line 209
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAllowSingleTap:Z

    .line 210
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimateOnClick:Z

    .line 212
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 213
    .local v3, handleId:I
    if-nez v3, :cond_1

    .line 214
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #handleId:I
    :cond_0
    move v5, v7

    .line 206
    goto :goto_0

    .line 218
    .restart local v3       #handleId:I
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 219
    .local v1, contentId:I
    if-nez v1, :cond_2

    .line 220
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 224
    :cond_2
    if-ne v3, v1, :cond_3

    .line 225
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 229
    :cond_3
    iput v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleId:I

    .line 230
    iput v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContentId:I

    .line 232
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 233
    .local v2, density:F
    const/high16 v5, 0x40c0

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTapThreshold:I

    .line 234
    const/high16 v5, 0x42c8

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumTapVelocity:I

    .line 235
    const/high16 v5, 0x4316

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    .line 236
    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    .line 237
    const/high16 v5, 0x44fa

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 238
    const/high16 v5, 0x447a

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVelocityUnits:I

    .line 240
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    invoke-virtual {p0, v7}, Lcom/htc/launcher/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->overlapPadding:I

    .line 244
    const-string v5, "SlidingDrawer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "overlapPadding ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->overlapPadding:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method static synthetic access$200(Lcom/htc/launcher/widget/SlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/launcher/widget/SlidingDrawer;)Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerCloseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mOnDrawerCloseListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerCloseListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/launcher/widget/SlidingDrawer;)Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerOpenListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerOpenListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/launcher/widget/SlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/launcher/widget/SlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/launcher/widget/SlidingDrawer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/htc/launcher/widget/SlidingDrawer;->prepareTracking(I)V

    .line 539
    iget v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/launcher/widget/SlidingDrawer;->performFling(IFZ)V

    .line 540
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/htc/launcher/widget/SlidingDrawer;->prepareTracking(I)V

    .line 544
    iget v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/launcher/widget/SlidingDrawer;->performFling(IFZ)V

    .line 545
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    .line 888
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/htc/launcher/widget/SlidingDrawer;->moveHandle(I)V

    .line 889
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 892
    iget-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 895
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    .line 898
    new-instance v0, Lcom/htc/launcher/widget/SlidingDrawer$2;

    invoke-direct {v0, p0}, Lcom/htc/launcher/widget/SlidingDrawer$2;-><init>(Lcom/htc/launcher/widget/SlidingDrawer;)V

    invoke-virtual {p0, v0}, Lcom/htc/launcher/widget/SlidingDrawer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x19

    const/4 v3, 0x0

    .line 736
    iget-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 737
    invoke-direct {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->incrementAnimation()V

    .line 738
    iget v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 739
    iput-boolean v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z

    .line 740
    invoke-direct {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->closeDrawer()V

    .line 750
    :cond_0
    :goto_1
    return-void

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    .line 741
    :cond_2
    iget v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 742
    iput-boolean v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z

    .line 743
    invoke-direct {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->openDrawer()V

    goto :goto_1

    .line 745
    :cond_3
    iget v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/htc/launcher/widget/SlidingDrawer;->moveHandle(I)V

    .line 746
    iget-wide v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mCurrentAnimationTime:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 747
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 10

    .prologue
    .line 753
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 754
    .local v1, now:J
    iget-wide v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 755
    .local v4, t:F
    iget v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimationPosition:F

    .line 756
    .local v3, position:F
    iget v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 757
    .local v5, v:F
    iget v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 758
    .local v0, a:F
    float-to-double v6, v4

    const-wide v8, 0x3faeb851eb851eb8L

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 759
    const v4, 0x3d75c28f

    .line 761
    :cond_0
    iget v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedVelocity:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 766
    const/high16 v6, 0x4000

    mul-float/2addr v6, v5

    mul-float/2addr v6, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f80

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimationPosition:F

    .line 771
    :goto_0
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 772
    iput-wide v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 773
    return-void

    .line 769
    :cond_1
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimationPosition:F

    goto :goto_0
.end method

.method private moveHandle(I)V
    .locals 12
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 622
    iget-object v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 624
    .local v3, handle:Landroid/view/View;
    iget-boolean v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_4

    .line 625
    if-ne p1, v9, :cond_0

    .line 626
    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 627
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->invalidate()V

    .line 685
    :goto_0
    return-void

    .line 628
    :cond_0
    if-ne p1, v8, :cond_1

    .line 629
    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 631
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->invalidate()V

    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 634
    .local v6, top:I
    sub-int v1, p1, v6

    .line 635
    .local v1, deltaY:I
    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_3

    .line 636
    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    .line 640
    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 642
    iget-object v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 643
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 645
    .local v5, region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 646
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 648
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 649
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 652
    invoke-virtual {p0, v5}, Lcom/htc/launcher/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 637
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_3
    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_2

    .line 638
    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_1

    .line 655
    .end local v1           #deltaY:I
    .end local v6           #top:I
    :cond_4
    if-ne p1, v9, :cond_5

    .line 656
    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 657
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 658
    :cond_5
    if-ne p1, v8, :cond_6

    .line 659
    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 661
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 663
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 664
    .local v4, left:I
    sub-int v0, p1, v4

    .line 665
    .local v0, deltaX:I
    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_8

    .line 666
    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    .line 670
    :cond_7
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 672
    iget-object v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 673
    .restart local v2       #frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 675
    .restart local v5       #region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 676
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 678
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 679
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 682
    invoke-virtual {p0, v5}, Lcom/htc/launcher/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 667
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_8
    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_7

    .line 668
    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_2
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 907
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/htc/launcher/widget/SlidingDrawer;->moveHandle(I)V

    .line 908
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 910
    iget-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 922
    :goto_0
    return-void

    .line 913
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    .line 915
    new-instance v0, Lcom/htc/launcher/widget/SlidingDrawer$3;

    invoke-direct {v0, p0}, Lcom/htc/launcher/widget/SlidingDrawer$3;-><init>(Lcom/htc/launcher/widget/SlidingDrawer;)V

    invoke-virtual {p0, v0}, Lcom/htc/launcher/widget/SlidingDrawer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 8
    .parameter "position"
    .parameter "velocity"
    .parameter "always"

    .prologue
    const-wide/16 v6, 0x19

    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 548
    int-to-float v2, p1

    iput v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimationPosition:F

    .line 549
    iput p2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 551
    iget-boolean v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_4

    .line 552
    if-nez p3, :cond_0

    iget v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    iget v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleHeight:I

    :goto_0
    add-int/2addr v2, v3

    if-le p1, v2, :cond_3

    iget v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 557
    :cond_0
    iget v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 558
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 559
    iput v4, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 587
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 588
    .local v0, now:J
    iput-wide v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 589
    add-long v2, v0, v6

    iput-wide v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 590
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z

    .line 591
    iget-object v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 592
    iget-object v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 593
    invoke-direct {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->stopTracking()V

    .line 594
    return-void

    .line 552
    .end local v0           #now:J
    :cond_2
    iget v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 563
    :cond_3
    iget v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 564
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 565
    iput v4, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 569
    :cond_4
    if-nez p3, :cond_7

    iget v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    iget-boolean v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->getHeight()I

    move-result v2

    :goto_2
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_7

    iget v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    .line 573
    :cond_5
    iget v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 574
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 575
    iput v4, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 569
    :cond_6
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    .line 580
    :cond_7
    iget v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 581
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 582
    iput v4, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1
.end method

.method private prepareContent()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4000

    .line 688
    iget-boolean v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 719
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 695
    .local v2, content:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 696
    iget-boolean v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_3

    .line 697
    iget v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleHeight:I

    .line 698
    .local v0, childHeight:I
    iget v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottom:I

    iget v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 699
    .local v3, height:I
    iget v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 701
    iget v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 715
    .end local v0           #childHeight:I
    .end local v3           #height:I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 716
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 718
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 704
    :cond_3
    iget-object v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 705
    .local v1, childWidth:I
    iget v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 706
    .local v4, width:I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottom:I

    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 708
    iget v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

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
    .parameter "position"

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 597
    iput-boolean v4, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTracking:Z

    .line 598
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 599
    iget-boolean v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    .line 600
    .local v2, opening:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 601
    iget v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 602
    iget v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 603
    iget v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimationPosition:F

    .line 605
    iget v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/htc/launcher/widget/SlidingDrawer;->moveHandle(I)V

    .line 606
    iput-boolean v4, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z

    .line 607
    iget-object v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 609
    .local v0, now:J
    iput-wide v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 610
    const-wide/16 v5, 0x19

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 611
    iput-boolean v4, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z

    .line 619
    .end local v0           #now:J
    :goto_2
    return-void

    .end local v2           #opening:Z
    :cond_0
    move v2, v3

    .line 599
    goto :goto_0

    .line 603
    .restart local v2       #opening:Z
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_1

    .line 613
    :cond_2
    iget-boolean v4, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    .line 614
    iput-boolean v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z

    .line 615
    iget-object v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 617
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/launcher/widget/SlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 723
    iput-boolean v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTracking:Z

    .line 725
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 733
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    .line 849
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    .line 850
    invoke-direct {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->prepareContent()V

    .line 851
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 852
    .local v0, scrollListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 853
    invoke-interface {v0}, Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 855
    :cond_0
    iget-boolean v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/launcher/widget/SlidingDrawer;->animateClose(I)V

    .line 857
    if-eqz v0, :cond_1

    .line 858
    invoke-interface {v0}, Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 860
    :cond_1
    return-void

    .line 855
    :cond_2
    iget-object v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 872
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    .line 873
    invoke-direct {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->prepareContent()V

    .line 874
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 875
    .local v0, scrollListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 876
    invoke-interface {v0}, Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 878
    :cond_0
    iget-boolean v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/launcher/widget/SlidingDrawer;->animateOpen(I)V

    .line 880
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/htc/launcher/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 882
    if-eqz v0, :cond_1

    .line 883
    invoke-interface {v0}, Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 885
    :cond_1
    return-void

    .line 878
    :cond_2
    iget-object v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 805
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->animateOpen()V

    .line 809
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->closeDrawer()V

    .line 835
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->invalidate()V

    .line 836
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->requestLayout()V

    .line 837
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->getDrawingTime()J

    move-result-wide v1

    .line 299
    .local v1, drawingTime:J
    iget-object v3, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 300
    .local v3, handle:Landroid/view/View;
    iget-boolean v4, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    .line 302
    .local v4, isVertical:Z
    iget-boolean v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_6

    .line 303
    :cond_0
    iget-object v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 305
    if-eqz v4, :cond_2

    .line 306
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->overlapPadding:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 320
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/htc/launcher/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 321
    return-void

    .line 308
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 311
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 312
    if-eqz v4, :cond_5

    move v6, v5

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_4
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    iget-object v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/htc/launcher/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 312
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    .line 317
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 318
    iget-object v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/htc/launcher/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public getOverlapPadding()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->overlapPadding:I

    return v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z

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

    .prologue
    .line 998
    iget-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public layout_update_for_allapps()V
    .locals 3

    .prologue
    .line 521
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 523
    .local v0, DrawerParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 527
    .end local v0           #DrawerParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mLocked:Z

    .line 990
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 249
    iget v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/htc/launcher/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/htc/launcher/widget/SlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/launcher/widget/SlidingDrawer$DrawerToggler;-><init>(Lcom/htc/launcher/widget/SlidingDrawer;Lcom/htc/launcher/widget/SlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/htc/launcher/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 372
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v7

    .line 376
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 378
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 379
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 381
    .local v6, y:F
    iget-object v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 382
    .local v1, frame:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 384
    .local v2, handle:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 385
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 389
    :cond_2
    if-nez v0, :cond_4

    .line 390
    iput-boolean v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTracking:Z

    .line 392
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 394
    invoke-direct {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->prepareContent()V

    .line 397
    iget-object v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v7, :cond_3

    .line 398
    iget-object v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v7}, Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 401
    :cond_3
    iget-boolean v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_5

    .line 402
    iget-object v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    .line 403
    .local v4, top:I
    float-to-int v7, v6

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTouchDelta:I

    .line 404
    invoke-direct {p0, v4}, Lcom/htc/launcher/widget/SlidingDrawer;->prepareTracking(I)V

    .line 410
    .end local v4           #top:I
    :goto_1
    iget-object v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    move v7, v8

    .line 413
    goto :goto_0

    .line 406
    :cond_5
    iget-object v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 407
    .local v3, left:I
    float-to-int v7, v5

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTouchDelta:I

    .line 408
    invoke-direct {p0, v3}, Lcom/htc/launcher/widget/SlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 325
    const-string v9, "SlidingDrawer"

    const-string v10, "onLayout"

    invoke-static {v9, v10}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTracking:Z

    if-eqz v9, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    sget-object v9, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/launcher/Launcher;

    invoke-virtual {v9}, Lcom/htc/launcher/Launcher;->isAddAdapterReady()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 333
    sub-int v8, p4, p2

    .line 334
    .local v8, width:I
    sub-int v7, p5, p3

    .line 336
    .local v7, height:I
    iget-object v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 338
    .local v6, handle:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 339
    .local v3, childWidth:I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 344
    .local v0, childHeight:I
    iget-object v4, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 346
    .local v4, content:Landroid/view/View;
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    if-eqz v9, :cond_3

    .line 347
    sub-int v9, v8, v3

    div-int/lit8 v1, v9, 0x2

    .line 348
    .local v1, childLeft:I
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_2

    iget v2, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    .line 352
    .local v2, childTop:I
    :goto_1
    iget v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->overlapPadding:I

    sub-int v5, v9, v10

    .line 353
    .local v5, contentTop:I
    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v4, v9, v5, v8, v10}, Landroid/view/View;->layout(IIII)V

    .line 365
    .end local v5           #contentTop:I
    :goto_2
    add-int v9, v1, v3

    add-int v10, v2, v0

    invoke-virtual {v6, v1, v2, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 366
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleHeight:I

    .line 367
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    iput v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 348
    .end local v2           #childTop:I
    :cond_2
    sub-int v9, v7, v0

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottomOffset:I

    add-int v2, v9, v10

    goto :goto_1

    .line 357
    .end local v1           #childLeft:I
    :cond_3
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_4

    iget v1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    .line 358
    .restart local v1       #childLeft:I
    :goto_3
    sub-int v9, v7, v0

    div-int/lit8 v2, v9, 0x2

    .line 360
    .restart local v2       #childTop:I
    iget v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v3

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 357
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    :cond_4
    sub-int v9, v8, v3

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottomOffset:I

    add-int v1, v9, v10

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v8, 0x0

    const/high16 v9, 0x4000

    .line 266
    sget-object v7, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/Launcher;

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->isAddAdapterReady()Z

    move-result v7

    if-nez v7, :cond_0

    .line 267
    invoke-virtual {p0, v8, v8}, Lcom/htc/launcher/widget/SlidingDrawer;->setMeasuredDimension(II)V

    .line 294
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 271
    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 273
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 274
    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 276
    .local v3, heightSpecSize:I
    if-eqz v5, :cond_1

    if-nez v2, :cond_2

    .line 277
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 281
    .local v0, handle:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/launcher/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 283
    iget-boolean v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_3

    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->overlapPadding:I

    add-int v1, v7, v8

    .line 285
    .local v1, height:I
    iget-object v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 293
    .end local v1           #height:I
    :goto_1
    invoke-virtual {p0, v6, v3}, Lcom/htc/launcher/widget/SlidingDrawer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 289
    .local v4, width:I
    iget-object v7, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 418
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_0

    .line 419
    const/4 v9, 0x1

    .line 496
    :goto_0
    return v9

    .line 422
    :cond_0
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTracking:Z

    if-eqz v9, :cond_1

    .line 423
    iget-object v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 425
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 496
    .end local v0           #action:I
    :cond_1
    :goto_1
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z

    if-nez v9, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_18

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 427
    .restart local v0       #action:I
    :pswitch_0
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    :goto_2
    float-to-int v9, v9

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTouchDelta:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/htc/launcher/widget/SlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto :goto_2

    .line 431
    :pswitch_1
    iget-object v5, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 432
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    iget v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 434
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 435
    .local v8, yVelocity:F
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 438
    .local v7, xVelocity:F
    iget-boolean v6, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mVertical:Z

    .line 439
    .local v6, vertical:Z
    if-eqz v6, :cond_a

    .line 440
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_9

    const/4 v2, 0x1

    .line 441
    .local v2, negative:Z
    :goto_3
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_4

    .line 442
    neg-float v7, v7

    .line 444
    :cond_4
    iget v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_5

    .line 445
    iget v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v9

    .line 457
    :cond_5
    :goto_4
    float-to-double v9, v7

    float-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v4, v9

    .line 458
    .local v4, velocity:F
    if-eqz v2, :cond_6

    .line 459
    neg-float v4, v4

    .line 462
    :cond_6
    iget-object v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    .line 463
    .local v3, top:I
    iget-object v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 465
    .local v1, left:I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_16

    .line 466
    if-eqz v6, :cond_d

    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v3, v9, :cond_8

    :cond_7
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_f

    iget v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottomOffset:I

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-le v3, v9, :cond_f

    .line 473
    :cond_8
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mAllowSingleTap:Z

    if-eqz v9, :cond_13

    .line 474
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/htc/launcher/widget/SlidingDrawer;->playSoundEffect(I)V

    .line 476
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_11

    .line 477
    if-eqz v6, :cond_10

    .end local v3           #top:I
    :goto_5
    invoke-direct {p0, v3}, Lcom/htc/launcher/widget/SlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    .line 440
    .end local v1           #left:I
    .end local v2           #negative:Z
    .end local v4           #velocity:F
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 448
    :cond_a
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_c

    const/4 v2, 0x1

    .line 449
    .restart local v2       #negative:Z
    :goto_6
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_b

    .line 450
    neg-float v8, v8

    .line 452
    :cond_b
    iget v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_5

    .line 453
    iget v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v8, v9

    goto :goto_4

    .line 448
    .end local v2           #negative:Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    .line 466
    .restart local v1       #left:I
    .restart local v2       #negative:Z
    .restart local v3       #top:I
    .restart local v4       #velocity:F
    :cond_d
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_e

    iget v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v1, v9, :cond_8

    :cond_e
    iget-boolean v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_f

    iget v9, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mBottomOffset:I

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mRight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-gt v1, v9, :cond_8

    .line 486
    :cond_f
    if-eqz v6, :cond_15

    .end local v3           #top:I
    :goto_7
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/htc/launcher/widget/SlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_10
    move v3, v1

    .line 477
    goto :goto_5

    .line 479
    :cond_11
    if-eqz v6, :cond_12

    .end local v3           #top:I
    :goto_8
    invoke-direct {p0, v3}, Lcom/htc/launcher/widget/SlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_12
    move v3, v1

    goto :goto_8

    .line 482
    :cond_13
    if-eqz v6, :cond_14

    .end local v3           #top:I
    :goto_9
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/htc/launcher/widget/SlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_14
    move v3, v1

    goto :goto_9

    :cond_15
    move v3, v1

    .line 486
    goto :goto_7

    .line 489
    :cond_16
    if-eqz v6, :cond_17

    .end local v3           #top:I
    :goto_a
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/htc/launcher/widget/SlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_17
    move v3, v1

    goto :goto_a

    .line 496
    .end local v0           #action:I
    .end local v1           #left:I
    .end local v2           #negative:Z
    .end local v3           #top:I
    .end local v4           #velocity:F
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #vertical:Z
    .end local v7           #xVelocity:F
    .end local v8           #yVelocity:F
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->openDrawer()V

    .line 820
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->invalidate()V

    .line 821
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->requestLayout()V

    .line 823
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/htc/launcher/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 824
    return-void
.end method

.method public restore_layout()V
    .locals 2

    .prologue
    .line 530
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 532
    .local v0, DrawerParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 533
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 535
    .end local v0           #DrawerParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 939
    iput-object p1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mOnDrawerCloseListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerCloseListener;

    .line 940
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 930
    iput-object p1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerOpenListener;

    .line 931
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 951
    iput-object p1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 952
    return-void
.end method

.method public setOverlapPadding(I)V
    .locals 1
    .parameter "newOverlap"

    .prologue
    .line 504
    iget v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->overlapPadding:I

    if-eq p1, v0, :cond_0

    .line 505
    iput p1, p0, Lcom/htc/launcher/widget/SlidingDrawer;->overlapPadding:I

    .line 506
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->requestLayout()V

    .line 508
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 786
    invoke-direct {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->openDrawer()V

    .line 790
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->invalidate()V

    .line 791
    invoke-virtual {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->requestLayout()V

    .line 792
    return-void

    .line 788
    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/widget/SlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 980
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/widget/SlidingDrawer;->mLocked:Z

    .line 981
    return-void
.end method
