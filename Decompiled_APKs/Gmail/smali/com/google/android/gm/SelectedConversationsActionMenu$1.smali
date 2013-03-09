.class Lcom/google/android/gm/SelectedConversationsActionMenu$1;
.super Ljava/lang/Object;
.source "SelectedConversationsActionMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/SelectedConversationsActionMenu;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/SelectedConversationsActionMenu;

.field final synthetic val$menuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/google/android/gm/SelectedConversationsActionMenu;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu$1;->this$0:Lcom/google/android/gm/SelectedConversationsActionMenu;

    iput-object p2, p0, Lcom/google/android/gm/SelectedConversationsActionMenu$1;->val$menuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu$1;->this$0:Lcom/google/android/gm/SelectedConversationsActionMenu;

    iget-object v0, v0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu$1;->val$menuItem:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/google/android/gm/SelectedConversationsActionMenu$1;->this$0:Lcom/google/android/gm/SelectedConversationsActionMenu;

    iget-object v2, v2, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/SelectedConversationsActionMenu$1;->this$0:Lcom/google/android/gm/SelectedConversationsActionMenu;

    iget-object v3, v3, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationSelectionSet;->getLabels()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/SelectedConversationsActionMenu$1;->this$0:Lcom/google/android/gm/SelectedConversationsActionMenu;

    #getter for: Lcom/google/android/gm/SelectedConversationsActionMenu;->mCommandListener:Lcom/google/android/gm/CommandListener;
    invoke-static {v4}, Lcom/google/android/gm/SelectedConversationsActionMenu;->access$000(Lcom/google/android/gm/SelectedConversationsActionMenu;)Lcom/google/android/gm/CommandListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(Landroid/view/MenuItem;Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    .line 77
    return-void
.end method
