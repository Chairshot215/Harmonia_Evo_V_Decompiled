.class public Lcom/google/android/talk/AnimatedBackgroundImageButton;
.super Landroid/widget/ImageButton;
.source "AnimatedBackgroundImageButton.java"


# instance fields
.field private mAnimationStarted:Z

.field private mCurrentAnimator:Landroid/animation/Animator;

.field protected mDurationMs:I

.field protected mEndAlpha:I

.field protected mStartAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "set"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-boolean v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mAnimationStarted:Z

    .line 41
    iput v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mStartAlpha:I

    .line 42
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mEndAlpha:I

    .line 43
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mDurationMs:I

    .line 47
    return-void
.end method

.method private resetAnimator()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 139
    const-string v2, "ImageAlpha"

    new-array v3, v6, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mStartAlpha:I

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mEndAlpha:I

    aput v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 141
    .local v0, a:Landroid/animation/ObjectAnimator;
    iget v2, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mDurationMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 142
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 143
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 145
    iget-boolean v1, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mAnimationStarted:Z

    .line 146
    .local v1, wasStarted:Z
    iget-object v2, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/google/android/talk/AnimatedBackgroundImageButton;->stopImageAnimation()V

    .line 149
    :cond_0
    iput-object v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mCurrentAnimator:Landroid/animation/Animator;

    .line 150
    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/google/android/talk/AnimatedBackgroundImageButton;->startImageAnimation()V

    .line 153
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 60
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 61
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/ImageButton;->onFinishInflate()V

    .line 52
    invoke-direct {p0}, Lcom/google/android/talk/AnimatedBackgroundImageButton;->resetAnimator()V

    .line 53
    return-void
.end method

.method public setImageAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/android/talk/AnimatedBackgroundImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 104
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public startImageAnimation()V
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mAnimationStarted:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mAnimationStarted:Z

    .line 120
    :cond_0
    return-void
.end method

.method public stopImageAnimation()V
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mAnimationStarted:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/AnimatedBackgroundImageButton;->mAnimationStarted:Z

    .line 133
    :cond_0
    return-void
.end method
