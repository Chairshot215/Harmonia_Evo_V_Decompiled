.class Lcom/google/android/gm/BaseActivityController$5;
.super Ljava/lang/Object;
.source "BaseActivityController.java"

# interfaces
.implements Lcom/google/android/gm/CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/BaseActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCommandId:I

.field private mUndoOp:Lcom/google/android/gm/UndoOperation;

.field final synthetic this$0:Lcom/google/android/gm/BaseActivityController;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BaseActivityController;)V
    .locals 0
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCompleted()V
    .locals 0

    .prologue
    .line 948
    return-void
.end method

.method public onAnimationStarted()V
    .locals 0

    .prologue
    .line 953
    return-void
.end method

.method public onCommandAccepted(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 910
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    invoke-virtual {v1}, Lcom/google/android/gm/BaseActivityController;->isConversationListAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget-object v1, v1, Lcom/google/android/gm/BaseActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ConversationListFragment;->setActionStateListener(Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;)V

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    #calls: Lcom/google/android/gm/BaseActivityController;->isDestructiveBatchCommand(I)Z
    invoke-static {v1, p1}, Lcom/google/android/gm/BaseActivityController;->access$500(Lcom/google/android/gm/BaseActivityController;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 914
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    invoke-virtual {v1, v4, p1}, Lcom/google/android/gm/BaseActivityController;->onDestructiveCommand(ZI)V

    .line 924
    :cond_1
    :goto_0
    return-void

    .line 916
    :cond_2
    const v1, 0x7f0f0012

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget-object v1, v1, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    sget-object v2, Lcom/google/android/gm/ConversationInfo;->INVALID_CONVERSATION_INFO:Lcom/google/android/gm/ConversationInfo;

    if-eq v1, v2, :cond_1

    .line 918
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget-object v0, v1, Lcom/google/android/gm/BaseActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 919
    .local v0, conversation:Lcom/google/android/gm/ConversationInfo;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget-object v1, v1, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget-object v1, v1, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 921
    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    invoke-virtual {v1, v4}, Lcom/google/android/gm/BaseActivityController;->applyAutoAdvancePolicy(Z)V

    goto :goto_0
.end method

.method public onCommandCompleted(ILcom/google/android/gm/UndoOperation;)V
    .locals 2
    .parameter "commandId"
    .parameter "undoOp"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/BaseActivityController;->isConversationListAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget-object v0, v0, Lcom/google/android/gm/BaseActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ConversationListFragment;->setActionStateListener(Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;)V

    .line 932
    :cond_0
    iput-object p2, p0, Lcom/google/android/gm/BaseActivityController$5;->mUndoOp:Lcom/google/android/gm/UndoOperation;

    .line 933
    iput p1, p0, Lcom/google/android/gm/BaseActivityController$5;->mCommandId:I

    .line 934
    iget v0, p0, Lcom/google/android/gm/BaseActivityController$5;->mCommandId:I

    const v1, 0x7f0f0012

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gm/BaseActivityController$5;->mCommandId:I

    const v1, 0x7f0f0042

    if-ne v0, v1, :cond_2

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget-object v0, v0, Lcom/google/android/gm/BaseActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    #getter for: Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;
    invoke-static {v0}, Lcom/google/android/gm/BaseActivityController;->access$600(Lcom/google/android/gm/BaseActivityController;)Lcom/google/android/gm/SelectedConversationsActionMenu;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 937
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    #getter for: Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;
    invoke-static {v0}, Lcom/google/android/gm/BaseActivityController;->access$600(Lcom/google/android/gm/BaseActivityController;)Lcom/google/android/gm/SelectedConversationsActionMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->onPrepareActionMode()V

    .line 940
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget v1, p0, Lcom/google/android/gm/BaseActivityController$5;->mCommandId:I

    #calls: Lcom/google/android/gm/BaseActivityController;->isDestructiveBatchCommand(I)Z
    invoke-static {v0, v1}, Lcom/google/android/gm/BaseActivityController;->access$500(Lcom/google/android/gm/BaseActivityController;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    #getter for: Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;
    invoke-static {v0}, Lcom/google/android/gm/BaseActivityController;->access$600(Lcom/google/android/gm/BaseActivityController;)Lcom/google/android/gm/SelectedConversationsActionMenu;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 941
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    #getter for: Lcom/google/android/gm/BaseActivityController;->mSelectedConversationsActionMenu:Lcom/google/android/gm/SelectedConversationsActionMenu;
    invoke-static {v0}, Lcom/google/android/gm/BaseActivityController;->access$600(Lcom/google/android/gm/BaseActivityController;)Lcom/google/android/gm/SelectedConversationsActionMenu;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gm/BaseActivityController$5;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/google/android/gm/SelectedConversationsActionMenu;->enableCommand(I)V

    .line 943
    :cond_3
    return-void
.end method

.method public onReceivedUpdatedData()V
    .locals 3

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->mUndoOp:Lcom/google/android/gm/UndoOperation;

    if-eqz v0, :cond_1

    .line 958
    sget-object v0, Lcom/google/android/gm/UndoBarView;->EXCLUDE_UNDO_OPS:Lcom/google/common/collect/ImmutableSet;

    iget v1, p0, Lcom/google/android/gm/BaseActivityController$5;->mCommandId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/BaseActivityController;->isConversationListAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget-object v0, v0, Lcom/google/android/gm/BaseActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$5;->mUndoOp:Lcom/google/android/gm/UndoOperation;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ConversationListFragment;->showUndoView(Lcom/google/android/gm/UndoOperation;Z)V

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/BaseActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget-object v0, v0, Lcom/google/android/gm/BaseActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gm/ConversationViewable;->hideUndoView(Z)V

    .line 967
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/BaseActivityController$5;->mUndoOp:Lcom/google/android/gm/UndoOperation;

    .line 968
    return-void
.end method
