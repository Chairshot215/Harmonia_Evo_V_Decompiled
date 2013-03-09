.class public Lcom/google/android/gm/AnimatingViewData;
.super Ljava/lang/Object;
.source "AnimatingViewData.java"


# static fields
.field private static sAnimationDelay:I

.field private static sBatchAnimationDelay:I


# instance fields
.field public animatedHeight:I

.field public cancelled:Z

.field public checked:Z

.field public id:J

.field public initialHeight:I

.field private mAnimator:Landroid/animation/Animator;

.field mDataSetObservable:Landroid/database/DataSetObservable;

.field mNext:Lcom/google/android/gm/AnimatingViewData;

.field private mView:Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;

.field public position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 38
    sput v0, Lcom/google/android/gm/AnimatingViewData;->sAnimationDelay:I

    .line 40
    sput v0, Lcom/google/android/gm/AnimatingViewData;->sBatchAnimationDelay:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lcom/google/android/gm/AnimatingViewData;->initialHeight:I

    .line 24
    iput v1, p0, Lcom/google/android/gm/AnimatingViewData;->animatedHeight:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/AnimatingViewData;->checked:Z

    .line 43
    sget v0, Lcom/google/android/gm/AnimatingViewData;->sAnimationDelay:I

    if-ne v0, v1, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/AnimatingViewData;->sAnimationDelay:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/AnimatingViewData;->sBatchAnimationDelay:I

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/gm/AnimatingViewData;->cancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/AnimatingViewData;->cancelled:Z

    .line 93
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 95
    :cond_0
    return-void
.end method

.method public endAnimation()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 88
    :cond_0
    return-void
.end method

.method public getView()Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mView:Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;

    return-object v0
.end method

.method public makeDeletingAnimation(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .parameter "animationTime"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 51
    const-string v0, "animatedHeight"

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/google/android/gm/AnimatingViewData;->initialHeight:I

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    .line 52
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    iget-object v2, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    iget-boolean v0, p0, Lcom/google/android/gm/AnimatingViewData;->checked:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/gm/AnimatingViewData;->sBatchAnimationDelay:I

    int-to-long v0, v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 54
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 55
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 56
    return-void

    .line 53
    :cond_0
    sget v0, Lcom/google/android/gm/AnimatingViewData;->sAnimationDelay:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public set(Lcom/google/android/gm/AnimatingViewData;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 66
    iget v0, p1, Lcom/google/android/gm/AnimatingViewData;->position:I

    iput v0, p0, Lcom/google/android/gm/AnimatingViewData;->position:I

    .line 67
    iget-wide v0, p1, Lcom/google/android/gm/AnimatingViewData;->id:J

    iput-wide v0, p0, Lcom/google/android/gm/AnimatingViewData;->id:J

    .line 68
    iget v0, p1, Lcom/google/android/gm/AnimatingViewData;->initialHeight:I

    iput v0, p0, Lcom/google/android/gm/AnimatingViewData;->initialHeight:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/AnimatingViewData;->cancelled:Z

    .line 70
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 61
    iput p1, p0, Lcom/google/android/gm/AnimatingViewData;->animatedHeight:I

    .line 62
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 63
    return-void
.end method

.method public setView(Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/gm/AnimatingViewData;->mView:Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;

    .line 78
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gm/AnimatingViewData;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 82
    return-void
.end method
