.class public Lcom/google/android/gm/TwoPaneActivityController;
.super Lcom/google/android/gm/BaseActivityController;
.source "TwoPaneActivityController.java"


# instance fields
.field private mCommandId:I

.field private mConversationErrorView:Landroid/view/View;

.field private mLayout:Lcom/google/android/gm/TriStateSplitLayout;

.field private mPendingConversationViewable:Lcom/google/android/gm/ConversationViewable;

.field private mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

.field private final mSingleCommandListener:Lcom/google/android/gm/CommandListener;

.field private mUndoOp:Lcom/google/android/gm/UndoOperation;


# direct methods
.method protected constructor <init>(Lcom/google/android/gm/ActivityController$ControllableActivity;Lcom/google/android/gm/ViewMode;)V
    .locals 1
    .parameter "activity"
    .parameter "viewMode"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/BaseActivityController;-><init>(Lcom/google/android/gm/ActivityController$ControllableActivity;Lcom/google/android/gm/ViewMode;)V

    .line 96
    new-instance v0, Lcom/google/android/gm/TwoPaneActivityController$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/TwoPaneActivityController$1;-><init>(Lcom/google/android/gm/TwoPaneActivityController;)V

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mSingleCommandListener:Lcom/google/android/gm/CommandListener;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/gm/TwoPaneActivityController;Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/gm/TwoPaneActivityController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mCommandId:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/gm/TwoPaneActivityController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mCommandId:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/UndoOperation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mUndoOp:Lcom/google/android/gm/UndoOperation;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gm/TwoPaneActivityController;Lcom/google/android/gm/UndoOperation;)Lcom/google/android/gm/UndoOperation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mUndoOp:Lcom/google/android/gm/UndoOperation;

    return-object p1
.end method

.method private addConversationFragment()V
    .locals 3

    .prologue
    .line 427
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mPendingConversationViewable:Lcom/google/android/gm/ConversationViewable;

    if-nez v1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 434
    .local v0, fragmentTransaction:Landroid/app/FragmentTransaction;
    const v2, 0x7f0f0005

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mPendingConversationViewable:Lcom/google/android/gm/ConversationViewable;

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 436
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 437
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mPendingConversationViewable:Lcom/google/android/gm/ConversationViewable;

    .line 439
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->clearUndoOperations()V

    goto :goto_0
.end method

.method private initConversationListFragment(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/4 v5, 0x0

    .line 350
    if-eqz p1, :cond_0

    .line 351
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v2}, Lcom/google/android/gm/ViewMode;->transitionToConversationListMode()Z

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    const-string v2, "Gmail"

    const-string v3, "Non-search UI interaction: Turning on normal actionbar mode."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 356
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v2, v5}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    .line 357
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->invalidateOptionsMenu()V

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 361
    .local v1, fragmentTransaction:Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 362
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-static {v2}, Lcom/google/android/gm/ConversationListFragment;->newInstance(Lcom/google/android/gm/ConversationListContext;)Lcom/google/android/gm/ConversationListFragment;

    move-result-object v0

    .line 364
    .local v0, conversationListFragment:Landroid/app/Fragment;
    const v2, 0x7f0f0004

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 365
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 366
    return-void
.end method

.method private removeConversationFragment()V
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 72
    .local v0, fragmentTransaction:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 73
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method protected getSearchResultsPane()I
    .locals 1

    .prologue
    .line 532
    const v0, 0x7f0f0004

    return v0
.end method

.method public getSingleCommandListener()Lcom/google/android/gm/CommandListener;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mSingleCommandListener:Lcom/google/android/gm/CommandListener;

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 241
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 242
    const-string v1, "label"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, label:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gm/TwoPaneActivityController;->handleLabelSelected(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->renderLabelList()V

    .line 246
    .end local v0           #label:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handleBackPressed()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->isSearchQueryEntryMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->exitSearchEntryMode()V

    .line 480
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 478
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/TwoPaneActivityController;->popView(Z)V

    goto :goto_0
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationListAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->getSelectedConversations()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->getSelectedLabels()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/gm/ConversationListFragment;->handleKeyDown(ILandroid/view/KeyEvent;Ljava/util/Collection;Ljava/util/Map;)Z

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 3
    .parameter
    .parameter "conversationCursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ">;",
            "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$ConversationCursor;>;"
    const/4 v2, 0x0

    .line 273
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/BaseActivityController;->handleLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 275
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADING:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq v0, v1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationErrorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mJumpToFirstConversation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TwoPaneActivityController;->canMoveToConversation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gm/TwoPaneActivityController;->handleConversationSelected(ILjava/lang/Boolean;)V

    .line 284
    iput-boolean v2, p0, Lcom/google/android/gm/TwoPaneActivityController;->mJumpToFirstConversation:Z

    .line 286
    :cond_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationErrorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public handleUpPressed()V
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->uncollapseList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 470
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/TwoPaneActivityController;->popView(Z)V

    goto :goto_0
.end method

.method protected hideUndoView(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->hideUndoView(Z)V

    .line 301
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0, v1}, Lcom/google/android/gm/ConversationViewable;->hideUndoView(Z)V

    .line 304
    :cond_0
    return-void
.end method

.method public initialize(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 46
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    const v3, 0x7f040052

    invoke-interface {v0, v3}, Lcom/google/android/gm/ActivityController$ControllableActivity;->setContentView(I)V

    .line 48
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    const v3, 0x7f0f00bf

    invoke-interface {v0, v3}, Lcom/google/android/gm/ActivityController$ControllableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/TriStateSplitLayout;

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    .line 49
    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivityController;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.action.SEARCH"

    iget-object v4, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v4}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/gm/TriStateSplitLayout;->initializeLayout(Z)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->attachToViewMode(Lcom/google/android/gm/ViewMode;)V

    .line 52
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/TriStateSplitLayout;->setListener(Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    const v3, 0x7f0f00c5

    invoke-virtual {v0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationErrorView:Landroid/view/View;

    .line 54
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseActivityController;->initialize(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    if-nez p1, :cond_1

    const-string v0, "android.intent.action.SEARCH"

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/Utils;->shouldShowTwoPaneSearchResult(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->renderLabelList()V

    .line 62
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 49
    goto :goto_0

    :cond_3
    move v1, v2

    .line 62
    goto :goto_1
.end method

.method protected isConversationListAdded()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isConversationListVisible()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0}, Lcom/google/android/gm/TriStateSplitLayout;->isConversationListVisible()Z

    move-result v0

    return v0
.end method

.method public navigateToAccount(Ljava/lang/String;)Z
    .locals 1
    .parameter "newAccount"

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseActivityController;->navigateToAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->renderLabelList()V

    .line 322
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public navigateToLabel(Ljava/lang/String;)V
    .locals 3
    .parameter "labelCanonicalName"

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mJumpToFirstConversation:Z

    .line 256
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->cleanupConversation()V

    .line 257
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivityController;->removeConversationFragment()V

    .line 259
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController;->mAccount:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/google/android/gm/ConversationListContext;->forLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v0

    .line 261
    .local v0, context:Lcom/google/android/gm/ConversationListContext;
    invoke-virtual {p0, v0}, Lcom/google/android/gm/TwoPaneActivityController;->setConversationListContext(Lcom/google/android/gm/ConversationListContext;)V

    .line 262
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gm/TwoPaneActivityController;->initConversationListFragment(Z)V

    .line 268
    .end local v0           #context:Lcom/google/android/gm/ConversationListContext;
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseActivityController;->navigateToLabel(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->renderLabelList()V

    goto :goto_0
.end method

.method public onConversationVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/UiHandler;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 407
    :cond_0
    if-eqz p1, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivityController;->addConversationFragment()V

    goto :goto_0

    .line 410
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivityController;->removeConversationFragment()V

    goto :goto_0
.end method

.method public onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V
    .locals 3
    .parameter "label"
    .parameter "conversationId"
    .parameter "added"

    .prologue
    .line 83
    new-instance v0, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v0}, Lcom/google/android/gm/LabelOperations;-><init>()V

    .line 84
    .local v0, ops:Lcom/google/android/gm/LabelOperations;
    invoke-virtual {v0, p1, p4}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/Utils;->isConversationBeingRemoved(Lcom/google/android/gm/LabelOperations;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    if-nez v1, :cond_0

    .line 88
    new-instance v2, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/gm/TwoPaneActivityController;->getNextConversationOnDestructiveCommand(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;-><init>(Lcom/google/android/gm/BaseActivityController;Lcom/google/android/gm/ConversationInfo;)V

    iput-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    .line 92
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gm/BaseActivityController;->onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V

    .line 93
    return-void

    .line 88
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSearchResultLoaded()V
    .locals 3

    .prologue
    .line 509
    new-instance v0, Lcom/google/android/gm/TwoPaneActivityController$2;

    invoke-direct {v0, p0}, Lcom/google/android/gm/TwoPaneActivityController$2;-><init>(Lcom/google/android/gm/TwoPaneActivityController;)V

    .line 516
    .local v0, runnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v1

    if-nez v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationErrorView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    if-nez v1, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->isTesting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 520
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 522
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationErrorView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gm/Utils;->shouldShowTwoPaneSearchResult(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gm/UiHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationListAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ConversationListFragment;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ConversationViewable;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 316
    :cond_1
    return-void
.end method

.method public onViewModeChanged(Lcom/google/android/gm/ViewMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseActivityController;->onViewModeChanged(Lcom/google/android/gm/ViewMode;)V

    .line 418
    invoke-virtual {p1}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mJumpToFirstConversation:Z

    .line 423
    :cond_0
    return-void
.end method

.method protected popView(Z)V
    .locals 2
    .parameter "preventClose"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->finish()V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    .line 455
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->transitionToConversationListMode()Z

    goto :goto_0

    .line 458
    :cond_2
    if-nez p1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->finish()V

    goto :goto_0
.end method

.method public renderLabelList()V
    .locals 5

    .prologue
    .line 328
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 330
    .local v0, fragmentTransaction:Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 331
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/LabelListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gm/LabelListFragment;

    move-result-object v1

    .line 333
    .local v1, labelListFragment:Landroid/app/Fragment;
    const v2, 0x7f0f00c0

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 334
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 335
    return-void
.end method

.method protected resetActionBarIcon()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->setActionBarIconNormal()V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->setActionBarIconBack()V

    goto :goto_0
.end method

.method protected shouldShowFirstSearchResult()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->shouldShowTwoPaneSearchResult(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showConversationInternal(Lcom/google/android/gm/ConversationInfo;Z)V
    .locals 4
    .parameter "info"
    .parameter "autoCollapseList"

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/BaseActivityController;->showConversationInternal(Lcom/google/android/gm/ConversationInfo;Z)V

    .line 373
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    const-string v0, "Gmail"

    const-string v1, "Non-search UI interaction: Turning on normal actionbar mode."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 375
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0, v3}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    .line 376
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->invalidateOptionsMenu()V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController;->mCurrentConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivityController;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationPositionTracker;->getPosition()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/ConversationPagerFragment;->newInstance(Ljava/lang/String;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationInfo;I)Lcom/google/android/gm/ConversationViewable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mPendingConversationViewable:Lcom/google/android/gm/ConversationViewable;

    .line 383
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->transitionToConversationMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    .line 397
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->invalidateOptionsMenu()V

    .line 398
    return-void

    .line 387
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gm/TwoPaneActivityController;->addConversationFragment()V

    .line 389
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0}, Lcom/google/android/gm/TriStateSplitLayout;->isConversationListCollapsible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0}, Lcom/google/android/gm/TriStateSplitLayout;->collapseList()Z

    goto :goto_0
.end method

.method protected showConversationList(Lcom/google/android/gm/ConversationListContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 344
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseActivityController;->showConversationList(Lcom/google/android/gm/ConversationListContext;)V

    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/TwoPaneActivityController;->initConversationListFragment(Z)V

    .line 347
    return-void
.end method

.method public showLabelList()V
    .locals 0

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController;->handleUpPressed()V

    .line 340
    return-void
.end method

.method protected uncollapseList()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0}, Lcom/google/android/gm/TriStateSplitLayout;->isConversationListUncollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController;->mLayout:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-virtual {v0}, Lcom/google/android/gm/TriStateSplitLayout;->uncollapseList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
