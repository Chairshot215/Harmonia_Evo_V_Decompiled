.class Lcom/google/android/maps/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/GestureDetector$GestureHandler;,
        Lcom/google/android/maps/GestureDetector$SimpleOnGestureListener;,
        Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;,
        Lcom/google/android/maps/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mBiggerTouchSlopSquare:I

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/google/android/maps/GestureDetector;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/google/android/maps/GestureDetector;->TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/google/android/maps/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/GestureDetector$OnGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/GestureDetector;-><init>(Landroid/content/Context;Lcom/google/android/maps/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    iput v0, p0, Lcom/google/android/maps/GestureDetector;->mBiggerTouchSlopSquare:I

    if-eqz p3, :cond_1

    new-instance v0, Lcom/google/android/maps/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Lcom/google/android/maps/GestureDetector$GestureHandler;-><init>(Lcom/google/android/maps/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    :goto_0
    iput-object p2, p0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    instance-of v0, p2, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Lcom/google/android/maps/GestureDetector;->setOnDoubleTapListener(Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/GestureDetector;->init(Landroid/content/Context;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/maps/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Lcom/google/android/maps/GestureDetector$GestureHandler;-><init>(Lcom/google/android/maps/GestureDetector;)V

    iput-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/maps/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/maps/GestureDetector;)Lcom/google/android/maps/GestureDetector$OnGestureListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/maps/GestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/maps/GestureDetector;)Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/maps/GestureDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/GestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mStillDown:Z

    iget-boolean v0, p0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    iget-object v3, p0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "OnGestureListener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/maps/GestureDetector;->mIsLongpressEnabled:Z

    if-nez p1, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/google/android/maps/GestureDetector;->mMinimumFlingVelocity:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/google/android/maps/GestureDetector;->mMaximumFlingVelocity:I

    :goto_0
    mul-int v3, v2, v2

    iput v3, p0, Lcom/google/android/maps/GestureDetector;->mTouchSlopSquare:I

    mul-int v3, v1, v1

    iput v3, p0, Lcom/google/android/maps/GestureDetector;->mDoubleTapSlopSquare:I

    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/google/android/maps/GestureDetector;->mMinimumFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/google/android/maps/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/maps/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget v5, Lcom/google/android/maps/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/maps/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v10, 0x0

    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return v10

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/GestureDetector;->cancel()V

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const v19, 0xff00

    and-int v19, v19, v4

    shr-int/lit8 v19, v19, 0x8

    if-nez v19, :cond_2

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionX:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    :cond_4
    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionY:F

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mStillDown:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v21

    sget v23, Lcom/google/android/maps/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    sget v23, Lcom/google/android/maps/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v21

    sget v23, Lcom/google/android/maps/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    sget v21, Lcom/google/android/maps/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v12, v19, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mLastMotionY:F

    move/from16 v19, v0

    sub-float v13, v19, v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v7, v0

    mul-int v19, v6, v6

    mul-int v20, v7, v7

    add-int v8, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mTouchSlopSquare:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v8, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v12, v13}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionY:F

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mBiggerTouchSlopSquare:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v8, v0, :cond_1

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_0

    :cond_9
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpl-float v19, v19, v20

    if-gez v19, :cond_a

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v12, v13}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionY:F

    goto/16 :goto_0

    :pswitch_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mStillDown:Z

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    :cond_b
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-gtz v19, :cond_f

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_b

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v16

    invoke-interface {v0, v1, v5, v15, v2}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    goto/16 :goto_3

    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/GestureDetector;->cancel()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/GestureDetector;->mIsLongpressEnabled:Z

    return-void
.end method

.method public setOnDoubleTapListener(Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    return-void
.end method
