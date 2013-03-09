.class public Lcom/htc/launcher/widget/HtcScroller;
.super Ljava/lang/Object;
.source "HtcScroller.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HtcScroller"

.field private static final SCROLL_MODE:I

.field private static final localLOGD:Z


# instance fields
.field private mAborted:Z

.field private mCoeffX:F

.field private mCoeffY:F

.field private mCurrX:I

.field private mCurrXHp:F

.field private mCurrY:I

.field private mCurrYHp:F

.field private final mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private mViscousFluidNormalize:F

.field private mViscousFluidScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/widget/HtcScroller;->localLOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/launcher/widget/HtcScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 3
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mCoeffX:F

    .line 67
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mCoeffY:F

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    .line 93
    iput-object p2, p0, Lcom/htc/launcher/widget/HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 95
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeceleration:F

    .line 99
    return-void
.end method

.method private viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 418
    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    .line 419
    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    .line 420
    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p1, v1

    .line 426
    :goto_0
    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 427
    return p1

    .line 422
    :cond_0
    const v0, 0x3ebc5ab2

    .line 423
    .local v0, start:F
    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    .line 424
    sub-float v1, v3, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 434
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    .line 435
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrY:I

    .line 436
    iput-boolean v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    .line 437
    iput-boolean v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mAborted:Z

    .line 438
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 210
    iget-boolean v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 269
    :goto_0
    return v0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/HtcScroller;->timePassed()I

    move-result v7

    .line 216
    .local v7, timePassed:I
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mDuration:I

    if-ge v7, v0, :cond_4

    .line 217
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v10

    .line 269
    goto :goto_0

    .line 219
    :pswitch_0
    int-to-float v0, v7

    iget v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mDurationReciprocal:F

    mul-float v9, v0, v2

    .line 220
    .local v9, x:F
    iget-object v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    int-to-float v2, v7

    iget v3, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeltaX:F

    iget v5, p0, Lcom/htc/launcher/widget/HtcScroller;->mDuration:I

    int-to-float v5, v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/launcher/widget/EasingFunction;->currentResult(FFFFF)F

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrXHp:F

    .line 222
    iget-object v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    int-to-float v2, v7

    iget v3, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeltaY:F

    iget v5, p0, Lcom/htc/launcher/widget/HtcScroller;->mDuration:I

    int-to-float v5, v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/launcher/widget/EasingFunction;->currentResult(FFFFF)F

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrYHp:F

    .line 223
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrXHp:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    .line 224
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrYHp:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrY:I

    .line 225
    sget-boolean v0, Lcom/htc/launcher/widget/HtcScroller;->localLOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timePassed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    .line 229
    invoke-direct {p0, v9}, Lcom/htc/launcher/widget/HtcScroller;->viscousFluid(F)F

    move-result v9

    .line 233
    :goto_2
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartX:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeltaX:F

    mul-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    .line 234
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartY:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeltaY:F

    mul-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrY:I

    .line 235
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    if-ne v0, v1, :cond_1

    .line 236
    iput-boolean v10, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    goto/16 :goto_1

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    goto :goto_2

    .line 242
    .end local v9           #x:F
    :pswitch_1
    int-to-float v0, v7

    const/high16 v1, 0x447a

    div-float v8, v0, v1

    .line 243
    .local v8, timePassedSeconds:F
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mVelocity:F

    mul-float/2addr v0, v8

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeceleration:F

    mul-float/2addr v1, v8

    mul-float/2addr v1, v8

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float v6, v0, v1

    .line 246
    .local v6, distance:F
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartX:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mCoeffX:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    .line 248
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    .line 249
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    .line 251
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartY:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mCoeffY:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrY:I

    .line 253
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrY:I

    .line 254
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrY:I

    .line 256
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    if-ne v0, v1, :cond_1

    .line 257
    iput-boolean v10, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    goto/16 :goto_1

    .line 264
    .end local v6           #distance:F
    .end local v8           #timePassedSeconds:F
    :cond_4
    sget-boolean v0, Lcom/htc/launcher/widget/HtcScroller;->localLOGD:Z

    if-eqz v0, :cond_5

    const-string v0, "HtcScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time is up:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_5
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    .line 266
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrY:I

    .line 267
    iput-boolean v10, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    goto/16 :goto_1

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .parameter "extend"

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/htc/launcher/widget/HtcScroller;->timePassed()I

    move-result v0

    .line 448
    .local v0, passed:I
    add-int v1, v0, p1

    iput v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mDuration:I

    .line 449
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mDurationReciprocal:F

    .line 450
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    .line 451
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
    .line 379
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mMode:I

    .line 380
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    .line 382
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 384
    .local v1, velocity:F
    iput v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mVelocity:F

    .line 385
    const/high16 v2, 0x447a

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mDuration:I

    .line 387
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartTime:J

    .line 388
    iput p1, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartX:I

    .line 389
    iput p2, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartY:I

    .line 391
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f80

    :goto_0
    iput v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mCoeffX:F

    .line 392
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f80

    :goto_1
    iput v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mCoeffY:F

    .line 394
    mul-float v2, v1, v1

    const/high16 v3, 0x4000

    iget v4, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 396
    .local v0, totalDistance:I
    iput p5, p0, Lcom/htc/launcher/widget/HtcScroller;->mMinX:I

    .line 397
    iput p6, p0, Lcom/htc/launcher/widget/HtcScroller;->mMaxX:I

    .line 398
    iput p7, p0, Lcom/htc/launcher/widget/HtcScroller;->mMinY:I

    .line 399
    iput p8, p0, Lcom/htc/launcher/widget/HtcScroller;->mMaxY:I

    .line 402
    int-to-float v2, v0

    iget v3, p0, Lcom/htc/launcher/widget/HtcScroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    .line 404
    iget v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    iget v3, p0, Lcom/htc/launcher/widget/HtcScroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    .line 405
    iget v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    iget v3, p0, Lcom/htc/launcher/widget/HtcScroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    .line 407
    int-to-float v2, v0

    iget v3, p0, Lcom/htc/launcher/widget/HtcScroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    .line 409
    iget v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    iget v3, p0, Lcom/htc/launcher/widget/HtcScroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    .line 410
    iget v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    iget v3, p0, Lcom/htc/launcher/widget/HtcScroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    .line 411
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    .line 412
    return-void

    .line 391
    .end local v0           #totalDistance:I
    :cond_0
    int-to-float v2, p3

    div-float/2addr v2, v1

    goto :goto_0

    .line 392
    :cond_1
    int-to-float v2, p4

    div-float/2addr v2, v1

    goto :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .parameter "finished"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    .line 118
    return-void
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    return v0
.end method

.method public final getHighPrecisionCurrX()F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrXHp:F

    return v0
.end method

.method public final getHighPrecisionCurrY()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrYHp:F

    return v0
.end method

.method public final getScrollingProgress()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 199
    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeltaX:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    .line 201
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeltaX:F

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartY:I

    return v0
.end method

.method public isAborted()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mAborted:Z

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    return v0
.end method

.method public setFinalX(I)V
    .locals 2
    .parameter "newX"

    .prologue
    .line 458
    iput p1, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    .line 459
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeltaX:F

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    .line 461
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .parameter "newY"

    .prologue
    .line 464
    iput p1, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    .line 465
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    iget v1, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeltaY:F

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    .line 467
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 287
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/widget/HtcScroller;->startScroll(IIIII)V

    .line 288
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

    .line 304
    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mMode:I

    .line 305
    iput-boolean v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mAborted:Z

    .line 306
    iput-boolean v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    .line 307
    iput p5, p0, Lcom/htc/launcher/widget/HtcScroller;->mDuration:I

    .line 308
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartTime:J

    .line 309
    iput p1, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartX:I

    .line 310
    iput p2, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartY:I

    .line 311
    add-int v0, p1, p3

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    .line 312
    add-int v0, p2, p4

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    .line 313
    int-to-float v0, p3

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeltaX:F

    .line 314
    int-to-float v0, p4

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeltaY:F

    .line 315
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mDurationReciprocal:F

    .line 317
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mViscousFluidScale:F

    .line 319
    iput v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mViscousFluidNormalize:F

    .line 320
    invoke-direct {p0, v2}, Lcom/htc/launcher/widget/HtcScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mViscousFluidNormalize:F

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    .line 322
    return-void
.end method

.method public startScroll(IIIIILcom/htc/launcher/widget/EasingFunction;)V
    .locals 3
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"
    .parameter "function"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    .line 338
    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mMode:I

    .line 339
    iput-object p6, p0, Lcom/htc/launcher/widget/HtcScroller;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    .line 340
    iput-boolean v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mAborted:Z

    .line 341
    iput-boolean v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinished:Z

    .line 342
    iput p5, p0, Lcom/htc/launcher/widget/HtcScroller;->mDuration:I

    .line 343
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartTime:J

    .line 344
    iput p1, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartX:I

    .line 345
    iput p2, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartY:I

    .line 346
    add-int v0, p1, p3

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalX:I

    .line 347
    add-int v0, p2, p4

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mFinalY:I

    .line 348
    int-to-float v0, p3

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeltaX:F

    .line 349
    int-to-float v0, p4

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mDeltaY:F

    .line 350
    iget v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mDurationReciprocal:F

    .line 352
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mViscousFluidScale:F

    .line 354
    iput v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mViscousFluidNormalize:F

    .line 355
    invoke-direct {p0, v2}, Lcom/htc/launcher/widget/HtcScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/htc/launcher/widget/HtcScroller;->mViscousFluidNormalize:F

    .line 356
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 454
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/launcher/widget/HtcScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
