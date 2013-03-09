.class public Lcom/google/android/gm/OnePaneActivityController;
.super Lcom/google/android/gm/BaseActivityController;
.source "OnePaneActivityController.java"


# instance fields
.field private mLastConversationListTransactionId:I

.field private mLastConversationTransactionId:I

.field private mLastLabelListTransactionId:I

.field private mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

.field private final mSingleCommandListener:Lcom/google/android/gm/CommandListener;


# direct methods
.method protected constructor <init>(Lcom/google/android/gm/ActivityController$ControllableActivity;Lcom/google/android/gm/ViewMode;)V
    .locals 1
    .parameter "activity"
    .parameter "viewMode"

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/BaseActivityController;-><init>(Lcom/google/android/gm/ActivityController$ControllableActivity;Lcom/google/android/gm/ViewMode;)V

    .line 33
    iput v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastLabelListTransactionId:I

    .line 34
    iput v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastConversationListTransactionId:I

    .line 35
    iput v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastConversationTransactionId:I

    .line 351
    new-instance v0, Lcom/google/android/gm/OnePaneActivityController$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/OnePaneActivityController$1;-><init>(Lcom/google/android/gm/OnePaneActivityController;)V

    iput-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mSingleCommandListener:Lcom/google/android/gm/CommandListener;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/OnePaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/gm/OnePaneActivityController;Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/gm/OnePaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    return-object p1
.end method

.method private isTransactionIdValid(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 126
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notInInbox()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 259
    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->getCurrentAccount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private transitionToInbox()V
    .locals 5

    .prologue
    .line 292
    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/OnePaneActivityController;->mAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, inboxLabel:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/OnePaneActivityController;->mAccount:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/google/android/gm/ConversationListContext;->forLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v1

    .line 295
    .local v1, listContext:Lcom/google/android/gm/ConversationListContext;
    iget v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastConversationListTransactionId:I

    invoke-direct {p0, v2}, Lcom/google/android/gm/OnePaneActivityController;->isTransactionIdValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {p0, v1}, Lcom/google/android/gm/OnePaneActivityController;->setConversationListContext(Lcom/google/android/gm/ConversationListContext;)V

    .line 297
    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v2}, Lcom/google/android/gm/ViewMode;->transitionToConversationListMode()Z

    .line 298
    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastConversationListTransactionId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(II)V

    .line 299
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->resetActionBarIcon()V

    .line 300
    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->invalidateOptionsMenu()V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gm/OnePaneActivityController;->showConversationList(Lcom/google/android/gm/ConversationListContext;)V

    goto :goto_0
.end method

.method private updateActionBarMode()V
    .locals 3

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, update:Z
    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v1}, Lcom/google/android/gm/ViewMode;->isLabelListMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    move-result v0

    .line 196
    :goto_0
    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->invalidateOptionsMenu()V

    .line 199
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v1}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    :goto_1
    invoke-interface {v2, v1}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 191
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v1}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    move-result v0

    goto :goto_0

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public attachFragment(Lcom/google/android/gm/ConversationListFragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseActivityController;->attachFragment(Lcom/google/android/gm/ConversationListFragment;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationListMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/OnePaneActivityController;->onConversationListVisibilityChanged(Z)V

    .line 109
    return-void
.end method

.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isLabelListMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const-string v0, "gm_lbl"

    .line 473
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gm/BaseActivityController;->getHelpContext()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSearchResultsPane()I
    .locals 1

    .prologue
    .line 465
    const v0, 0x7f0f0004

    return v0
.end method

.method public getSingleCommandListener()Lcom/google/android/gm/CommandListener;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mSingleCommandListener:Lcom/google/android/gm/CommandListener;

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 96
    return-void
.end method

.method public handleBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 267
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isLabelListMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/google/android/gm/OnePaneActivityController;->transitionToInbox()V

    .line 270
    iput v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastLabelListTransactionId:I

    .line 288
    :goto_0
    return v3

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gm/OnePaneActivityController;->notInInbox()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastLabelListTransactionId:I

    invoke-direct {p0, v0}, Lcom/google/android/gm/OnePaneActivityController;->isTransactionIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->transitionToLabelListMode()Z

    .line 275
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastLabelListTransactionId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(II)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/OnePaneActivityController;->transitionToInbox()V

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastConversationTransactionId:I

    if-eq v0, v1, :cond_3

    .line 282
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->transitionToConversationListMode()Z

    .line 283
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastConversationTransactionId:I

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentManager;->popBackStack(II)V

    goto :goto_0

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->finish()V

    goto :goto_0
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->getSelectedConversations()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->getSelectedLabels()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/gm/ConversationListFragment;->handleKeyDown(ILandroid/view/KeyEvent;Ljava/util/Collection;Ljava/util/Map;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handlePrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    .line 78
    const/4 v6, 0x0

    .line 79
    .local v6, handled:Z
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    sget-object v1, Lcom/google/android/gm/ConversationInfo;->INVALID_CONVERSATION_INFO:Lcom/google/android/gm/ConversationInfo;

    if-eq v0, v1, :cond_1

    const/4 v5, 0x1

    .line 85
    .local v5, isDoneLoading:Z
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/OnePaneActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->prepareMenuAndDisableIfLoading(Landroid/view/Menu;Ljava/util/Map;Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;Z)V

    .line 88
    const/4 v6, 0x1

    .line 90
    .end local v5           #isDoneLoading:Z
    :cond_0
    if-eqz v6, :cond_2

    .end local v6           #handled:Z
    :goto_1
    return v6

    .line 83
    .restart local v6       #handled:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 90
    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseActivityController;->handlePrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v6

    goto :goto_1
.end method

.method public handleSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseActivityController;->handleSaveInstanceState(Landroid/os/Bundle;)V

    .line 242
    const-string v0, "label-list-transaction"

    iget v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastLabelListTransactionId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    const-string v0, "conversation-list-transaction"

    iget v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastConversationListTransactionId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    const-string v0, "conversation-transaction"

    iget v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastConversationTransactionId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    return-void
.end method

.method public handleUpPressed()V
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/google/android/gm/OnePaneActivityController;->notInInbox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isLabelListMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->onBackPressed()V

    .line 256
    :cond_2
    :goto_0
    return-void

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->finish()V

    goto :goto_0
.end method

.method protected hideUndoView(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ConversationListFragment;->hideUndoView(Z)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ConversationViewable;->hideUndoView(Z)V

    goto :goto_0
.end method

.method public initialize(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 48
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    const v1, 0x7f040049

    invoke-interface {v0, v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->setContentView(I)V

    .line 50
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseActivityController;->initialize(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method protected isConversationListAdded()Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationListMode()Z

    move-result v0

    return v0
.end method

.method protected isConversationListVisible()Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationListMode()Z

    move-result v0

    return v0
.end method

.method public onConversationVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 236
    return-void
.end method

.method public onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V
    .locals 3
    .parameter "label"
    .parameter "conversationId"
    .parameter "added"

    .prologue
    .line 335
    new-instance v0, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v0}, Lcom/google/android/gm/LabelOperations;-><init>()V

    .line 336
    .local v0, ops:Lcom/google/android/gm/LabelOperations;
    invoke-virtual {v0, p1, p4}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 337
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/Utils;->isConversationBeingRemoved(Lcom/google/android/gm/LabelOperations;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    if-nez v1, :cond_0

    .line 345
    new-instance v1, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/gm/OnePaneActivityController;->getNextConversationOnDestructiveCommand(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;-><init>(Lcom/google/android/gm/BaseActivityController;Lcom/google/android/gm/ConversationInfo;)V

    iput-object v1, p0, Lcom/google/android/gm/OnePaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    .line 348
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gm/BaseActivityController;->onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V

    .line 349
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ConversationListFragment;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ConversationViewable;->handleTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onViewModeChanged(Lcom/google/android/gm/ViewMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseActivityController;->onViewModeChanged(Lcom/google/android/gm/ViewMode;)V

    .line 179
    invoke-virtual {p1}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/OnePaneActivityController;->onConversationListVisibilityChanged(Z)V

    .line 180
    invoke-direct {p0}, Lcom/google/android/gm/OnePaneActivityController;->updateActionBarMode()V

    .line 181
    return-void
.end method

.method public reloadSearch(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mAccount:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gm/ConversationListContext;->forSearchQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/OnePaneActivityController;->setConversationListContext(Lcom/google/android/gm/ConversationListContext;)V

    .line 455
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->getConversationListContext()Lcom/google/android/gm/ConversationListContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/OnePaneActivityController;->showConversationList(Lcom/google/android/gm/ConversationListContext;)V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseActivityController;->reloadSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public renderLabelList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 137
    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 138
    .local v1, fragmentTransaction:Landroid/app/FragmentTransaction;
    invoke-virtual {v1, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 140
    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 141
    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mAccount:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v5, v3, v4}, Lcom/google/android/gm/LabelListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gm/LabelListFragment;

    move-result-object v0

    .line 143
    .local v0, fragment:Landroid/app/Fragment;
    const v2, 0x7f0f0004

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 144
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastLabelListTransactionId:I

    .line 145
    return-void
.end method

.method protected resetActionBarIcon()V
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/google/android/gm/OnePaneActivityController;->notInInbox()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isLabelListMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->setActionBarIconBack()V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->setActionBarIconNormal()V

    goto :goto_0
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "inState"

    .prologue
    const/4 v1, -0x1

    .line 55
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseActivityController;->restoreState(Landroid/os/Bundle;)V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const-string v0, "label-list-transaction"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastLabelListTransactionId:I

    .line 59
    const-string v0, "conversation-list-transaction"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastConversationListTransactionId:I

    .line 61
    const-string v0, "conversation-transaction"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastConversationTransactionId:I

    .line 64
    :cond_0
    return-void
.end method

.method protected showConversationInternal(Lcom/google/android/gm/ConversationInfo;Z)V
    .locals 6
    .parameter "info"
    .parameter "autoCollapseList"

    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/BaseActivityController;->showConversationInternal(Lcom/google/android/gm/ConversationInfo;Z)V

    .line 205
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->isConversationMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    instance-of v2, v2, Lcom/google/android/gm/ConversationPagerFragment;

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v2}, Lcom/google/android/gm/ConversationViewable;->resetViews()V

    .line 209
    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    check-cast v2, Lcom/google/android/gm/ConversationPagerFragment;

    invoke-virtual {v2, p1}, Lcom/google/android/gm/ConversationPagerFragment;->showConversation(Lcom/google/android/gm/ConversationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 215
    .local v1, fragmentTransaction:Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 220
    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    iget-object v4, p0, Lcom/google/android/gm/OnePaneActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v5, p0, Lcom/google/android/gm/OnePaneActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v5}, Lcom/google/android/gm/ConversationPositionTracker;->getPosition()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gm/ConversationPagerFragment;->newInstance(Ljava/lang/String;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationInfo;I)Lcom/google/android/gm/ConversationViewable;

    move-result-object v0

    .line 223
    .local v0, conversationViewable:Lcom/google/android/gm/ConversationViewable;
    const v2, 0x7f0f0004

    check-cast v0, Landroid/app/Fragment;

    .end local v0           #conversationViewable:Lcom/google/android/gm/ConversationViewable;
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 224
    iget-object v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v2}, Lcom/google/android/gm/ViewMode;->transitionToConversationMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastConversationTransactionId:I

    .line 230
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->clearUndoOperations()V

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1
.end method

.method protected showConversationList(Lcom/google/android/gm/ConversationListContext;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 149
    iget-object v3, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v4}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 152
    .local v0, accountChanged:Z
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseActivityController;->showConversationList(Lcom/google/android/gm/ConversationListContext;)V

    .line 154
    iget-object v3, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v3}, Lcom/google/android/gm/ViewMode;->transitionToConversationListMode()Z

    .line 155
    iget-object v3, p0, Lcom/google/android/gm/OnePaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v3}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 156
    .local v2, fragmentTransaction:Landroid/app/FragmentTransaction;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 157
    if-eqz v0, :cond_1

    .line 159
    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 164
    :goto_1
    iget-object v3, p0, Lcom/google/android/gm/OnePaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-static {v3}, Lcom/google/android/gm/ConversationListFragment;->newInstance(Lcom/google/android/gm/ConversationListContext;)Lcom/google/android/gm/ConversationListFragment;

    move-result-object v1

    .line 166
    .local v1, conversationListFragment:Landroid/app/Fragment;
    const v3, 0x7f0f0004

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 167
    invoke-direct {p0}, Lcom/google/android/gm/OnePaneActivityController;->notInInbox()Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v3

    iput v3, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastConversationListTransactionId:I

    .line 169
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/gm/OnePaneActivityController;->mLastLabelListTransactionId:I

    .line 173
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->resetActionBarIcon()V

    .line 174
    return-void

    .line 149
    .end local v0           #accountChanged:Z
    .end local v1           #conversationListFragment:Landroid/app/Fragment;
    .end local v2           #fragmentTransaction:Landroid/app/FragmentTransaction;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    .restart local v0       #accountChanged:Z
    .restart local v2       #fragmentTransaction:Landroid/app/FragmentTransaction;
    :cond_1
    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 171
    .restart local v1       #conversationListFragment:Landroid/app/Fragment;
    :cond_2
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_2
.end method

.method public showLabelList()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/gm/OnePaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->transitionToLabelListMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gm/OnePaneActivityController;->renderLabelList()V

    .line 134
    :cond_0
    return-void
.end method

.method protected uncollapseList()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method
