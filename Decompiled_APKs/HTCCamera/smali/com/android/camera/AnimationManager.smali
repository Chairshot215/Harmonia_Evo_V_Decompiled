.class public Lcom/android/camera/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;
    }
.end annotation


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeBarAnimation(Landroid/view/View;Landroid/view/View;JJJJ)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p6, p7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Lcom/android/camera/AnimationManager$2;

    invoke-direct {v2, p0}, Lcom/android/camera/AnimationManager$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_1
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, p4, p5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    invoke-virtual {v1, p8, p9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Lcom/android/camera/AnimationManager$3;

    invoke-direct {v2, p1}, Lcom/android/camera/AnimationManager$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1
.end method

.method public static hideBarAnimation(Landroid/view/View;JJ)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    invoke-virtual {v0, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Lcom/android/camera/AnimationManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/AnimationManager$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method public static showAlphaRotateAnimation(Landroid/view/View;IILcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/android/camera/AnimationManager$6;

    invoke-direct {v1, p3, p0, p1}, Lcom/android/camera/AnimationManager$6;-><init>(Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static showAlphaRotateAnimation(Lcom/android/camera/rotate/RotateImageView;II)V
    .locals 1

    new-instance v0, Lcom/android/camera/AnimationManager$4;

    invoke-direct {v0}, Lcom/android/camera/AnimationManager$4;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/AnimationManager;->showAlphaRotateAnimation(Landroid/view/View;IILcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;)V

    return-void
.end method

.method public static showAlphaRotateAnimation(Lcom/android/camera/rotate/RotateRelativeLayout;II)V
    .locals 1

    new-instance v0, Lcom/android/camera/AnimationManager$5;

    invoke-direct {v0}, Lcom/android/camera/AnimationManager$5;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/AnimationManager;->showAlphaRotateAnimation(Landroid/view/View;IILcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;)V

    return-void
.end method

.method public static showBarAnimation(Landroid/view/View;JJ)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    invoke-virtual {v0, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    invoke-virtual {v0, p5}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method public static showScaleAnimation(Landroid/view/View;JJFF)V
    .locals 9

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p5

    move v2, p6

    move v3, p5

    move v4, p6

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v0, p3, p4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    invoke-virtual {v0, p4, p5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    invoke-virtual {v0, p4, p5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
