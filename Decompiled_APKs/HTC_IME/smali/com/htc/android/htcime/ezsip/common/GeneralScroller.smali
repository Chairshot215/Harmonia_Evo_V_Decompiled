.class public Lcom/htc/android/htcime/ezsip/common/GeneralScroller;
.super Ljava/lang/Object;
.source "GeneralScroller.java"


# static fields
.field protected static final DEFAULT_DURATION:I = 0xfa

.field protected static final DEF_FLING_OVER_FRICTION_COEF:F = 0.25f

.field protected static final FLING_BACK_MODE:I = 0x3

.field protected static final FLING_MODE:I = 0x1

.field protected static final FLING_OVER_MODE:I = 0x2

.field protected static final SCROLL_MODE:I


# instance fields
.field protected MAX_FLING_OVER_DURATION:I

.field protected allowedFlingOverX:I

.field protected allowedFlingOverY:I

.field protected lastFlingTimePassed:I

.field protected mCoeffX:F

.field protected mCoeffY:F

.field protected mCurrX:I

.field protected mCurrY:I

.field protected mDeceleration:F

.field protected mDeltaX:F

.field protected mDeltaY:F

.field protected mDuration:I

.field protected mDurationReciprocal:F

.field protected mFinalX:I

.field protected mFinalY:I

.field protected mFinished:Z

.field protected mFlingOverDec:F

.field protected mFlingOverInterpolator:Landroid/view/animation/Interpolator;

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field protected mMaxX:I

.field protected mMaxY:I

.field protected mMinX:I

.field protected mMinY:I

.field protected mMode:I

.field protected mStartTime:J

.field protected mStartX:I

.field protected mStartY:I

.field protected mVelocity:F

.field protected mViscousFluidNormalize:F

.field protected mViscousFluidScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 3
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffX:F

    .line 60
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffY:F

    .line 526
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fe66666

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFlingOverInterpolator:Landroid/view/animation/Interpolator;

    .line 527
    const/16 v1, 0x258

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->MAX_FLING_OVER_DURATION:I

    .line 531
    const/16 v1, 0xf0

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->allowedFlingOverY:I

    .line 532
    const/16 v1, 0xa0

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->allowedFlingOverX:I

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    .line 82
    iput-object p2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMode:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 87
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFlingOverDec:F

    .line 92
    return-void
.end method

.method private viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 471
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    .line 472
    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    .line 473
    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p1, v1

    .line 479
    :goto_0
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 480
    return p1

    .line 475
    :cond_0
    const v0, 0x3ebc5ab2

    .line 476
    .local v0, start:F
    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    .line 477
    sub-float v1, v3, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    .line 488
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    .line 490
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 15

    .prologue
    const/high16 v7, 0x447a

    const/high16 v6, 0x4000

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v14, 0x1

    .line 165
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    if-eqz v1, :cond_0

    .line 280
    :goto_0
    return v0

    .line 169
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-int v11, v1

    .line 172
    .local v11, timePassed:I
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMode:I

    if-nez v1, :cond_4

    .line 173
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    if-ge v11, v0, :cond_3

    .line 174
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v14

    .line 216
    goto :goto_0

    .line 176
    :pswitch_0
    int-to-float v0, v11

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDurationReciprocal:F

    mul-float v13, v0, v1

    .line 178
    .local v13, x:F
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 179
    invoke-direct {p0, v13}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->viscousFluid(F)F

    move-result v13

    .line 183
    :goto_2
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDeltaX:F

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    .line 184
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDeltaY:F

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    .line 185
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    if-ne v0, v1, :cond_1

    .line 186
    iput-boolean v14, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    goto :goto_1

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    goto :goto_2

    .line 190
    .end local v13           #x:F
    :pswitch_1
    int-to-float v0, v11

    div-float v12, v0, v7

    .line 191
    .local v12, timePassedSeconds:F
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mVelocity:F

    mul-float/2addr v0, v12

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDeceleration:F

    mul-float/2addr v1, v12

    mul-float/2addr v1, v12

    div-float/2addr v1, v6

    sub-float v9, v0, v1

    .line 194
    .local v9, distance:F
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffX:F

    mul-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    .line 196
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    .line 197
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    .line 199
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffY:F

    mul-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    .line 201
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    .line 202
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    .line 204
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    if-ne v0, v1, :cond_1

    .line 205
    iput-boolean v14, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    goto/16 :goto_1

    .line 212
    .end local v9           #distance:F
    .end local v12           #timePassedSeconds:F
    :cond_3
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    .line 213
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    .line 214
    iput-boolean v14, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    goto/16 :goto_1

    .line 219
    :cond_4
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMode:I

    packed-switch v1, :pswitch_data_1

    :cond_5
    :goto_3
    move v0, v14

    .line 280
    goto/16 :goto_0

    .line 221
    :pswitch_2
    int-to-float v1, v11

    div-float v12, v1, v7

    .line 222
    .restart local v12       #timePassedSeconds:F
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mVelocity:F

    mul-float/2addr v1, v12

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDeceleration:F

    mul-float/2addr v2, v12

    mul-float/2addr v2, v12

    div-float/2addr v2, v6

    sub-float v9, v1, v2

    .line 225
    .restart local v9       #distance:F
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffX:F

    mul-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    .line 226
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffY:F

    mul-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    .line 228
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinY:I

    if-lt v1, v2, :cond_6

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxY:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    if-lt v1, v2, :cond_6

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinX:I

    if-lt v1, v2, :cond_6

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxX:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    if-ge v1, v2, :cond_7

    .line 231
    :cond_6
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mVelocity:F

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDeceleration:F

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mVelocity:F

    .line 232
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mVelocity:F

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffX:F

    mul-float/2addr v0, v3

    float-to-int v3, v0

    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mVelocity:F

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffY:F

    mul-float/2addr v0, v4

    float-to-int v4, v0

    iget v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinX:I

    iget v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxX:I

    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinY:I

    iget v8, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->flingOver(IIIIIIII)V

    move v0, v14

    .line 235
    goto/16 :goto_0

    .line 236
    :cond_7
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    if-ge v1, v11, :cond_5

    .line 237
    iput-boolean v14, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    .line 238
    iput v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMode:I

    goto/16 :goto_0

    .line 244
    .end local v9           #distance:F
    .end local v12           #timePassedSeconds:F
    :pswitch_3
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    if-ge v0, v11, :cond_8

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mVelocity:F

    .line 246
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinX:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxX:I

    iget v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinY:I

    iget v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->flingOverBack(IIIIII)V

    move v0, v14

    .line 247
    goto/16 :goto_0

    .line 250
    :cond_8
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFlingOverInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v1, v11

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    .line 253
    .local v10, interpolation:F
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v10

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    .line 254
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v10

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    goto/16 :goto_3

    .line 258
    .end local v10           #interpolation:F
    :pswitch_4
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    if-ge v1, v11, :cond_9

    .line 259
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    .line 260
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    .line 261
    iput-boolean v14, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    .line 262
    iput v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMode:I

    move v0, v14

    .line 263
    goto/16 :goto_0

    .line 266
    :cond_9
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFlingOverInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v2, v11

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    .line 269
    .restart local v10       #interpolation:F
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v10

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    .line 270
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v10

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    .line 272
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    if-ne v1, v2, :cond_5

    .line 273
    iput-boolean v14, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    .line 274
    iput v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMode:I

    goto/16 :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 219
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .parameter "extend"

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->timePassed()I

    move-result v0

    .line 500
    .local v0, passed:I
    add-int v1, v0, p1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    .line 501
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDurationReciprocal:F

    .line 502
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    .line 503
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 362
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartTime:J

    .line 363
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->lastFlingTimePassed:I

    .line 365
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMode:I

    .line 366
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    .line 368
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 370
    .local v1, velocity:F
    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mVelocity:F

    .line 371
    const/high16 v2, 0x447a

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    .line 372
    iput p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    .line 373
    iput p2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    .line 375
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    const/high16 v2, 0x3f80

    :goto_0
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffX:F

    .line 376
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    const/high16 v2, 0x3f80

    :goto_1
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffY:F

    .line 378
    mul-float v2, v1, v1

    const/high16 v3, 0x4000

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 380
    .local v0, totalDistance:I
    iput p5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinX:I

    .line 381
    if-gez p6, :cond_0

    const/4 p6, 0x0

    .end local p6
    :cond_0
    iput p6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxX:I

    .line 382
    iput p7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinY:I

    .line 383
    if-gez p8, :cond_1

    const/4 p8, 0x0

    .end local p8
    :cond_1
    iput p8, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxY:I

    .line 385
    int-to-float v2, v0

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    .line 386
    int-to-float v2, v0

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    .line 387
    return-void

    .line 375
    .end local v0           #totalDistance:I
    .restart local p6
    .restart local p8
    :cond_2
    int-to-float v2, p3

    div-float/2addr v2, v1

    goto :goto_0

    .line 376
    :cond_3
    int-to-float v2, p4

    div-float/2addr v2, v1

    goto :goto_1
.end method

.method public flingOver(IIIIIIII)V
    .locals 11
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 392
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartTime:J

    .line 393
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMode:I

    .line 395
    move/from16 v0, p5

    if-ge p1, v0, :cond_0

    move/from16 v1, p5

    :goto_0
    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    .line 396
    move/from16 v0, p7

    if-ge p2, v0, :cond_1

    move/from16 v1, p7

    :goto_1
    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    .line 398
    int-to-double v1, p3

    int-to-double v3, p4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v10, v1

    .line 399
    .local v10, velocity:F
    iput v10, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mVelocity:F

    .line 401
    const/4 v9, 0x0

    .line 402
    .local v9, flingDistance:I
    const/4 v8, 0x0

    .line 405
    .local v8, allowedToGoDistance:I
    if-eqz p4, :cond_4

    .line 406
    mul-int v1, p4, p4

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFlingOverDec:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v9, v1

    .line 407
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->allowedFlingOverY:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 409
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->allowedFlingOverY:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_2

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 410
    invoke-virtual/range {v1 .. v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->flingOverBack(IIIIII)V

    .line 440
    :goto_2
    return-void

    .end local v8           #allowedToGoDistance:I
    .end local v9           #flingDistance:I
    .end local v10           #velocity:F
    :cond_0
    move v1, p1

    .line 395
    goto :goto_0

    :cond_1
    move v1, p2

    .line 396
    goto :goto_1

    .line 412
    .restart local v8       #allowedToGoDistance:I
    .restart local v9       #flingDistance:I
    .restart local v10       #velocity:F
    :cond_2
    if-ge v8, v9, :cond_3

    .line 413
    move v9, v8

    .line 414
    mul-int/lit8 v1, v9, 0x2

    div-int/2addr v1, p4

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    .line 433
    :goto_3
    move/from16 v0, p5

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinX:I

    .line 434
    move/from16 v0, p6

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxX:I

    .line 435
    move/from16 v0, p7

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinY:I

    .line 436
    move/from16 v0, p8

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxY:I

    .line 438
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    int-to-float v2, v9

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    .line 439
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    int-to-float v2, v9

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    goto :goto_2

    .line 416
    :cond_3
    const/high16 v1, 0x447a

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mVelocity:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFlingOverDec:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    goto :goto_3

    .line 419
    :cond_4
    mul-int v1, p3, p3

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFlingOverDec:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v9, v1

    .line 420
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->allowedFlingOverX:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 422
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->allowedFlingOverX:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 423
    invoke-virtual/range {v1 .. v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->flingOverBack(IIIIII)V

    goto :goto_2

    .line 425
    :cond_5
    if-ge v8, v9, :cond_6

    .line 426
    move v9, v8

    .line 427
    mul-int/lit8 v1, v9, 0x2

    div-int/2addr v1, p3

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    goto :goto_3

    .line 429
    :cond_6
    const/high16 v1, 0x447a

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mVelocity:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFlingOverDec:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    goto :goto_3
.end method

.method public flingOverBack(IIIIII)V
    .locals 2
    .parameter "startX"
    .parameter "startY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 445
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartTime:J

    .line 446
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMode:I

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    .line 449
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->MAX_FLING_OVER_DURATION:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    .line 451
    iput p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    .line 452
    iput p2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    .line 454
    iput p3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinX:I

    .line 455
    iput p4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxX:I

    .line 456
    iput p5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMinY:I

    .line 457
    iput p6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMaxY:I

    .line 459
    if-gt p1, p3, :cond_0

    .end local p3
    :goto_0
    iput p3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    .line 460
    if-gt p2, p5, :cond_1

    .end local p5
    :goto_1
    iput p5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    .line 461
    return-void

    .restart local p3
    .restart local p5
    :cond_0
    move p3, p4

    .line 459
    goto :goto_0

    .end local p3
    :cond_1
    move p5, p6

    .line 460
    goto :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .parameter "finished"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    .line 111
    return-void
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    return v0
.end method

.method public getVelocity()F
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mVelocity:F

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    return v0
.end method

.method public setFinalX(I)V
    .locals 2
    .parameter "newX"

    .prologue
    .line 510
    iput p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    .line 511
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDeltaX:F

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    .line 513
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .parameter "newY"

    .prologue
    .line 516
    iput p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    .line 517
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDeltaY:F

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    .line 519
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 302
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->startScroll(IIIII)V

    .line 303
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 3
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    .line 320
    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mMode:I

    .line 321
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinished:Z

    .line 322
    iput p5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    .line 323
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartTime:J

    .line 324
    iput p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartX:I

    .line 325
    iput p2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartY:I

    .line 326
    add-int v0, p1, p3

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalX:I

    .line 327
    add-int v0, p2, p4

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mFinalY:I

    .line 328
    int-to-float v0, p3

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDeltaX:F

    .line 329
    int-to-float v0, p4

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDeltaY:F

    .line 330
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mDurationReciprocal:F

    .line 332
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mViscousFluidScale:F

    .line 334
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mViscousFluidNormalize:F

    .line 335
    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mViscousFluidNormalize:F

    .line 336
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 506
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
