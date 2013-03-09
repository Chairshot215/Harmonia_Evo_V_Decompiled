.class Lcom/google/android/talk/RosterListItem$2;
.super Ljava/lang/Object;
.source "RosterListItem.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/RosterListItem;->makeAnimator(ZLcom/google/android/talk/RosterListItem;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Lcom/google/android/talk/RosterListItem;

.field final synthetic val$a:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/google/android/talk/RosterListItem;Landroid/animation/AnimatorSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/google/android/talk/RosterListItem$2;->this$0:Lcom/google/android/talk/RosterListItem;

    iput-object p2, p0, Lcom/google/android/talk/RosterListItem$2;->val$a:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListItem$2;->mCanceled:Z

    .line 625
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$2;->this$0:Lcom/google/android/talk/RosterListItem;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/google/android/talk/RosterListItem;->setVideoPresenceAlpha(F)V

    .line 626
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListItem$2;->mCanceled:Z

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$2;->val$a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 621
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$2;->this$0:Lcom/google/android/talk/RosterListItem;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/google/android/talk/RosterListItem;->setVideoPresenceAlpha(F)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 612
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListItem$2;->mCanceled:Z

    .line 609
    return-void
.end method
