.class Lcom/google/android/gm/OnePaneActivityController$1$1;
.super Ljava/lang/Object;
.source "OnePaneActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/OnePaneActivityController$1;->onCommandCompleted(ILcom/google/android/gm/UndoOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/OnePaneActivityController$1;

.field final synthetic val$undoOperation:Lcom/google/android/gm/UndoOperation;


# direct methods
.method constructor <init>(Lcom/google/android/gm/OnePaneActivityController$1;Lcom/google/android/gm/UndoOperation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/google/android/gm/OnePaneActivityController$1$1;->this$1:Lcom/google/android/gm/OnePaneActivityController$1;

    iput-object p2, p0, Lcom/google/android/gm/OnePaneActivityController$1$1;->val$undoOperation:Lcom/google/android/gm/UndoOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 412
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1$1;->this$1:Lcom/google/android/gm/OnePaneActivityController$1;

    iget-object v0, v0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/OnePaneActivityController;->hideUndoView(Z)V

    .line 413
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1$1;->this$1:Lcom/google/android/gm/OnePaneActivityController$1;

    iget-object v0, v0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1$1;->this$1:Lcom/google/android/gm/OnePaneActivityController$1;

    iget-object v0, v0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController$1$1;->val$undoOperation:Lcom/google/android/gm/UndoOperation;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ConversationListFragment;->showUndoView(Lcom/google/android/gm/UndoOperation;Z)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1$1;->this$1:Lcom/google/android/gm/OnePaneActivityController$1;

    iget-object v0, v0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController$1$1;->this$1:Lcom/google/android/gm/OnePaneActivityController$1;

    iget-object v0, v0, Lcom/google/android/gm/OnePaneActivityController$1;->this$0:Lcom/google/android/gm/OnePaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/OnePaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController$1$1;->val$undoOperation:Lcom/google/android/gm/UndoOperation;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gm/ConversationViewable;->showUndoView(Lcom/google/android/gm/UndoOperation;Z)V

    goto :goto_0
.end method
