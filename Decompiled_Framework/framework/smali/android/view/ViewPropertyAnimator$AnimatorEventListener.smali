.class Landroid/view/ViewPropertyAnimator$AnimatorEventListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewPropertyAnimator;


# direct methods
.method private constructor <init>(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/ViewPropertyAnimator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;-><init>(Landroid/view/ViewPropertyAnimator;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$300(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    const/4 v0, 0x0

    iget-object v9, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v9}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->invalidateParentCaches()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    iget-object v9, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;
    invoke-static {v9}, Landroid/view/ViewPropertyAnimator;->access$300(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    iget v5, v4, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    and-int/lit16 v9, v5, 0x1ff

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v9}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->invalidate(Z)V

    :cond_0
    iget-object v7, v4, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    iget v9, v8, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    iget v10, v8, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    mul-float/2addr v10, v2

    add-float v6, v9, v10

    iget v9, v8, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    const/16 v10, 0x200

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v9}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->setAlphaNoInvalidation(F)Z

    move-result v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v9, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    iget v10, v8, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    #calls: Landroid/view/ViewPropertyAnimator;->setValue(IF)V
    invoke-static {v9, v10, v6}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;IF)V

    goto :goto_1

    :cond_2
    and-int/lit16 v9, v5, 0x1ff

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v9}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v9

    iget-object v9, v9, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    iget-object v9, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v9}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v9

    iget v10, v9, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v9, Landroid/view/View;->mPrivateFlags:I

    :cond_3
    iget-object v9, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v9}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/View;->invalidate(Z)V

    return-void
.end method
