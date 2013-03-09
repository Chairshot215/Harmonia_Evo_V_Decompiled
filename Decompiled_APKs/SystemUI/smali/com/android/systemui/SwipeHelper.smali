.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field static final ALPHA_FADE_END:F = 0.5f

.field public static ALPHA_FADE_START:F = 0.0f

.field private static final CONSTRAIN_SWIPE:Z = true

.field private static final DEBUG:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DISMISS_IF_SWIPED_FAR_ENOUGH:Z = true

.field private static final FADE_OUT_DURING_SWIPE:Z = true

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final SNAP_ANIM_LEN:I = 0x96

.field static final TAG:Ljava/lang/String; = "com.android.systemui.SwipeHelper"

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mInitialTouchPos:F

.field private mPagingTouchSlop:F

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput p3, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    iput p4, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "translationY"

    goto :goto_0
.end method

.method private getAlphaForOffset(Landroid/view/View;)F
    .locals 6

    const/high16 v5, 0x3f80

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    const/high16 v4, 0x3f00

    mul-float v0, v4, v3

    const/high16 v2, 0x3f80

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    sget v4, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    sget v4, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    :cond_0
    :goto_0
    const v4, 0x3cf5c28f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    :cond_1
    sget v4, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    sget v4, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public dismissChild(Landroid/view/View;F)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    cmpg-float v5, p2, v7

    if-ltz v5, :cond_1

    cmpl-float v5, p2, v7

    if-nez v5, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_1

    :cond_0
    cmpl-float v5, p2, v7

    if-nez v5, :cond_2

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v5

    neg-float v4, v5

    :goto_0
    iget v3, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    cmpl-float v5, p2, v7

    if-eqz v5, :cond_3

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v5, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/android/systemui/SwipeHelper$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    return v3

    :pswitch_0
    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    goto :goto_0

    :pswitch_2
    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    iput-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iput-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v13, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v13, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v5, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v13, v14}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v11

    const v13, 0x3e19999a

    mul-float v8, v13, v11

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v13, v13, v11

    if-ltz v13, :cond_5

    const/4 v13, 0x0

    cmpl-float v13, v5, v13

    if-lez v13, :cond_4

    move v5, v8

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-static {v13}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    neg-float v5, v8

    goto :goto_2

    :cond_5
    div-float v13, v5, v11

    float-to-double v13, v13

    const-wide v15, 0x3ff921fb54442d18L

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v5, v8, v13

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float v9, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v14, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float v7, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3fd999999999999aL

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_7

    const/4 v3, 0x1

    :goto_3
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v13, v13, v7

    if-lez v13, :cond_a

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_a

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-lez v13, :cond_8

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_9

    const/4 v14, 0x1

    :goto_5
    if-ne v13, v14, :cond_a

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v13, v14}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    if-nez v4, :cond_6

    if-eqz v3, :cond_b

    :cond_6
    const/4 v6, 0x1

    :goto_7
    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v4, :cond_c

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    goto :goto_7

    :cond_c
    const/4 v12, 0x0

    goto :goto_8

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v13, v14}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDensityScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v3, 0x96

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/SwipeHelper$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
