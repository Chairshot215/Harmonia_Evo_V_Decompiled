.class Lcom/google/android/gm/TwoPaneActivityController$1$1;
.super Ljava/lang/Object;
.source "TwoPaneActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/TwoPaneActivityController$1;->onReceivedUpdatedData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/TwoPaneActivityController$1;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TwoPaneActivityController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivityController$1$1;->this$1:Lcom/google/android/gm/TwoPaneActivityController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 210
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1$1;->this$1:Lcom/google/android/gm/TwoPaneActivityController$1;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/TwoPaneActivityController;->hideUndoView(Z)V

    .line 211
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1$1;->this$1:Lcom/google/android/gm/TwoPaneActivityController$1;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1$1;->this$1:Lcom/google/android/gm/TwoPaneActivityController$1;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1$1;->this$1:Lcom/google/android/gm/TwoPaneActivityController$1;

    iget-object v1, v1, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #getter for: Lcom/google/android/gm/TwoPaneActivityController;->mUndoOp:Lcom/google/android/gm/UndoOperation;
    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$200(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/UndoOperation;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ConversationListFragment;->showUndoView(Lcom/google/android/gm/UndoOperation;Z)V

    .line 216
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1$1;->this$1:Lcom/google/android/gm/TwoPaneActivityController$1;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gm/TwoPaneActivityController;->mUndoOp:Lcom/google/android/gm/UndoOperation;
    invoke-static {v0, v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$202(Lcom/google/android/gm/TwoPaneActivityController;Lcom/google/android/gm/UndoOperation;)Lcom/google/android/gm/UndoOperation;

    .line 217
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1$1;->this$1:Lcom/google/android/gm/TwoPaneActivityController$1;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1$1;->this$1:Lcom/google/android/gm/TwoPaneActivityController$1;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1$1;->this$1:Lcom/google/android/gm/TwoPaneActivityController$1;

    iget-object v1, v1, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #getter for: Lcom/google/android/gm/TwoPaneActivityController;->mUndoOp:Lcom/google/android/gm/UndoOperation;
    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$200(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/UndoOperation;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gm/ConversationViewable;->showUndoView(Lcom/google/android/gm/UndoOperation;Z)V

    goto :goto_0
.end method
