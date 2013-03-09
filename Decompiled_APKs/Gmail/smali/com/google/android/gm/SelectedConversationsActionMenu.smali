.class public Lcom/google/android/gm/SelectedConversationsActionMenu;
.super Ljava/lang/Object;
.source "SelectedConversationsActionMenu.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;


# instance fields
.field mActionMode:Landroid/view/ActionMode;

.field private mActivated:Z

.field private final mActivity:Lcom/google/android/gm/RestrictedActivity;

.field private final mCommandListener:Lcom/google/android/gm/CommandListener;

.field private final mContext:Landroid/content/Context;

.field private final mListContext:Lcom/google/android/gm/ConversationListContext;

.field private mMenu:Landroid/view/Menu;

.field protected final mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field protected final mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/CommandListener;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/ConversationSelectionSet;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "commandListener"
    .parameter "listContext"
    .parameter "handler"
    .parameter "selectionSet"
    .parameter "account"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivated:Z

    .line 54
    iput-object p4, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 55
    iput-object p5, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    .line 56
    iput-object p3, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mListContext:Lcom/google/android/gm/ConversationListContext;

    .line 57
    iput-object p1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    .line 58
    iput-object p2, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mCommandListener:Lcom/google/android/gm/CommandListener;

    .line 59
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    invoke-interface {v0}, Lcom/google/android/gm/RestrictedActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/SelectedConversationsActionMenu;)Lcom/google/android/gm/CommandListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mCommandListener:Lcom/google/android/gm/CommandListener;

    return-object v0
.end method

.method private enableMenuItem(IZ)V
    .locals 2
    .parameter "id"
    .parameter "enable"

    .prologue
    .line 219
    iget-boolean v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivated:Z

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 221
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 225
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method private updateCount()V
    .locals 6

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0135

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v5}, Lcom/google/android/gm/ConversationSelectionSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivated:Z

    .line 171
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    invoke-interface {v0, p0}, Lcom/google/android/gm/RestrictedActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 174
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivated:Z

    .line 183
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 185
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->deactivate()V

    .line 198
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ConversationSelectionSet;->removeObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->clear()V

    .line 200
    return-void
.end method

.method public disableCommand(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->enableMenuItem(IZ)V

    .line 208
    return-void
.end method

.method public enableCommand(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->enableMenuItem(IZ)V

    .line 216
    return-void
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivated:Z

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/google/android/gm/MenuHandler;->shouldDisplayAutoAdvanceDialog(Landroid/content/Context;Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    move-object v0, p2

    .line 72
    .local v0, menuItem:Landroid/view/MenuItem;
    new-instance v1, Lcom/google/android/gm/SelectedConversationsActionMenu$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gm/SelectedConversationsActionMenu$1;-><init>(Lcom/google/android/gm/SelectedConversationsActionMenu;Landroid/view/MenuItem;)V

    .line 79
    .local v1, operation:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/gm/MenuHandler;->displayAutoAdvanceDialogAndPerformAction(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 81
    const/4 v2, 0x1

    .line 83
    .end local v0           #menuItem:Landroid/view/MenuItem;
    .end local v1           #operation:Ljava/lang/Runnable;
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v3, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v4}, Lcom/google/android/gm/ConversationSelectionSet;->getLabels()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mCommandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual {v2, p2, v3, v4, v5}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(Landroid/view/MenuItem;Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    move-result v2

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v1, p0}, Lcom/google/android/gm/ConversationSelectionSet;->addObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V

    .line 90
    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    invoke-interface {v1}, Lcom/google/android/gm/RestrictedActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 91
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 92
    iput-object p1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    .line 93
    iput-object p2, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mMenu:Landroid/view/Menu;

    .line 94
    invoke-direct {p0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->updateCount()V

    .line 95
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    .line 116
    iput-object v5, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    .line 120
    iget-boolean v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivated:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->destroy()V

    .line 123
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 126
    const-string v0, "Gmail"

    const-string v1, "Destroying action menu, with non-empty conversation set. Count: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v4}, Lcom/google/android/gm/ConversationSelectionSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 129
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->clear()V

    .line 132
    :cond_0
    iput-object v5, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mMenu:Landroid/view/Menu;

    .line 133
    return-void
.end method

.method public onPrepareActionMode()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/SelectedConversationsActionMenu;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 112
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationSelectionSet;->getLabels()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/google/android/gm/MenuHandler;->onPrepareMenu(Landroid/view/Menu;Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public onSetBecomeUnempty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 138
    return-void
.end method

.method public onSetChanged(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->updateCount()V

    goto :goto_0
.end method

.method public onSetEmpty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->destroy()V

    .line 143
    return-void
.end method
