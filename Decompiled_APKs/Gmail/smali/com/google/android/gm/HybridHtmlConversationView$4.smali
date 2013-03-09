.class Lcom/google/android/gm/HybridHtmlConversationView$4;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HybridHtmlConversationView;->dismissLoadingStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HybridHtmlConversationView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;)V
    .locals 0
    .parameter

    .prologue
    .line 1743
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$4;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1761
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 1753
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$4;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mBackgroundView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2200(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$4;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mInfoView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2300(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1755
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$4;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mProgressView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2100(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1756
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1766
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$4;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mProgressView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2100(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$4;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mProgressView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2100(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1749
    :cond_0
    return-void
.end method
