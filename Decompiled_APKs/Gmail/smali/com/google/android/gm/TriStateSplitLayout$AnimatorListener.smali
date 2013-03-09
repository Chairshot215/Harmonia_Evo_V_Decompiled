.class abstract Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;
.super Ljava/lang/Object;
.source "TriStateSplitLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/TriStateSplitLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TriStateSplitLayout;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/TriStateSplitLayout;Lcom/google/android/gm/TriStateSplitLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 795
    invoke-direct {p0, p1}, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;-><init>(Lcom/google/android/gm/TriStateSplitLayout;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 800
    const-string v0, "Gmail"

    const-string v1, "Cancelling animation (this=%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 801
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gm/TriStateSplitLayout;->mAnimatingFade:Z
    invoke-static {v0, v1}, Lcom/google/android/gm/TriStateSplitLayout;->access$802(Lcom/google/android/gm/TriStateSplitLayout;Z)Z

    .line 805
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gm/TriStateSplitLayout;->mOutstandingAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/google/android/gm/TriStateSplitLayout;->access$902(Lcom/google/android/gm/TriStateSplitLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 806
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    #calls: Lcom/google/android/gm/TriStateSplitLayout;->destroyBitmaps()V
    invoke-static {v0}, Lcom/google/android/gm/TriStateSplitLayout;->access$1000(Lcom/google/android/gm/TriStateSplitLayout;)V

    .line 807
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;->onFinish()V

    .line 808
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 797
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 796
    return-void
.end method

.method public abstract onFinish()V
.end method
