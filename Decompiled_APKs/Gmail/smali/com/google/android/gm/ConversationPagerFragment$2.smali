.class Lcom/google/android/gm/ConversationPagerFragment$2;
.super Ljava/lang/Object;
.source "ConversationPagerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ConversationPagerFragment;->onConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V
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
    .line 744
    iput-object p1, p0, Lcom/google/android/gm/ConversationPagerFragment$2;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    iput-object p2, p0, Lcom/google/android/gm/ConversationPagerFragment$2;->val$info:Lcom/google/android/gm/ConversationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$2;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment$2;->val$info:Lcom/google/android/gm/ConversationInfo;

    #calls: Lcom/google/android/gm/ConversationPagerFragment;->matchesCurrentConversation(Lcom/google/android/gm/ConversationInfo;)Z
    invoke-static {v0, v1}, Lcom/google/android/gm/ConversationPagerFragment;->access$1300(Lcom/google/android/gm/ConversationPagerFragment;Lcom/google/android/gm/ConversationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$2;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #calls: Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$1400(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->markConversationAsRead()V

    .line 752
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$2;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationPagerFragment;->isDataLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$2;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #calls: Lcom/google/android/gm/ConversationPagerFragment;->startLoadingList()V
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$1500(Lcom/google/android/gm/ConversationPagerFragment;)V

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$2;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$1600(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$2;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #getter for: Lcom/google/android/gm/ConversationPagerFragment;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$1600(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment$2;->val$info:Lcom/google/android/gm/ConversationInfo;

    invoke-interface {v0, v1}, Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;->onConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V

    .line 760
    :cond_1
    return-void
.end method
