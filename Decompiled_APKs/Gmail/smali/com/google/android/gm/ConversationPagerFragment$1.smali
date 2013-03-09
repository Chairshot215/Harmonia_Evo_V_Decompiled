.class Lcom/google/android/gm/ConversationPagerFragment$1;
.super Ljava/lang/Object;
.source "ConversationPagerFragment.java"

# interfaces
.implements Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ConversationPagerFragment;->updateLabel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ConversationPagerFragment;

.field final synthetic val$shouldUpdatePositionBar:Z


# direct methods
.method constructor <init>(Lcom/google/android/gm/ConversationPagerFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/google/android/gm/ConversationPagerFragment$1;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    iput-boolean p2, p0, Lcom/google/android/gm/ConversationPagerFragment$1;->val$shouldUpdatePositionBar:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLabelResult(Lcom/google/android/gm/provider/Label;)V
    .locals 2
    .parameter "label"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$1;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #setter for: Lcom/google/android/gm/ConversationPagerFragment;->mLabel:Lcom/google/android/gm/provider/Label;
    invoke-static {v0, p1}, Lcom/google/android/gm/ConversationPagerFragment;->access$102(Lcom/google/android/gm/ConversationPagerFragment;Lcom/google/android/gm/provider/Label;)Lcom/google/android/gm/provider/Label;

    .line 377
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationPagerFragment$1;->val$shouldUpdatePositionBar:Z

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$1;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationPagerFragment;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/ConversationPagerFragment$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/ConversationPagerFragment$1$1;-><init>(Lcom/google/android/gm/ConversationPagerFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->post(Ljava/lang/Runnable;)V

    .line 386
    :cond_0
    return-void
.end method
