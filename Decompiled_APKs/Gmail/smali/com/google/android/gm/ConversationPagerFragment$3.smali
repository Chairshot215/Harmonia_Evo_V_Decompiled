.class Lcom/google/android/gm/ConversationPagerFragment$3;
.super Ljava/lang/Object;
.source "ConversationPagerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ConversationPagerFragment;->onConversationLoadError(Lcom/google/android/gm/ConversationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ConversationPagerFragment;

.field final synthetic val$info:Lcom/google/android/gm/ConversationInfo;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ConversationPagerFragment;Lcom/google/android/gm/ConversationInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Lcom/google/android/gm/ConversationPagerFragment$3;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    iput-object p2, p0, Lcom/google/android/gm/ConversationPagerFragment$3;->val$info:Lcom/google/android/gm/ConversationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$3;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment$3;->val$info:Lcom/google/android/gm/ConversationInfo;

    #calls: Lcom/google/android/gm/ConversationPagerFragment;->matchesCurrentConversation(Lcom/google/android/gm/ConversationInfo;)Z
    invoke-static {v0, v1}, Lcom/google/android/gm/ConversationPagerFragment;->access$1300(Lcom/google/android/gm/ConversationPagerFragment;Lcom/google/android/gm/ConversationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$3;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$1600(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment$3;->val$info:Lcom/google/android/gm/ConversationInfo;

    invoke-interface {v0, v1}, Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;->onConversationLoadError(Lcom/google/android/gm/ConversationInfo;)V

    .line 774
    :cond_0
    return-void
.end method
