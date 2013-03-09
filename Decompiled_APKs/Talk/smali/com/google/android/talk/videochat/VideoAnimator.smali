.class public Lcom/google/android/talk/videochat/VideoAnimator;
.super Ljava/lang/Object;
.source "VideoAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/VideoAnimator$RectSize;,
        Lcom/google/android/talk/videochat/VideoAnimator$Position;,
        Lcom/google/android/talk/videochat/VideoAnimator$RgbEvaluator;,
        Lcom/google/android/talk/videochat/VideoAnimator$RectSizeEvaluator;,
        Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;,
        Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;
    }
.end annotation


# static fields
.field private static final BACKGROUND_FINAL_COLOR:I = -0x1000000

.field private static CLIP_THRESHOLD:F = 0.0f

.field private static final FADE_SELF_FRAME_DURATION:I = 0x1f4

.field private static final FADE_TO_BLACK_DURATION:I = 0x1f4

.field private static final SELF_FRAME_VANITY_FINAL_RELATIVE_SIZE:F = 0.3f

.field private static final SELF_FRAME_VANITY_INITIAL_RELATIVE_SIZE:F = 0.27f

.field private static final STATE_REMOTE_FRAME_CORNER:I = 0x1

.field private static final STATE_REMOTE_FRAME_FULLSCREEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "talk:VideoAnimator"


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundFadeAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundImageAlpha:F

.field private mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

.field private mCornerFrameMarginBottom:I

.field private mCornerFrameMarginLeftRight:I

.field private mCornerFrameWidth:I

.field private mDecelerateQuintInterp:Landroid/view/animation/DecelerateInterpolator;

.field private mFadeInDuration:I

.field private mFlipZOrder:Z

.field private mFlipZOrderAnimator:Landroid/animation/ObjectAnimator;

.field private mFreezeFrame:Z

.field private mFreezeFrameAnimator:Landroid/animation/ObjectAnimator;

.field private mHandler:Landroid/os/Handler;

.field private mLeftCornerFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

.field private mLeftCornerFrameWidthLandscape:I

.field private mLeftCornerFrameWidthPortrait:I

.field private mLeftCornerPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

.field private mNeedToAnimateFramesToStandardPosition:Z

.field private mNeedToAnimateFramesToSwappedPosition:Z

.field private mNeedToAnimateToCorner:Z

.field private mNeedToAnimateToVanity:Z

.field private mNeedToPlaceFramesInStandardPosition:Z

.field private mNeedToPlaceFramesInSwappedPosition:Z

.field private mNeedToPlaceInCorner:Z

.field private mNeedToPlaceInVanity:Z

.field private mNeedToPlaceRemoteInFullscreen:Z

.field private mRemoteFrameAlpha:F

.field private mRemoteFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

.field private mRemoteFrameRawAspectRatio:F

.field private mRemoteFrameRect:Landroid/graphics/Rect;

.field private mRemoteFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

.field private mRemoteFrameState:I

.field private mRemoteFrameX:I

.field private mRemoteFrameXClip:F

.field private mRemoteFrameY:I

.field private mRemoteFrameYClip:F

.field private mReverseFlipZOrderAnimator:Landroid/animation/ObjectAnimator;

.field private mReverseSwapFramesAnimation:Landroid/animation/AnimatorSet;

.field private mRightCornerFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

.field private mRightCornerPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

.field private mSelfFrameAlpha:F

.field private mSelfFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mSelfFrameFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mSelfFrameFlyInAnimator:Landroid/animation/AnimatorSet;

.field private mSelfFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

.field private mSelfFrameMoveToCornerAnimator:Landroid/animation/AnimatorSet;

.field private mSelfFrameRawAspectRatio:F

.field private mSelfFrameRect:Landroid/graphics/Rect;

.field private mSelfFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

.field private mSelfFrameToCornerAnimDuration:I

.field private mSelfFrameX:I

.field private mSelfFrameXClip:F

.field private mSelfFrameY:I

.field private mSelfFrameYClip:F

.field private mSelfFramesAvailable:Z

.field private mSwapFramesAnimDuration:I

.field private mSwapFramesAnimation:Landroid/animation/AnimatorSet;

.field private mUnhideSelfFrameIfAvailable:Z

.field private mVanityFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

.field private mViewportHeight:I

.field private mViewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const v0, 0x3dcccccd

    sput v0, Lcom/google/android/talk/videochat/VideoAnimator;->CLIP_THRESHOLD:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "initiate"

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x1f4

    const/high16 v5, 0x3fc0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameAlpha:F

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRect:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameRect:Landroid/graphics/Rect;

    .line 55
    iput v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameX:I

    .line 56
    iput v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameY:I

    .line 57
    iput v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameX:I

    .line 58
    iput v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameY:I

    .line 61
    iput v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameAlpha:F

    .line 110
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4020

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mDecelerateQuintInterp:Landroid/view/animation/DecelerateInterpolator;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameToCornerAnimDuration:I

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSwapFramesAnimDuration:I

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFadeInDuration:I

    .line 228
    const-string v0, "remoteFrameAlpha"

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 229
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    if-eqz p2, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundColor:I

    .line 239
    :goto_0
    const-string v0, "backgroundColor"

    new-array v1, v4, [I

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundColor:I

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v3, -0x100

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundFadeAnimator:Landroid/animation/ObjectAnimator;

    .line 241
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundFadeAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/talk/videochat/VideoAnimator$RgbEvaluator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/talk/videochat/VideoAnimator$RgbEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundFadeAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundFadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCornerFrameMarginBottom:I

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCornerFrameMarginLeftRight:I

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCornerFrameWidth:I

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerFrameWidthLandscape:I

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerFrameWidthPortrait:I

    .line 256
    const-string v0, "selfFrameAlpha"

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 258
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 259
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 261
    const-string v0, "selfFrameAlpha"

    new-array v1, v4, [F

    fill-array-data v1, :array_2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 263
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 264
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/talk/videochat/VideoAnimator$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoAnimator$1;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    const-string v0, "flipZOrder"

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFlipZOrderAnimator:Landroid/animation/ObjectAnimator;

    .line 280
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFlipZOrderAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 281
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFlipZOrderAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 283
    const-string v0, "flipZOrder"

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mReverseFlipZOrderAnimator:Landroid/animation/ObjectAnimator;

    .line 285
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mReverseFlipZOrderAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 286
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mReverseFlipZOrderAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 288
    const-string v0, "freezeFrame"

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFreezeFrameAnimator:Landroid/animation/ObjectAnimator;

    .line 290
    return-void

    .line 236
    :cond_0
    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundColor:I

    goto/16 :goto_0

    .line 228
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 256
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 261
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 278
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 283
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 288
    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$102(Lcom/google/android/talk/videochat/VideoAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mUnhideSelfFrameIfAvailable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/VideoAnimator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFramesAvailable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/videochat/VideoAnimator;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public static calculateClippingParams(IIF)Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;
    .locals 10
    .parameter "viewportWidth"
    .parameter "viewportHeight"
    .parameter "rawFrameAspectRatio"

    .prologue
    const/high16 v9, 0x3f80

    .line 602
    new-instance v1, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    invoke-direct {v1}, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;-><init>()V

    .line 604
    .local v1, params:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;
    int-to-float v7, p0

    int-to-float v8, p1

    div-float v2, v7, v8

    .line 606
    .local v2, viewportAspectRatio:F
    const/4 v3, 0x0

    .line 607
    .local v3, xClip:F
    const/4 v5, 0x0

    .line 609
    .local v5, yClip:F
    const/4 v4, 0x0

    .line 610
    .local v4, xLetterBox:I
    const/4 v6, 0x0

    .line 612
    .local v6, yLetterBox:I
    cmpl-float v7, v2, p2

    if-lez v7, :cond_1

    .line 613
    div-float v7, v9, p2

    div-float v8, v9, v2

    sub-float/2addr v7, v8

    mul-float v0, v7, p2

    .line 615
    .local v0, clip:F
    sget v7, Lcom/google/android/talk/videochat/VideoAnimator;->CLIP_THRESHOLD:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_0

    .line 617
    int-to-float v7, p1

    mul-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v4, p0, v7

    .line 632
    :goto_0
    iput v3, v1, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mXClipPercentage:F

    .line 633
    iput v5, v1, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mYClipPercentage:F

    .line 634
    new-instance v7, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    sub-int v8, p0, v4

    sub-int v9, p1, v6

    invoke-direct {v7, v8, v9}, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;-><init>(II)V

    iput-object v7, v1, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mClippedSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    .line 636
    return-object v1

    .line 619
    :cond_0
    move v5, v0

    goto :goto_0

    .line 622
    .end local v0           #clip:F
    :cond_1
    sub-float v7, p2, v2

    div-float v0, v7, p2

    .line 624
    .restart local v0       #clip:F
    sget v7, Lcom/google/android/talk/videochat/VideoAnimator;->CLIP_THRESHOLD:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_2

    .line 626
    int-to-float v7, p0

    div-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v6, p1, v7

    goto :goto_0

    .line 628
    :cond_2
    move v3, v0

    goto :goto_0
.end method

.method private fullySpecified()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 413
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRawAspectRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameRawAspectRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeFullScreenValues()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 421
    new-instance v0, Lcom/google/android/talk/videochat/VideoAnimator$Position;

    iget v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoAnimator$Position;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    .line 424
    return-void
.end method

.method private initializeLeftCornerValues()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 442
    iget v4, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameRawAspectRatio:F

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 444
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerFrameWidthLandscape:I

    .line 450
    .local v0, frameWidth:I
    :goto_0
    int-to-float v4, v0

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 451
    .local v1, halfWidth:I
    iget v4, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCornerFrameMarginLeftRight:I

    add-int v2, v4, v1

    .line 452
    .local v2, xLeft:I
    iget v4, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    iget v5, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCornerFrameMarginBottom:I

    sub-int/2addr v4, v5

    int-to-float v5, v0

    iget v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameRawAspectRatio:F

    div-float/2addr v5, v6

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v3, v4, v5

    .line 455
    .local v3, yRemote:I
    new-instance v4, Lcom/google/android/talk/videochat/VideoAnimator$Position;

    invoke-direct {v4, v2, v3}, Lcom/google/android/talk/videochat/VideoAnimator$Position;-><init>(II)V

    iput-object v4, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    .line 456
    new-instance v4, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    int-to-float v5, v0

    iget v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameRawAspectRatio:F

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v4, v0, v5}, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;-><init>(II)V

    iput-object v4, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    .line 460
    return-void

    .line 447
    .end local v0           #frameWidth:I
    .end local v1           #halfWidth:I
    .end local v2           #xLeft:I
    .end local v3           #yRemote:I
    :cond_0
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerFrameWidthPortrait:I

    .restart local v0       #frameWidth:I
    goto :goto_0
.end method

.method private initializeRightCornerValues()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 428
    iget v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCornerFrameWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 429
    .local v0, halfWidth:I
    iget v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    iget v4, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCornerFrameMarginLeftRight:I

    sub-int/2addr v3, v4

    sub-int v1, v3, v0

    .line 430
    .local v1, xRight:I
    iget v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    iget v4, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCornerFrameMarginBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCornerFrameWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRawAspectRatio:F

    div-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v2, v3, v4

    .line 433
    .local v2, ySelf:I
    new-instance v3, Lcom/google/android/talk/videochat/VideoAnimator$Position;

    invoke-direct {v3, v1, v2}, Lcom/google/android/talk/videochat/VideoAnimator$Position;-><init>(II)V

    iput-object v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRightCornerPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    .line 434
    new-instance v3, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    iget v4, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCornerFrameWidth:I

    iget v5, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCornerFrameWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRawAspectRatio:F

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;-><init>(II)V

    iput-object v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRightCornerFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    .line 437
    return-void
.end method

.method private initializeStartupAnimators()V
    .locals 14

    .prologue
    const v8, 0x3e8a3d71

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 466
    new-instance v1, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    invoke-direct {v1}, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;-><init>()V

    .line 467
    .local v1, initialSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;
    new-instance v0, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    invoke-direct {v0}, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;-><init>()V

    .line 468
    .local v0, finalSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;
    iget v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRawAspectRatio:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 470
    iget v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v1, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->h:I

    .line 471
    iget v6, v1, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->h:I

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRawAspectRatio:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v1, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->w:I

    .line 472
    const v6, 0x3e99999a

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v0, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->h:I

    .line 473
    iget v6, v0, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->h:I

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRawAspectRatio:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v0, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->w:I

    .line 482
    :goto_0
    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mVanityFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    .line 484
    const-string v6, "selfFrameSize"

    new-instance v7, Lcom/google/android/talk/videochat/VideoAnimator$RectSizeEvaluator;

    invoke-direct {v7, p0, v13}, Lcom/google/android/talk/videochat/VideoAnimator$RectSizeEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v1, v8, v10

    aput-object v0, v8, v11

    invoke-static {p0, v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 488
    .local v2, selfFrameScaleAnimator:Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x4020

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 489
    const-string v6, "selfFramePosition"

    new-instance v7, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;

    invoke-direct {v7, p0, v13}, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    aput-object v9, v8, v11

    invoke-static {p0, v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 493
    .local v5, selfFrameTranslateToVanityAnimator:Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFlyInAnimator:Landroid/animation/AnimatorSet;

    .line 494
    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFlyInAnimator:Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    iget-object v8, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v8, v7, v10

    aput-object v2, v7, v11

    aput-object v5, v7, v12

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 498
    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFlyInAnimator:Landroid/animation/AnimatorSet;

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFadeInDuration:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 501
    const-string v6, "selfFramePosition"

    new-instance v7, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;

    invoke-direct {v7, p0, v13}, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRightCornerPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    aput-object v9, v8, v11

    invoke-static {p0, v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 505
    .local v4, selfFrameTranslateToCornerAnimator:Landroid/animation/ObjectAnimator;
    const-string v6, "selfFrameSize"

    new-instance v7, Lcom/google/android/talk/videochat/VideoAnimator$RectSizeEvaluator;

    invoke-direct {v7, p0, v13}, Lcom/google/android/talk/videochat/VideoAnimator$RectSizeEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mVanityFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRightCornerFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    aput-object v9, v8, v11

    invoke-static {p0, v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 510
    .local v3, selfFrameShrinkToCornerAnimator:Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameMoveToCornerAnimator:Landroid/animation/AnimatorSet;

    .line 511
    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameMoveToCornerAnimator:Landroid/animation/AnimatorSet;

    new-array v7, v12, [Landroid/animation/Animator;

    aput-object v4, v7, v10

    aput-object v3, v7, v11

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 514
    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameMoveToCornerAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 515
    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameMoveToCornerAnimator:Landroid/animation/AnimatorSet;

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameToCornerAnimDuration:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 516
    return-void

    .line 476
    .end local v2           #selfFrameScaleAnimator:Landroid/animation/ObjectAnimator;
    .end local v3           #selfFrameShrinkToCornerAnimator:Landroid/animation/ObjectAnimator;
    .end local v4           #selfFrameTranslateToCornerAnimator:Landroid/animation/ObjectAnimator;
    .end local v5           #selfFrameTranslateToVanityAnimator:Landroid/animation/ObjectAnimator;
    :cond_0
    iget v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v1, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->w:I

    .line 477
    iget v6, v1, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->w:I

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRawAspectRatio:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v1, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->h:I

    .line 478
    const v6, 0x3e99999a

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v0, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->w:I

    .line 479
    iget v6, v0, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->w:I

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRawAspectRatio:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v0, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->h:I

    goto/16 :goto_0
.end method

.method private initializeSwapAnimators()V
    .locals 25

    .prologue
    .line 519
    const-string v20, "selfFramePosition"

    new-instance v21, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mRightCornerPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 523
    .local v19, selfFrameTranslateToCenterAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "selfFrameSize"

    new-instance v21, Lcom/google/android/talk/videochat/VideoAnimator$RectSizeEvaluator;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoAnimator$RectSizeEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mRightCornerFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mClippedSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 527
    .local v18, selfFrameGrowToFullScreenAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "selfFrameXClip"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mXClipPercentage:F

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 529
    .local v16, selfFrameClipXToViewportAspectRatioAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "selfFrameYClip"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mYClipPercentage:F

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 532
    .local v17, selfFrameClipYToViewportAspectRatioAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "remoteFramePosition"

    new-instance v21, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 536
    .local v7, remoteFrameTranslateToCornerAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "remoteFrameSize"

    new-instance v21, Lcom/google/android/talk/videochat/VideoAnimator$RectSizeEvaluator;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoAnimator$RectSizeEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mClippedSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 540
    .local v6, remoteFrameShrinkToCornerAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "remoteFrameXClip"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mXClipPercentage:F

    move/from16 v23, v0

    aput v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 542
    .local v4, remoteFrameRemoveXClipAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "remoteFrameYClip"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mYClipPercentage:F

    move/from16 v23, v0

    aput v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 545
    .local v5, remoteFrameRemoveYClipAnimator:Landroid/animation/ObjectAnimator;
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/videochat/VideoAnimator;->mSwapFramesAnimation:Landroid/animation/AnimatorSet;

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mSwapFramesAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v19, v21, v22

    const/16 v22, 0x1

    aput-object v18, v21, v22

    const/16 v22, 0x2

    aput-object v16, v21, v22

    const/16 v22, 0x3

    aput-object v17, v21, v22

    const/16 v22, 0x4

    aput-object v7, v21, v22

    const/16 v22, 0x5

    aput-object v6, v21, v22

    const/16 v22, 0x6

    aput-object v4, v21, v22

    const/16 v22, 0x7

    aput-object v5, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mSwapFramesAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mDecelerateQuintInterp:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mSwapFramesAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mSwapFramesAnimDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 559
    const-string v20, "selfFramePosition"

    new-instance v21, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mRightCornerPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 563
    .local v15, reverseSelfFrameTranslateToCenterAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "selfFrameSize"

    new-instance v21, Lcom/google/android/talk/videochat/VideoAnimator$RectSizeEvaluator;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoAnimator$RectSizeEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mClippedSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mRightCornerFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 567
    .local v14, reverseSelfFrameGrowToFullScreenAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "selfFrameXClip"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mXClipPercentage:F

    move/from16 v23, v0

    aput v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 569
    .local v12, reverseSelfFrameClipXToViewportAspectRatioAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "selfFrameYClip"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mYClipPercentage:F

    move/from16 v23, v0

    aput v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 572
    .local v13, reverseSelfFrameClipYToViewportAspectRatioAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "remoteFramePosition"

    new-instance v21, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 576
    .local v11, reverseRemoteFrameTranslateToCornerAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "remoteFrameSize"

    new-instance v21, Lcom/google/android/talk/videochat/VideoAnimator$RectSizeEvaluator;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoAnimator$RectSizeEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mClippedSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 580
    .local v10, reverseRemoteFrameShrinkToCornerAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "remoteFrameXClip"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mXClipPercentage:F

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 582
    .local v8, reverseRemoteFrameRemoveXClipAnimator:Landroid/animation/ObjectAnimator;
    const-string v20, "remoteFrameYClip"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mYClipPercentage:F

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 585
    .local v9, reverseRemoteFrameRemoveYClipAnimator:Landroid/animation/ObjectAnimator;
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/videochat/VideoAnimator;->mReverseSwapFramesAnimation:Landroid/animation/AnimatorSet;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mReverseSwapFramesAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v15, v21, v22

    const/16 v22, 0x1

    aput-object v14, v21, v22

    const/16 v22, 0x2

    aput-object v12, v21, v22

    const/16 v22, 0x3

    aput-object v13, v21, v22

    const/16 v22, 0x4

    aput-object v11, v21, v22

    const/16 v22, 0x5

    aput-object v10, v21, v22

    const/16 v22, 0x6

    aput-object v8, v21, v22

    const/16 v22, 0x7

    aput-object v9, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mReverseSwapFramesAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mDecelerateQuintInterp:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mReverseSwapFramesAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator;->mSwapFramesAnimDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 597
    return-void
.end method

.method private onFullySpecified()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 380
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->initializeLeftCornerValues()V

    .line 381
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->initializeSwapAnimators()V

    .line 383
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceRemoteInFullscreen:Z

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->placeRemoteFrameInFullscreen()V

    .line 399
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameState:I

    if-ne v0, v2, :cond_5

    .line 400
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameSize(Lcom/google/android/talk/videochat/VideoAnimator$RectSize;)V

    .line 401
    invoke-virtual {p0, v3}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameXClip(F)V

    .line 402
    invoke-virtual {p0, v3}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameYClip(F)V

    .line 403
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFramePosition(Lcom/google/android/talk/videochat/VideoAnimator$Position;)V

    .line 410
    :goto_1
    return-void

    .line 385
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateFramesToSwappedPosition:Z

    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {p0, v2}, Lcom/google/android/talk/videochat/VideoAnimator;->placeFramesInSwappedPositions(Z)V

    .line 387
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateFramesToSwappedPosition:Z

    goto :goto_0

    .line 388
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceFramesInSwappedPosition:Z

    if-eqz v0, :cond_3

    .line 389
    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->placeFramesInSwappedPositions(Z)V

    .line 390
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceFramesInSwappedPosition:Z

    goto :goto_0

    .line 391
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateFramesToStandardPosition:Z

    if-eqz v0, :cond_4

    .line 392
    invoke-virtual {p0, v2}, Lcom/google/android/talk/videochat/VideoAnimator;->placeFramesInStandardPositions(Z)V

    .line 393
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateFramesToStandardPosition:Z

    goto :goto_0

    .line 394
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceFramesInStandardPosition:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->placeFramesInStandardPositions(Z)V

    .line 396
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceFramesInSwappedPosition:Z

    goto :goto_0

    .line 405
    :cond_5
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mClippedSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameSize(Lcom/google/android/talk/videochat/VideoAnimator$RectSize;)V

    .line 406
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mXClipPercentage:F

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameXClip(F)V

    .line 407
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mYClipPercentage:F

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameYClip(F)V

    .line 408
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFramePosition(Lcom/google/android/talk/videochat/VideoAnimator$Position;)V

    goto :goto_1
.end method

.method private onStartupValuesSpecified()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    iget v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRawAspectRatio:F

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoAnimator;->calculateClippingParams(IIF)Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    .line 356
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->initializeRightCornerValues()V

    .line 357
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->initializeFullScreenValues()V

    .line 358
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->initializeStartupAnimators()V

    .line 360
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateToVanity:Z

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p0, v4}, Lcom/google/android/talk/videochat/VideoAnimator;->placeSelfFrameInVanity(Z)V

    .line 362
    iput-boolean v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateToVanity:Z

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceInVanity:Z

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p0, v3}, Lcom/google/android/talk/videochat/VideoAnimator;->placeSelfFrameInVanity(Z)V

    .line 365
    iput-boolean v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceInVanity:Z

    goto :goto_0

    .line 366
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateToCorner:Z

    if-eqz v0, :cond_3

    .line 367
    invoke-virtual {p0, v4}, Lcom/google/android/talk/videochat/VideoAnimator;->placeSelfFrameInCorner(Z)V

    .line 368
    iput-boolean v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateToCorner:Z

    goto :goto_0

    .line 369
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceInCorner:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0, v3}, Lcom/google/android/talk/videochat/VideoAnimator;->placeSelfFrameInCorner(Z)V

    .line 371
    iput-boolean v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceInCorner:Z

    goto :goto_0
.end method

.method private varargs startAnimationsOnMainThread([Landroid/animation/Animator;)V
    .locals 2
    .parameter "animators"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 937
    const-string v0, "talk:VideoAnimator"

    const-string v1, "Can\'t run animation. mHandler hasn\'t been set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/talk/videochat/VideoAnimator$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/talk/videochat/VideoAnimator$2;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;[Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private startupValuesSpecified()Z
    .locals 2

    .prologue
    .line 376
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRawAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unprotectedPlaceFramesInStandardPositions(Z)V
    .locals 6
    .parameter "animate"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 772
    if-eqz p1, :cond_0

    .line 773
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFreezeFrameAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mReverseSwapFramesAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 774
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mReverseSwapFramesAnimation:Landroid/animation/AnimatorSet;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mReverseFlipZOrderAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFreezeFrameAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startAnimationsOnMainThread([Landroid/animation/Animator;)V

    .line 792
    :goto_0
    iput v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameState:I

    .line 793
    return-void

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRightCornerFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFrameSize(Lcom/google/android/talk/videochat/VideoAnimator$RectSize;)V

    .line 778
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRightCornerPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFramePosition(Lcom/google/android/talk/videochat/VideoAnimator$Position;)V

    .line 779
    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFrameXClip(F)V

    .line 780
    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFrameYClip(F)V

    .line 782
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mClippedSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameSize(Lcom/google/android/talk/videochat/VideoAnimator$RectSize;)V

    .line 783
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFramePosition(Lcom/google/android/talk/videochat/VideoAnimator$Position;)V

    .line 784
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mXClipPercentage:F

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameXClip(F)V

    .line 785
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mYClipPercentage:F

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameYClip(F)V

    .line 787
    new-array v0, v5, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startAnimationsOnMainThread([Landroid/animation/Animator;)V

    .line 789
    invoke-virtual {p0, v3}, Lcom/google/android/talk/videochat/VideoAnimator;->setFlipZOrder(I)V

    goto :goto_0
.end method

.method private unprotectedPlaceFramesInSwappedPositions(Z)V
    .locals 6
    .parameter "animate"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 736
    if-eqz p1, :cond_0

    .line 737
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFreezeFrameAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSwapFramesAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 738
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSwapFramesAnimation:Landroid/animation/AnimatorSet;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFlipZOrderAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFreezeFrameAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startAnimationsOnMainThread([Landroid/animation/Animator;)V

    .line 756
    :goto_0
    iput v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameState:I

    .line 757
    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mClippedSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFrameSize(Lcom/google/android/talk/videochat/VideoAnimator$RectSize;)V

    .line 742
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFramePosition(Lcom/google/android/talk/videochat/VideoAnimator$Position;)V

    .line 743
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mXClipPercentage:F

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFrameXClip(F)V

    .line 744
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    iget v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mYClipPercentage:F

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFrameYClip(F)V

    .line 746
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameSize(Lcom/google/android/talk/videochat/VideoAnimator$RectSize;)V

    .line 747
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLeftCornerPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFramePosition(Lcom/google/android/talk/videochat/VideoAnimator$Position;)V

    .line 748
    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameXClip(F)V

    .line 749
    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameYClip(F)V

    .line 751
    new-array v0, v5, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startAnimationsOnMainThread([Landroid/animation/Animator;)V

    .line 753
    invoke-virtual {p0, v3}, Lcom/google/android/talk/videochat/VideoAnimator;->setFlipZOrder(I)V

    goto :goto_0
.end method

.method private unprotectedPlaceRemoteFrameInFullscreen()V
    .locals 3

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFramePosition(Lcom/google/android/talk/videochat/VideoAnimator$Position;)V

    .line 719
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;->mClippedSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameSize(Lcom/google/android/talk/videochat/VideoAnimator$RectSize;)V

    .line 720
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startAnimationsOnMainThread([Landroid/animation/Animator;)V

    .line 721
    return-void
.end method

.method private unprotectedPlaceSelfFrameInCorner(Z)V
    .locals 5
    .parameter "animate"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 699
    if-eqz p1, :cond_0

    .line 700
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFreezeFrameAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameMoveToCornerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 701
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameMoveToCornerAnimator:Landroid/animation/AnimatorSet;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFreezeFrameAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startAnimationsOnMainThread([Landroid/animation/Animator;)V

    .line 707
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRightCornerFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFrameSize(Lcom/google/android/talk/videochat/VideoAnimator$RectSize;)V

    .line 704
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRightCornerPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFramePosition(Lcom/google/android/talk/videochat/VideoAnimator$Position;)V

    .line 705
    new-array v0, v4, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startAnimationsOnMainThread([Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method private unprotectedPlaceSelfFrameInVanity(Z)V
    .locals 5
    .parameter "animate"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 676
    if-eqz p1, :cond_0

    .line 677
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFreezeFrameAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFlyInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 678
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFlyInAnimator:Landroid/animation/AnimatorSet;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFreezeFrameAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startAnimationsOnMainThread([Landroid/animation/Animator;)V

    .line 684
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCenterScreenPosition:Lcom/google/android/talk/videochat/VideoAnimator$Position;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFramePosition(Lcom/google/android/talk/videochat/VideoAnimator$Position;)V

    .line 681
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mVanityFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setSelfFrameSize(Lcom/google/android/talk/videochat/VideoAnimator$RectSize;)V

    .line 682
    new-array v0, v4, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startAnimationsOnMainThread([Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method private updateRemoteFrameRect()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 908
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameX:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameY:I

    if-nez v2, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    iget v2, v2, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->w:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 912
    .local v1, halfWidth:I
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    iget v2, v2, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->h:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 913
    .local v0, halfHeight:I
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameX:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 914
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameY:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 915
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameX:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 916
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameY:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private updateSelfFrameRect()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 920
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    if-nez v2, :cond_0

    .line 929
    :goto_0
    return-void

    .line 923
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    iget v2, v2, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->w:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 924
    .local v1, halfWidth:I
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    iget v2, v2, Lcom/google/android/talk/videochat/VideoAnimator$RectSize;->h:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 925
    .local v0, halfHeight:I
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameX:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 926
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameY:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 927
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameX:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 928
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameY:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundColor:I

    return v0
.end method

.method public getBackgroundImageAlpha()F
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundImageAlpha:F

    return v0
.end method

.method public getFlipZOrder()Z
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFlipZOrder:Z

    return v0
.end method

.method public getFreezeFrame()Z
    .locals 1

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFreezeFrame:Z

    return v0
.end method

.method public getRemoteFrameAlpha()F
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameAlpha:F

    return v0
.end method

.method public getRemoteFrameRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRemoteFrameXClip()F
    .locals 1

    .prologue
    .line 861
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameXClip:F

    return v0
.end method

.method public getRemoteFrameYClip()F
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameYClip:F

    return v0
.end method

.method public getSelfFrameAlpha()F
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameAlpha:F

    return v0
.end method

.method public getSelfFrameRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelfFrameXClip()F
    .locals 1

    .prologue
    .line 879
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameXClip:F

    return v0
.end method

.method public getSelfFrameYClip()F
    .locals 1

    .prologue
    .line 888
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameYClip:F

    return v0
.end method

.method public placeFramesInStandardPositions(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x1

    .line 760
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->fullySpecified()Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    if-eqz p1, :cond_0

    .line 762
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateFramesToStandardPosition:Z

    .line 769
    :goto_0
    return-void

    .line 764
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceFramesInStandardPosition:Z

    goto :goto_0

    .line 767
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoAnimator;->unprotectedPlaceFramesInStandardPositions(Z)V

    goto :goto_0
.end method

.method public placeFramesInSwappedPositions(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x1

    .line 724
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->fullySpecified()Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    if-eqz p1, :cond_0

    .line 726
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateFramesToSwappedPosition:Z

    .line 733
    :goto_0
    return-void

    .line 728
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceFramesInSwappedPosition:Z

    goto :goto_0

    .line 731
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoAnimator;->unprotectedPlaceFramesInSwappedPositions(Z)V

    goto :goto_0
.end method

.method public placeRemoteFrameInFullscreen()V
    .locals 1

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->fullySpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceRemoteInFullscreen:Z

    .line 715
    :goto_0
    return-void

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->unprotectedPlaceRemoteFrameInFullscreen()V

    goto :goto_0
.end method

.method public placeSelfFrameInCorner(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x1

    .line 687
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->startupValuesSpecified()Z

    move-result v0

    if-nez v0, :cond_1

    .line 688
    if-eqz p1, :cond_0

    .line 689
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateToCorner:Z

    .line 696
    :goto_0
    return-void

    .line 691
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceInCorner:Z

    goto :goto_0

    .line 694
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoAnimator;->unprotectedPlaceSelfFrameInCorner(Z)V

    goto :goto_0
.end method

.method public placeSelfFrameInVanity(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x1

    .line 664
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->startupValuesSpecified()Z

    move-result v0

    if-nez v0, :cond_1

    .line 665
    if-eqz p1, :cond_0

    .line 666
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateToVanity:Z

    .line 673
    :goto_0
    return-void

    .line 668
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceInVanity:Z

    goto :goto_0

    .line 671
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoAnimator;->unprotectedPlaceSelfFrameInVanity(Z)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 822
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundColor:I

    .line 823
    return-void
.end method

.method public setBackgroundImageAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 818
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundImageAlpha:F

    .line 819
    return-void
.end method

.method public setBackgroundToBlack(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 796
    if-eqz p1, :cond_0

    .line 797
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundFadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_0
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setFlipZOrder(I)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 892
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFlipZOrder:Z

    .line 893
    return-void

    .line 892
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFreezeFrame(I)V
    .locals 1
    .parameter "freeze"

    .prologue
    .line 900
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mFreezeFrame:Z

    .line 901
    return-void

    .line 900
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRemoteFrameAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 836
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameAlpha:F

    .line 837
    return-void
.end method

.method public setRemoteFrameAspectRatio(F)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 315
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameRawAspectRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameRawAspectRatio:F

    .line 322
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    iget v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameRawAspectRatio:F

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoAnimator;->calculateClippingParams(IIF)Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameFullscreenClippingParams:Lcom/google/android/talk/videochat/VideoAnimator$ClippingParams;

    .line 327
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->fullySpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->onFullySpecified()V

    goto :goto_0
.end method

.method public setRemoteFramePosition(Lcom/google/android/talk/videochat/VideoAnimator$Position;)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 844
    iget v0, p1, Lcom/google/android/talk/videochat/VideoAnimator$Position;->x:I

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameX:I

    .line 845
    iget v0, p1, Lcom/google/android/talk/videochat/VideoAnimator$Position;->y:I

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameY:I

    .line 846
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateRemoteFrameRect()V

    .line 847
    return-void
.end method

.method public setRemoteFrameSize(Lcom/google/android/talk/videochat/VideoAnimator$RectSize;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 826
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    .line 827
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateRemoteFrameRect()V

    .line 828
    return-void
.end method

.method public setRemoteFrameXClip(F)V
    .locals 0
    .parameter "clip"

    .prologue
    .line 856
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameXClip:F

    .line 857
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateRemoteFrameRect()V

    .line 858
    return-void
.end method

.method public setRemoteFrameYClip(F)V
    .locals 0
    .parameter "clip"

    .prologue
    .line 865
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteFrameYClip:F

    .line 866
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateRemoteFrameRect()V

    .line 867
    return-void
.end method

.method public setSelfFrameAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 840
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameAlpha:F

    .line 841
    return-void
.end method

.method public setSelfFrameAspectRatio(F)V
    .locals 1
    .parameter "ar"

    .prologue
    .line 298
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRawAspectRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameRawAspectRatio:F

    .line 305
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->startupValuesSpecified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->onStartupValuesSpecified()V

    .line 309
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->fullySpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->onFullySpecified()V

    goto :goto_0
.end method

.method public setSelfFramePosition(Lcom/google/android/talk/videochat/VideoAnimator$Position;)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 850
    iget v0, p1, Lcom/google/android/talk/videochat/VideoAnimator$Position;->x:I

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameX:I

    .line 851
    iget v0, p1, Lcom/google/android/talk/videochat/VideoAnimator$Position;->y:I

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameY:I

    .line 852
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateSelfFrameRect()V

    .line 853
    return-void
.end method

.method public setSelfFrameSize(Lcom/google/android/talk/videochat/VideoAnimator$RectSize;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 831
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameSize:Lcom/google/android/talk/videochat/VideoAnimator$RectSize;

    .line 832
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateSelfFrameRect()V

    .line 833
    return-void
.end method

.method public setSelfFrameXClip(F)V
    .locals 0
    .parameter "clip"

    .prologue
    .line 874
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameXClip:F

    .line 875
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateSelfFrameRect()V

    .line 876
    return-void
.end method

.method public setSelfFrameYClip(F)V
    .locals 0
    .parameter "clip"

    .prologue
    .line 883
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameYClip:F

    .line 884
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateSelfFrameRect()V

    .line 885
    return-void
.end method

.method public setSelfFramesAvailable()V
    .locals 3

    .prologue
    .line 809
    const-string v0, "talk:VideoAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelfFramesAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mUnhideSelfFrameIfAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFramesAvailable:Z

    .line 811
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mUnhideSelfFrameIfAvailable:Z

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mUnhideSelfFrameIfAvailable:Z

    .line 815
    :cond_0
    return-void
.end method

.method public setSelfFramesUnavailable()V
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFramesAvailable:Z

    .line 805
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mSelfFrameFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 806
    return-void
.end method

.method public setViewportSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 333
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    if-ne p2, v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    .line 339
    iput p2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    .line 341
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->startupValuesSpecified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->onStartupValuesSpecified()V

    .line 345
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->fullySpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->onFullySpecified()V

    goto :goto_0
.end method

.method public supplyMainThreadHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mHandler:Landroid/os/Handler;

    .line 295
    return-void
.end method
