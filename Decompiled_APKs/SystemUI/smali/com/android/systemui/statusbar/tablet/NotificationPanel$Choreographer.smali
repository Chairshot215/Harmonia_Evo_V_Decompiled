.class Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;
.super Ljava/lang/Object;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/NotificationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Choreographer"
.end annotation


# static fields
.field static final CLOSE_DURATION:I = 0xfa

.field static final OPEN_DURATION:I = 0xfa


# instance fields
.field final HYPERSPACE_OFFRAMP:I

.field mContentAnim:Landroid/animation/AnimatorSet;

.field mPanelHeight:I

.field mVisible:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->HYPERSPACE_OFFRAMP:I

    return-void
.end method


# virtual methods
.method createAnimation(Z)V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v6, 0x4348

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v5, v5, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget v5, v5, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget v5, v5, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrameMissingTranslation:F

    add-float/2addr v0, v5

    :cond_0
    add-float v3, v6, v0

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v5, v5, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v3, v7, v9

    aput v0, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-eqz p1, :cond_4

    sget-object v5, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v6, v5, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const-string v7, "alpha"

    new-array v8, v8, [F

    if-eqz p1, :cond_5

    const/high16 v5, 0x3f80

    :goto_2
    aput v5, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-eqz p1, :cond_6

    sget-object v5, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    :goto_3
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    :cond_2
    const/16 v6, 0xfa

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_3
    move v3, v4

    add-float v0, v4, v6

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    sget-object v5, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_3
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updateClearButton()V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method startAnimation(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->createAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mVisible:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updateClearButton()V

    :cond_0
    return-void
.end method
