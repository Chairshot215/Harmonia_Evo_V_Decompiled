.class public Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;
.super Ljava/lang/Object;
.source "DisablingAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private final mAnimator:Landroid/animation/Animator;

.field private final mTarget:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 2
    .parameter "target"
    .parameter "animationId"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;->mTarget:Landroid/view/View;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;->mAnimator:Landroid/animation/Animator;

    .line 40
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;->mAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 42
    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 50
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 66
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;->mTarget:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 62
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 71
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;->mTarget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 56
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 46
    return-void
.end method
