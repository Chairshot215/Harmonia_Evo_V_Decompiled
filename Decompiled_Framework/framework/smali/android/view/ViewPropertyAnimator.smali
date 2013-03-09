.class public Landroid/view/ViewPropertyAnimator;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewPropertyAnimator$AnimatorEventListener;,
        Landroid/view/ViewPropertyAnimator$NameValuesHolder;,
        Landroid/view/ViewPropertyAnimator$PropertyBundle;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x200

.field private static final NONE:I = 0x0

.field private static final ROTATION:I = 0x10

.field private static final ROTATION_X:I = 0x20

.field private static final ROTATION_Y:I = 0x40

.field private static final SCALE_X:I = 0x4

.field private static final SCALE_Y:I = 0x8

.field private static final TRANSFORM_MASK:I = 0x1ff

.field private static final TRANSLATION_X:I = 0x1

.field private static final TRANSLATION_Y:I = 0x2

.field private static final X:I = 0x80

.field private static final Y:I = 0x100


# instance fields
.field private mAnimationStarter:Ljava/lang/Runnable;

.field private mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

.field private mAnimatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/view/ViewPropertyAnimator$PropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mDurationSet:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mInterpolatorSet:Z

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStartDelaySet:Z

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    iput-boolean v2, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    iput-boolean v2, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    iput-object v3, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    invoke-direct {v0, p0, v3}, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/ViewPropertyAnimator$1;)V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/ViewPropertyAnimator$1;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator$1;-><init>(Landroid/view/ViewPropertyAnimator;)V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->ensureTransformationInfo()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewPropertyAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/ViewPropertyAnimator;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setValue(IF)V

    return-void
.end method

.method private animateProperty(IF)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator;->getValue(I)F

    move-result v1

    sub-float v0, p2, v1

    invoke-direct {p0, p1, v1, v0}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IFF)V

    return-void
.end method

.method private animatePropertyBy(IF)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator;->getValue(I)F

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IFF)V

    return-void
.end method

.method private animatePropertyBy(IFF)V
    .locals 8

    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v1, 0x0

    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator$PropertyBundle;->cancel(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v2, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    if-nez v6, :cond_0

    move-object v1, v5

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_2
    new-instance v4, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    invoke-direct {v4, p1, p2, p3}, Landroid/view/ViewPropertyAnimator$NameValuesHolder;-><init>(IFF)V

    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getValue(I)F
    .locals 3

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v0, v1, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    goto :goto_0

    :sswitch_1
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    goto :goto_0

    :sswitch_2
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    goto :goto_0

    :sswitch_3
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    goto :goto_0

    :sswitch_4
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    goto :goto_0

    :sswitch_5
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    goto :goto_0

    :sswitch_6
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mLeft:I

    int-to-float v1, v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    add-float/2addr v1, v2

    goto :goto_0

    :sswitch_8
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mTop:I

    int-to-float v1, v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    add-float/2addr v1, v2

    goto :goto_0

    :sswitch_9
    iget v1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method private setValue(IF)V
    .locals 2

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v0, v1, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iput p2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    goto :goto_0

    :sswitch_1
    iput p2, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    goto :goto_0

    :sswitch_2
    iput p2, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    goto :goto_0

    :sswitch_3
    iput p2, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    goto :goto_0

    :sswitch_4
    iput p2, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    goto :goto_0

    :sswitch_5
    iput p2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    goto :goto_0

    :sswitch_6
    iput p2, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mLeft:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iput v1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    goto :goto_0

    :sswitch_8
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mTop:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iput v1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    goto :goto_0

    :sswitch_9
    iput p2, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method private startAnimation()V
    .locals 9

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    iget v6, v3, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    or-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    new-instance v7, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    invoke-direct {v7, v5, v2}, Landroid/view/ViewPropertyAnimator$PropertyBundle;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v6, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    if-eqz v6, :cond_1

    iget-wide v6, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_1
    iget-boolean v6, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    if-eqz v6, :cond_2

    iget-wide v6, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_2
    iget-boolean v6, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public alpha(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    return-object p0
.end method

.method public alphaBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public cancel()V
    .locals 6

    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartDelay()J
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public rotation(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    return-object p0
.end method

.method public rotationBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public rotationX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    return-object p0
.end method

.method public rotationXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public rotationY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    return-object p0
.end method

.method public rotationYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public scaleX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    return-object p0
.end method

.method public scaleXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public scaleY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    return-object p0
.end method

.method public scaleYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public setDuration(J)Landroid/view/ViewPropertyAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    iput-wide p1, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public setStartDelay(J)Landroid/view/ViewPropertyAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    iput-wide p1, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    return-object p0
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewPropertyAnimator;->startAnimation()V

    return-void
.end method

.method public translationX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    return-object p0
.end method

.method public translationXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public translationY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    return-object p0
.end method

.method public translationYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public x(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    return-object p0
.end method

.method public xBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public y(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    return-object p0
.end method

.method public yBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    return-object p0
.end method
