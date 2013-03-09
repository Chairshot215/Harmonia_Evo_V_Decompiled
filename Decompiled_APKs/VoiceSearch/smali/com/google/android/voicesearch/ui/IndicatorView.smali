.class public Lcom/google/android/voicesearch/ui/IndicatorView;
.super Landroid/widget/RelativeLayout;
.source "IndicatorView.java"


# instance fields
.field private mAnimationRunning:Z

.field private mErrorRing:Landroid/widget/ImageView;

.field private mLevelIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

.field private mState:I

.field private mWaitingRing:Landroid/widget/ImageView;

.field private mWorkingAnimtor:Landroid/animation/ObjectAnimator;

.field private mWorkingAnimtorRev:Landroid/animation/ObjectAnimator;

.field private mWorkingRing:Landroid/widget/ImageView;

.field private mWorkingRingRev:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mAnimationRunning:Z

    .line 67
    invoke-direct {p0}, Lcom/google/android/voicesearch/ui/IndicatorView;->init()V

    .line 68
    return-void
.end method

.method private createViewForResId(I)Landroid/widget/ImageView;
    .locals 4
    .parameter "resId"

    .prologue
    const/4 v2, -0x1

    .line 165
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/ui/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, view:Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 173
    const/4 v2, 0x2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 174
    return-object v1
.end method

.method private varargs fadeIn([Landroid/widget/ImageView;)V
    .locals 7
    .parameter "views"

    .prologue
    .line 237
    move-object v0, p1

    .local v0, arr$:[Landroid/widget/ImageView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 238
    .local v3, view:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v3           #view:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private varargs fadeOut([Landroid/widget/ImageView;)V
    .locals 7
    .parameter "views"

    .prologue
    .line 231
    move-object v0, p1

    .local v0, arr$:[Landroid/widget/ImageView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 232
    .local v3, view:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v3           #view:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x7d0

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 71
    const v2, 0x7f02003d

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/ui/IndicatorView;->createViewForResId(I)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRing:Landroid/widget/ImageView;

    .line 72
    const v2, 0x7f02003e

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/ui/IndicatorView;->createViewForResId(I)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRingRev:Landroid/widget/ImageView;

    .line 73
    const/high16 v2, 0x7f02

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/ui/IndicatorView;->createViewForResId(I)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mErrorRing:Landroid/widget/ImageView;

    .line 74
    const v2, 0x7f02002e

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/ui/IndicatorView;->createViewForResId(I)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWaitingRing:Landroid/widget/ImageView;

    .line 76
    new-instance v2, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/ui/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mLevelIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    .line 78
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mLevelIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    .line 80
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRing:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 86
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRingRev:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 87
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mErrorRing:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 88
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWaitingRing:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 89
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mLevelIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v2, v4}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setAlpha(F)V

    .line 91
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRing:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/voicesearch/ui/IndicatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRingRev:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/voicesearch/ui/IndicatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mErrorRing:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/voicesearch/ui/IndicatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWaitingRing:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/voicesearch/ui/IndicatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mLevelIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/voicesearch/ui/IndicatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 99
    .local v0, interpolator:Landroid/view/animation/LinearInterpolator;
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRing:Landroid/widget/ImageView;

    const-string v3, "rotation"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtor:Landroid/animation/ObjectAnimator;

    .line 100
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 101
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 104
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRingRev:Landroid/widget/ImageView;

    const-string v3, "rotation"

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtorRev:Landroid/animation/ObjectAnimator;

    .line 106
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtorRev:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 107
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtorRev:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    iget-object v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtorRev:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 109
    return-void

    .line 99
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xb4t 0x43t
    .end array-data

    .line 104
    :array_1
    .array-data 0x4
        0x0t 0x0t 0xb4t 0x43t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private startAnimation()V
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mAnimationRunning:Z

    .line 135
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 136
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtorRev:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 137
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mLevelIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->start()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mAnimationRunning:Z

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mAnimationRunning:Z

    .line 150
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 151
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtorRev:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 153
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mLevelIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->stop()V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 114
    invoke-direct {p0}, Lcom/google/android/voicesearch/ui/IndicatorView;->startAnimation()V

    .line 115
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 120
    invoke-direct {p0}, Lcom/google/android/voicesearch/ui/IndicatorView;->stopAnimation()V

    .line 121
    return-void
.end method

.method public resetAnimation()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 160
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 161
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingAnimtorRev:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 162
    return-void
.end method

.method public setRms(F)V
    .locals 1
    .parameter "rmsdB"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mLevelIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setRmsdB(F)V

    .line 184
    return-void
.end method

.method public setState(I)V
    .locals 7
    .parameter "newState"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    iput p1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mState:I

    .line 196
    iget v0, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid state for IndicatorView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :pswitch_0
    new-array v0, v4, [Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRing:Landroid/widget/ImageView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRingRev:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/ui/IndicatorView;->fadeIn([Landroid/widget/ImageView;)V

    .line 199
    new-array v0, v5, [Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mLevelIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mErrorRing:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWaitingRing:Landroid/widget/ImageView;

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/ui/IndicatorView;->fadeOut([Landroid/widget/ImageView;)V

    .line 228
    :goto_0
    return-void

    .line 205
    :pswitch_1
    new-array v0, v3, [Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mLevelIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/ui/IndicatorView;->fadeIn([Landroid/widget/ImageView;)V

    .line 206
    new-array v0, v6, [Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRing:Landroid/widget/ImageView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRingRev:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mErrorRing:Landroid/widget/ImageView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWaitingRing:Landroid/widget/ImageView;

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/ui/IndicatorView;->fadeOut([Landroid/widget/ImageView;)V

    goto :goto_0

    .line 212
    :pswitch_2
    new-array v0, v3, [Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mErrorRing:Landroid/widget/ImageView;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/ui/IndicatorView;->fadeIn([Landroid/widget/ImageView;)V

    .line 213
    new-array v0, v6, [Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mLevelIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRing:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRingRev:Landroid/widget/ImageView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWaitingRing:Landroid/widget/ImageView;

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/ui/IndicatorView;->fadeOut([Landroid/widget/ImageView;)V

    goto :goto_0

    .line 219
    :pswitch_3
    new-array v0, v3, [Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWaitingRing:Landroid/widget/ImageView;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/ui/IndicatorView;->fadeIn([Landroid/widget/ImageView;)V

    .line 220
    new-array v0, v6, [Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mLevelIndicator:Lcom/google/android/voicesearch/actioneditor/SoundIndicator;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRing:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mWorkingRingRev:Landroid/widget/ImageView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/IndicatorView;->mErrorRing:Landroid/widget/ImageView;

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/ui/IndicatorView;->fadeOut([Landroid/widget/ImageView;)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
