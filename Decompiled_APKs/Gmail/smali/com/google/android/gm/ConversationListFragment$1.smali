.class Lcom/google/android/gm/ConversationListFragment$1;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment$1;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$1;->this$0:Lcom/google/android/gm/ConversationListFragment;

    #getter for: Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/google/android/gm/ConversationListFragment;->access$000(Lcom/google/android/gm/ConversationListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 101
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$1;->this$0:Lcom/google/android/gm/ConversationListFragment;

    #getter for: Lcom/google/android/gm/ConversationListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/gm/ConversationListFragment;->access$200(Lcom/google/android/gm/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment$1;->this$0:Lcom/google/android/gm/ConversationListFragment;

    #getter for: Lcom/google/android/gm/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/gm/ConversationListFragment;->access$100(Lcom/google/android/gm/ConversationListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method
