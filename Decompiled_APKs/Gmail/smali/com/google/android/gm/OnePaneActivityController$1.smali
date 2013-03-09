.class Lcom/google/android/gm/OnePaneActivityController$1;
.super Ljava/lang/Object;
.source "OnePaneActivityController.java"

# interfaces
.implements Lcom/google/android/gm/CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/OnePaneActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/OnePaneActivityController;


# direct methods
.method constructor <init>(Lcom/google/android/gm/OnePaneActivityController;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCompleted()V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public onAnimationStarted()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public onCommandAccepted(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 354
    sparse-switch p1, :sswitch_data_0

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 357
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/OnePaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationViewable;->onMarkUnread()V

    .line 359
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/OnePaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationViewable;->onDestructiveCommand()V

    .line 360
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    invoke-virtual {v0, v4}, Lcom/google/android/gm/OnePaneActivityController;->applyAutoAdvancePolicy(Z)V

    goto :goto_0

    .line 364
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/OnePaneActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v0

    const-string v1, "^r"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/OnePaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationViewable;->onMarkUnread()V

    .line 368
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/OnePaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationViewable;->onDestructiveCommand()V

    .line 369
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    new-instance v1, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    iget-object v3, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    invoke-virtual {v3, v4}, Lcom/google/android/gm/OnePaneActivityController;->getNextConversationOnDestructiveCommand(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;-><init>(Lcom/google/android/gm/BaseActivityController;Lcom/google/android/gm/ConversationInfo;)V

    #setter for: Lcom/google/android/gm/OnePaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v0, v1}, Lcom/google/android/gm/OnePaneActivityController;->access$002(Lcom/google/android/gm/OnePaneActivityController;Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    goto :goto_0

    .line 374
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gm/OnePaneActivityController;->onDestructiveCommand(ZI)V

    goto :goto_0

    .line 354
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0012 -> :sswitch_0
        0x7f0f00ed -> :sswitch_1
        0x7f0f00ef -> :sswitch_0
        0x7f0f00f1 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCommandCompleted(ILcom/google/android/gm/UndoOperation;)V
    .locals 6
    .parameter "commandId"
    .parameter "undoOp"

    .prologue
    const/4 v3, 0x0

    .line 381
    move-object v2, p2

    .line 382
    .local v2, undoOperation:Lcom/google/android/gm/UndoOperation;
    const/4 v0, 0x0

    .line 383
    .local v0, hasDestructiveCommands:Z
    packed-switch p1, :pswitch_data_0

    .line 396
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    #getter for: Lcom/google/android/gm/OnePaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v4}, Lcom/google/android/gm/OnePaneActivityController;->access$000(Lcom/google/android/gm/OnePaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 399
    iget-object v4, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    #getter for: Lcom/google/android/gm/OnePaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v4}, Lcom/google/android/gm/OnePaneActivityController;->access$000(Lcom/google/android/gm/OnePaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;->apply()V

    .line 400
    const/4 v0, 0x1

    .line 404
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/gm/OnePaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v4, v5}, Lcom/google/android/gm/OnePaneActivityController;->access$002(Lcom/google/android/gm/OnePaneActivityController;Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    .line 405
    if-eqz v2, :cond_4

    .line 406
    new-instance v1, Lcom/google/android/gm/OnePaneActivityController$1$1;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/OnePaneActivityController$1$1;-><init>(Lcom/google/android/gm/OnePaneActivityController$1;Lcom/google/android/gm/UndoOperation;)V

    .line 421
    .local v1, task:Ljava/lang/Runnable;
    if-eqz v0, :cond_3

    sget-object v4, Lcom/google/android/gm/UndoBarView;->EXCLUDE_UNDO_OPS:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 422
    iget-object v3, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    iget-object v3, v3, Lcom/google/android/gm/OnePaneActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v3, v1}, Lcom/google/android/gm/MenuHandler;->post(Ljava/lang/Runnable;)V

    .line 429
    .end local v1           #task:Ljava/lang/Runnable;
    :goto_1
    return-void

    .line 385
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    invoke-virtual {v4}, Lcom/google/android/gm/OnePaneActivityController;->isConversationMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    iget-object v4, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    #getter for: Lcom/google/android/gm/OnePaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v4}, Lcom/google/android/gm/OnePaneActivityController;->access$000(Lcom/google/android/gm/OnePaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_2

    .line 424
    .restart local v1       #task:Ljava/lang/Runnable;
    :cond_3
    iget-object v4, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    invoke-virtual {v4, v3}, Lcom/google/android/gm/OnePaneActivityController;->hideUndoView(Z)V

    goto :goto_1

    .line 427
    .end local v1           #task:Ljava/lang/Runnable;
    :cond_4
    iget-object v4, p0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    invoke-virtual {v4, v3}, Lcom/google/android/gm/OnePaneActivityController;->hideUndoView(Z)V

    goto :goto_1

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f00ee
        :pswitch_0
    .end packed-switch
.end method

.method public onReceivedUpdatedData()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method
