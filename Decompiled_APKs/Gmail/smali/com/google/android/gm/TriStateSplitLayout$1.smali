.class Lcom/google/android/gm/TriStateSplitLayout$1;
.super Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;
.source "TriStateSplitLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/TriStateSplitLayout;->onEnterConversationListMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TriStateSplitLayout;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout$1;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;-><init>(Lcom/google/android/gm/TriStateSplitLayout;Lcom/google/android/gm/TriStateSplitLayout$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$1;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    #calls: Lcom/google/android/gm/TriStateSplitLayout;->shouldShowLabelsList()Z
    invoke-static {v0}, Lcom/google/android/gm/TriStateSplitLayout;->access$100(Lcom/google/android/gm/TriStateSplitLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$1;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    #getter for: Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gm/TriStateSplitLayout;->access$200(Lcom/google/android/gm/TriStateSplitLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 496
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$1;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    #calls: Lcom/google/android/gm/TriStateSplitLayout;->onFinishEnteringConversationListMode()V
    invoke-static {v0}, Lcom/google/android/gm/TriStateSplitLayout;->access$300(Lcom/google/android/gm/TriStateSplitLayout;)V

    .line 501
    return-void
.end method
