.class public Lcom/google/android/maps/TrackballGestureDetector;
.super Ljava/lang/Object;
.source "TrackballGestureDetector.java"


# instance fields
.field private mAlwaysInTapRegion:Z

.field private mCurrentDownX:F

.field private mCurrentDownY:F

.field private mDownTime:J

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTap:Z

.field private mIsScroll:Z

.field private mIsTap:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mOurLongPressRunnable:Ljava/lang/Runnable;

.field private mPreviousDownTime:J

.field private mScrollX:F

.field private mScrollY:F

.field private mUserLongPressRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/maps/TrackballGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/google/android/maps/TrackballGestureDetector$1;-><init>(Lcom/google/android/maps/TrackballGestureDetector;)V

    iput-object v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/maps/TrackballGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/TrackballGestureDetector;->dispatchLongPress()V

    return-void
.end method

.method private dispatchLongPress()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    iget-object v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mUserLongPressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mUserLongPressRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public analyze(Landroid/view/MotionEvent;)V
    .locals 12

    const/4 v10, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsScroll:Z

    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsTap:Z

    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsDoubleTap:Z

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput v4, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionX:F

    iput v5, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionY:F

    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownX:F

    iput v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mFirstDownX:F

    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownY:F

    iput v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mFirstDownY:F

    iput v4, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownX:F

    iput v5, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownY:F

    iget-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mDownTime:J

    iput-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mPreviousDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mDownTime:J

    iput-boolean v10, p0, Lcom/google/android/maps/TrackballGestureDetector;->mAlwaysInTapRegion:Z

    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    iget-object v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    iget-wide v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mDownTime:J

    const-wide/16 v10, 0x5dc

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iget-boolean v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    if-nez v6, :cond_0

    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionX:F

    sub-float/2addr v6, v4

    iput v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mScrollX:F

    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionY:F

    sub-float/2addr v6, v5

    iput v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mScrollY:F

    iput v4, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionX:F

    iput v5, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionY:F

    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownX:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownY:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v3, v6

    const/4 v6, 0x5

    if-le v3, v6, :cond_1

    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mAlwaysInTapRegion:Z

    iget-object v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-boolean v10, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsScroll:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    if-eqz v6, :cond_2

    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    goto :goto_0

    :cond_2
    iget-boolean v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mPreviousDownTime:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x258

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    iput-boolean v10, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsDoubleTap:Z

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_4
    iget-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mDownTime:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x12c

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    iput-boolean v10, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsTap:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentDownX()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownX:F

    return v0
.end method

.method public getCurrentDownY()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownY:F

    return v0
.end method

.method public getFirstDownX()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mFirstDownX:F

    return v0
.end method

.method public getFirstDownY()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mFirstDownY:F

    return v0
.end method

.method public isDoubleTap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsDoubleTap:Z

    return v0
.end method

.method public isScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsScroll:Z

    return v0
.end method

.method public isTap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsTap:Z

    return v0
.end method

.method public registerLongPressCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/TrackballGestureDetector;->mUserLongPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public scrollX()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mScrollX:F

    return v0
.end method

.method public scrollY()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mScrollY:F

    return v0
.end method
