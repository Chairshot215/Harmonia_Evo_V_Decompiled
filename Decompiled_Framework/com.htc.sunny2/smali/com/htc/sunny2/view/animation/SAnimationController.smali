.class public Lcom/htc/sunny2/view/animation/SAnimationController;
.super Ljava/lang/Object;
.source "SAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/view/animation/SAnimationController$1;,
        Lcom/htc/sunny2/view/animation/SAnimationController$Layout;,
        Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;,
        Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;
    }
.end annotation


# instance fields
.field protected mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

.field protected mCurrentTime:J

.field protected mDelayTime:J

.field protected mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

.field protected mEndTime:J

.field private mHasMore:Z

.field protected mInterpolator:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

.field private mIsAlphaAnimation:Z

.field private mIsEnded:Z

.field protected mIsFileAfter:Z

.field protected mIsFileBefore:Z

.field private mIsPosAnimation:Z

.field private mIsReady:Z

.field private mIsRotateAnimation:Z

.field private mIsScaleAnimation:Z

.field private mIsStarted:Z

.field protected mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

.field protected mOffset:J

.field protected mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

.field protected mStartTime:J

.field protected mTotalTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    sget-object v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mInterpolator:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsReady:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsEnded:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mHasMore:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsPosAnimation:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsAlphaAnimation:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsScaleAnimation:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsRotateAnimation:Z

    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartTime:J

    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndTime:J

    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mDelayTime:J

    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentTime:J

    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsFileBefore:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsFileAfter:Z

    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;-><init>(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;-><init>(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;-><init>(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    return-void
.end method


# virtual methods
.method public animate()V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentTime:J

    iget-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mDelayTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    iput-boolean v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mHasMore:Z

    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->animationEnd()V

    iput-boolean v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    iput-boolean v8, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsEnded:Z

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v2}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v2}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    :cond_3
    iput-boolean v8, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    :cond_4
    iget-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mDelayTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    iget-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsPosAnimation:Z

    if-ne v8, v2, :cond_5

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    :cond_5
    iget-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsScaleAnimation:Z

    if-ne v8, v2, :cond_6

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    :cond_6
    iget-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsRotateAnimation:Z

    if-ne v8, v2, :cond_7

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    :cond_7
    iget-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsAlphaAnimation:Z

    if-ne v8, v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget v1, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget v0, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    int-to-float v4, v1

    sub-int v5, v0, v1

    int-to-float v5, v5

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    goto/16 :goto_0
.end method

.method protected animationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    iput v1, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->reset()V

    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->animationEnd()V

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public final getCurrentAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    return v0
.end method

.method public final getCurrentPosition()Lcom/htc/sunny2/view/Vector3F;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method public final getCurrentRotation()Lcom/htc/sunny2/view/Vector3F;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method public final getCurrentScale()Lcom/htc/sunny2/view/Vector3F;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    return-wide v0
.end method

.method public hasMore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mHasMore:Z

    return v0
.end method

.method protected interpolate(FFFF)F
    .locals 11

    const/4 v7, 0x0

    cmpl-float v7, v7, p4

    if-nez v7, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v4, p1

    move v0, p2

    move v1, p3

    move v2, p4

    sget-object v7, Lcom/htc/sunny2/view/animation/SAnimationController$1;->$SwitchMap$com$htc$sunny2$view$animation$SAnimationController$INTERPOLATOR:[I

    iget-object v8, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mInterpolator:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v8}, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    goto :goto_0

    :pswitch_1
    div-float/2addr v4, v2

    mul-float v6, v4, v4

    mul-float v5, v6, v4

    const/high16 v7, 0x3f80

    mul-float/2addr v7, v5

    mul-float/2addr v7, v6

    const/high16 v8, -0x3f60

    mul-float/2addr v8, v6

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x4120

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    const/high16 v8, -0x3ee0

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x40a0

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    goto :goto_0

    :pswitch_2
    div-float v7, v4, v2

    const/high16 v8, 0x3f80

    add-float/2addr v7, v8

    float-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-float v7, v7

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    goto :goto_0

    :pswitch_3
    div-float/2addr v4, v2

    mul-float v6, v4, v4

    mul-float v5, v6, v4

    mul-float v7, v5, v6

    const/high16 v8, -0x3f60

    mul-float/2addr v8, v6

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x4120

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    const/high16 v8, -0x3ee0

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x40a0

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    goto :goto_0

    :pswitch_4
    div-float/2addr v4, v2

    mul-float v6, v4, v4

    mul-float v5, v6, v4

    mul-float v7, v5, v6

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isAlphaAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsAlphaAnimation:Z

    return v0
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsEnded:Z

    return v0
.end method

.method public isFillAfter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsFileAfter:Z

    return v0
.end method

.method public isFillBefore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsFileBefore:Z

    return v0
.end method

.method public isPositionAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsPosAnimation:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsReady:Z

    return v0
.end method

.method public isRotateAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsRotateAnimation:Z

    return v0
.end method

.method public isScaleAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsScaleAnimation:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    return v0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsEnded:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    iget-wide v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndTime:J

    iput-wide v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentTime:J

    iput-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mHasMore:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsReady:Z

    return-void
.end method

.method public setAlphaAnimation(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iput p1, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iput p2, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsAlphaAnimation:Z

    return-void
.end method

.method public setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    return-void
.end method

.method public setDuration(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsFileAfter:Z

    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsFileBefore:Z

    return-void
.end method

.method public setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mInterpolator:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    return-void
.end method

.method public setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsPosAnimation:Z

    return-void
.end method

.method public setReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsReady:Z

    return-void
.end method

.method public setRotationAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsRotateAnimation:Z

    return-void
.end method

.method public setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsScaleAnimation:Z

    return-void
.end method

.method public setStartOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mDelayTime:J

    return-void
.end method

.method public start()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsReady:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsEnded:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mHasMore:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mDelayTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndTime:J

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    iput v1, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    return-void
.end method
