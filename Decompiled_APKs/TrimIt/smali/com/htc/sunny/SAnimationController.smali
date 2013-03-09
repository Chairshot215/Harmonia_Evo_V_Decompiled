.class public Lcom/htc/sunny/SAnimationController;
.super Ljava/lang/Object;
.source "SAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/SAnimationController$1;,
        Lcom/htc/sunny/SAnimationController$Layout;,
        Lcom/htc/sunny/SAnimationController$INTERPOLATOR;,
        Lcom/htc/sunny/SAnimationController$AnimationListener;
    }
.end annotation


# instance fields
.field protected mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

.field protected mCurrentTime:J

.field protected mDelayTime:J

.field protected mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

.field protected mEndTime:J

.field private mHasMore:Z

.field protected mInterpolator:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

.field private mIsAlphaAnimation:Z

.field private mIsEnded:Z

.field protected mIsFileAfter:Z

.field protected mIsFileBefore:Z

.field private mIsPosAnimation:Z

.field private mIsReady:Z

.field private mIsRotateAnimation:Z

.field private mIsScaleAnimation:Z

.field private mIsStarted:Z

.field protected mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

.field protected mOffset:J

.field protected mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

.field protected mStartTime:J

.field protected mTotalTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    .line 57
    sget-object v0, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    iput-object v0, p0, Lcom/htc/sunny/SAnimationController;->mInterpolator:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    .line 63
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsReady:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsEnded:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mHasMore:Z

    .line 68
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsPosAnimation:Z

    .line 69
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsAlphaAnimation:Z

    .line 70
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsScaleAnimation:Z

    .line 71
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsRotateAnimation:Z

    .line 73
    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mStartTime:J

    .line 74
    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    .line 75
    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mEndTime:J

    .line 76
    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mDelayTime:J

    .line 77
    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    .line 78
    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentTime:J

    .line 80
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsFileBefore:Z

    .line 81
    iput-boolean v1, p0, Lcom/htc/sunny/SAnimationController;->mIsFileAfter:Z

    .line 83
    new-instance v0, Lcom/htc/sunny/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAnimationController$Layout;-><init>(Lcom/htc/sunny/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    .line 84
    new-instance v0, Lcom/htc/sunny/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAnimationController$Layout;-><init>(Lcom/htc/sunny/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    .line 85
    new-instance v0, Lcom/htc/sunny/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAnimationController$Layout;-><init>(Lcom/htc/sunny/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    .line 89
    return-void
.end method


# virtual methods
.method public animate()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentTime:J

    .line 316
    iget-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny/SAnimationController;->mStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/sunny/SAnimationController;->mDelayTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny/SAnimationController;->mEndTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 321
    iput-boolean v6, p0, Lcom/htc/sunny/SAnimationController;->mHasMore:Z

    .line 323
    invoke-virtual {p0}, Lcom/htc/sunny/SAnimationController;->animationEnd()V

    .line 325
    iput-boolean v6, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    .line 326
    iput-boolean v8, p0, Lcom/htc/sunny/SAnimationController;->mIsEnded:Z

    .line 327
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    invoke-interface {v2}, Lcom/htc/sunny/SAnimationController$AnimationListener;->onAnimationEnd()V

    goto :goto_0

    .line 333
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    if-nez v2, :cond_4

    .line 334
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    if-eqz v2, :cond_3

    .line 335
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    invoke-interface {v2}, Lcom/htc/sunny/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 337
    :cond_3
    iput-boolean v8, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    .line 340
    :cond_4
    iget-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny/SAnimationController;->mStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/sunny/SAnimationController;->mDelayTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    .line 342
    iget-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsPosAnimation:Z

    if-ne v8, v2, :cond_5

    .line 343
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    .line 344
    .local v1, start:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    .line 346
    .local v0, end:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mX:F

    .line 347
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mY:F

    .line 348
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 351
    .end local v0           #end:Lcom/htc/sunny/Vector3F;
    .end local v1           #start:Lcom/htc/sunny/Vector3F;
    :cond_5
    iget-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsScaleAnimation:Z

    if-ne v8, v2, :cond_6

    .line 352
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    .line 353
    .restart local v1       #start:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    .line 355
    .restart local v0       #end:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mX:F

    .line 356
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mY:F

    .line 357
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 360
    .end local v0           #end:Lcom/htc/sunny/Vector3F;
    .end local v1           #start:Lcom/htc/sunny/Vector3F;
    :cond_6
    iget-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsRotateAnimation:Z

    if-ne v8, v2, :cond_7

    .line 361
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    .line 362
    .restart local v1       #start:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    .line 364
    .restart local v0       #end:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mX:F

    .line 365
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mY:F

    .line 366
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 369
    .end local v0           #end:Lcom/htc/sunny/Vector3F;
    .end local v1           #start:Lcom/htc/sunny/Vector3F;
    :cond_7
    iget-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsAlphaAnimation:Z

    if-ne v8, v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget v1, v2, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    .line 371
    .local v1, start:I
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget v0, v2, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    .line 373
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v3, v3

    int-to-float v4, v1

    sub-int v5, v0, v1

    int-to-float v5, v5

    iget-wide v6, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny/SAnimationController;->interpolate(FFFF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    goto/16 :goto_0
.end method

.method protected animationEnd()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 379
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 380
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 381
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    iput v1, v0, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    .line 382
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/htc/sunny/SAnimationController;->reset()V

    .line 293
    invoke-virtual {p0}, Lcom/htc/sunny/SAnimationController;->animationEnd()V

    .line 295
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 298
    :cond_0
    return-void
.end method

.method public final getCurrentAlpha()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    return v0
.end method

.method public final getCurrentPosition()Lcom/htc/sunny/Vector3F;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    return-object v0
.end method

.method public final getCurrentRotation()Lcom/htc/sunny/Vector3F;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    return-object v0
.end method

.method public final getCurrentScale()Lcom/htc/sunny/Vector3F;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    return-wide v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mHasMore:Z

    return v0
.end method

.method protected interpolate(FFFF)F
    .locals 11
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v3, 0x0

    .line 385
    cmpl-float v7, v3, p4

    if-nez v7, :cond_0

    .line 411
    :goto_0
    return v3

    .line 387
    :cond_0
    const/4 v3, 0x0

    .line 388
    .local v3, nRes:F
    const/4 v6, 0x0

    .local v6, ts:F
    const/4 v5, 0x0

    .line 389
    .local v5, tc:F
    move v4, p1

    .line 390
    .local v4, t:F
    move v0, p2

    .line 391
    .local v0, b:F
    move v1, p3

    .line 392
    .local v1, c:F
    move v2, p4

    .line 394
    .local v2, d:F
    sget-object v7, Lcom/htc/sunny/SAnimationController$1;->$SwitchMap$com$htc$sunny$SAnimationController$INTERPOLATOR:[I

    iget-object v8, p0, Lcom/htc/sunny/SAnimationController;->mInterpolator:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v8}, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 396
    :pswitch_0
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    .line 397
    goto :goto_0

    .line 399
    :pswitch_1
    div-float/2addr v4, v2

    .line 400
    mul-float v6, v4, v4

    .line 401
    mul-float v5, v6, v4

    .line 402
    mul-float v7, v9, v5

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

    .line 403
    goto :goto_0

    .line 406
    :pswitch_2
    div-float v7, v4, v2

    add-float/2addr v7, v9

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

    .line 407
    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAlphaAnimation()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsAlphaAnimation:Z

    return v0
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsEnded:Z

    return v0
.end method

.method public isFillAfter()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsFileAfter:Z

    return v0
.end method

.method public isFillBefore()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsFileBefore:Z

    return v0
.end method

.method public isPositionAnimation()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsPosAnimation:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsReady:Z

    return v0
.end method

.method public isRotateAnimation()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsRotateAnimation:Z

    return v0
.end method

.method public isScaleAnimation()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsScaleAnimation:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsEnded:Z

    .line 284
    iput-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    .line 285
    iget-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mEndTime:J

    iput-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentTime:J

    .line 286
    iput-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mHasMore:Z

    .line 287
    iput-boolean v2, p0, Lcom/htc/sunny/SAnimationController;->mIsReady:Z

    .line 288
    return-void
.end method

.method public setAlphaAnimation(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iput p1, v0, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    .line 160
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iput p2, v0, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsAlphaAnimation:Z

    .line 163
    return-void
.end method

.method public setAnimationListener(Lcom/htc/sunny/SAnimationController$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/sunny/SAnimationController;->mListener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    .line 107
    return-void
.end method

.method public setDuration(J)V
    .locals 2
    .parameter "nMilliseconds"

    .prologue
    .line 209
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iput-wide p1, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    .line 213
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0
    .parameter "bFillAfter"

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/htc/sunny/SAnimationController;->mIsFileAfter:Z

    .line 243
    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0
    .parameter "bFillBefore"

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/htc/sunny/SAnimationController;->mIsFileBefore:Z

    .line 233
    return-void
.end method

.method public setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/sunny/SAnimationController;->mInterpolator:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    .line 199
    return-void
.end method

.method public setPositionAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 118
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsPosAnimation:Z

    .line 121
    return-void
.end method

.method protected setReady()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsReady:Z

    .line 93
    return-void
.end method

.method public setRotationAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 132
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsRotateAnimation:Z

    .line 135
    return-void
.end method

.method public setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 146
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mEndLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsScaleAnimation:Z

    .line 149
    return-void
.end method

.method public setStartOffset(J)V
    .locals 0
    .parameter "nMilliseconds"

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/htc/sunny/SAnimationController;->mDelayTime:J

    .line 173
    return-void
.end method

.method protected start()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsReady:Z

    .line 271
    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsEnded:Z

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mIsStarted:Z

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SAnimationController;->mHasMore:Z

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mStartTime:J

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mDelayTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mEndTime:J

    .line 276
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 277
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 278
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 279
    iget-object v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget-object v1, p0, Lcom/htc/sunny/SAnimationController;->mStartLayout:Lcom/htc/sunny/SAnimationController$Layout;

    iget v1, v1, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    iput v1, v0, Lcom/htc/sunny/SAnimationController$Layout;->mAlpha:I

    .line 280
    return-void
.end method
