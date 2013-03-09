.class public Lcom/google/android/gm/ConversationListFragment;
.super Landroid/app/ListFragment;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/gm/ConversationPositionTracker$ConversationPositionObserver;
.implements Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;
.implements Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;
.implements Lcom/google/android/gm/ViewMode$ModeChangeListener;


# instance fields
.field private final LDEBUG:Z

.field protected SHOW_UNDO_DELAY:J

.field private mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

.field private mAnimateChanges:Z

.field private mCallbacks:Lcom/google/android/gm/ConversationListCallbacks;

.field private mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

.field private final mDelayedShowUndo:Ljava/lang/Runnable;

.field private mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCabMode:Z

.field private mListSavedState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field private mPosition:I

.field private mPostedUndoOp:Lcom/google/android/gm/UndoOperation;

.field private mSearchResultCountTextView:Landroid/widget/TextView;

.field private mSearchStatusTextView:Landroid/widget/TextView;

.field private mSearchStatusView:Landroid/view/View;

.field private mSelectedCursorPosition:I

.field private mUndoHideListener:Landroid/animation/Animator$AnimatorListener;

.field protected mUndoView:Lcom/google/android/gm/UndoBarView;

.field private final mUpdateTimestampsRunnable:Ljava/lang/Runnable;

.field private mViewContext:Lcom/google/android/gm/ConversationListContext;

.field private mViewMode:Lcom/google/android/gm/ViewMode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    .line 80
    iget v0, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    iput v0, p0, Lcom/google/android/gm/ConversationListFragment;->mSelectedCursorPosition:I

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mHandler:Landroid/os/Handler;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationListFragment;->LDEBUG:Z

    .line 97
    new-instance v0, Lcom/google/android/gm/ConversationListFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ConversationListFragment$1;-><init>(Lcom/google/android/gm/ConversationListFragment;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/google/android/gm/ConversationListFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ConversationListFragment$2;-><init>(Lcom/google/android/gm/ConversationListFragment;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mDelayedShowUndo:Ljava/lang/Runnable;

    .line 120
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/google/android/gm/ConversationListFragment;->SHOW_UNDO_DELAY:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/ConversationListFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/ConversationListFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/UndoOperation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mPostedUndoOp:Lcom/google/android/gm/UndoOperation;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/gm/ConversationListFragment;Lcom/google/android/gm/UndoOperation;)Lcom/google/android/gm/UndoOperation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment;->mPostedUndoOp:Lcom/google/android/gm/UndoOperation;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    return-object v0
.end method

.method private configureSearchResultHeader()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 323
    .local v2, res:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->isSearchResult()Z

    move-result v3

    .line 324
    .local v3, showHeader:Z
    if-eqz v3, :cond_0

    .line 325
    iget-object v4, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchStatusTextView:Landroid/widget/TextView;

    const v6, 0x7f0c00f3

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v4, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchResultCountTextView:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_0
    iget-object v6, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchStatusView:Landroid/view/View;

    if-eqz v3, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 331
    if-eqz v3, :cond_2

    const v4, 0x7f0e0015

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 332
    .local v1, marginTop:I
    :goto_1
    iget-object v4, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 333
    .local v0, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 334
    iget-object v4, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    return-void

    .line 330
    .end local v0           #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #marginTop:I
    :cond_1
    const/16 v4, 0x8

    goto :goto_0

    :cond_2
    move v1, v5

    .line 331
    goto :goto_1
.end method

.method private getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMoveSelectionKey(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, handled:Z
    packed-switch p1, :pswitch_data_0

    .line 547
    :goto_0
    return v0

    .line 538
    :pswitch_0
    const/4 v0, 0x1

    .line 539
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gm/ConversationListFragment;->moveListSelection(Z)V

    goto :goto_0

    .line 543
    :pswitch_1
    const/4 v0, 0x1

    .line 544
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gm/ConversationListFragment;->moveListSelection(Z)V

    goto :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isSearchResult()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveListSelection(Z)V
    .locals 3
    .parameter "newer"

    .prologue
    const/4 v2, -0x1

    .line 523
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 524
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 525
    .local v0, currentPosition:I
    if-ne v0, v2, :cond_0

    .line 526
    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 527
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 531
    :goto_0
    return-void

    .line 530
    :cond_0
    if-eqz p1, :cond_1

    :goto_1
    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static newInstance(Lcom/google/android/gm/ConversationListContext;)Lcom/google/android/gm/ConversationListFragment;
    .locals 4
    .parameter "viewContext"

    .prologue
    .line 132
    new-instance v1, Lcom/google/android/gm/ConversationListFragment;

    invoke-direct {v1}, Lcom/google/android/gm/ConversationListFragment;-><init>()V

    .line 134
    .local v1, fragment:Lcom/google/android/gm/ConversationListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "conversation-list"

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListContext;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {v1, v0}, Lcom/google/android/gm/ConversationListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 137
    return-object v1
.end method

.method private refreshList()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->notifyDataSetChanged()V

    .line 487
    return-void
.end method

.method private showList()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->changeAccount(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 314
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->setLabel(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 317
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->configureSearchResultHeader()V

    .line 318
    return-void
.end method

.method private startLoadingList()V
    .locals 4

    .prologue
    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "query"

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getGmailQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "limit-initial-result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->hashCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 303
    return-void
.end method

.method private viewConversation(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCallbacks:Lcom/google/android/gm/ConversationListCallbacks;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ConversationListCallbacks;->onConversationSelected(I)V

    .line 514
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/RecentLabelsCache;->getInstance(Landroid/content/Context;)Lcom/google/android/gm/RecentLabelsCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/RecentLabelsCache;->touch(Ljava/lang/String;)V

    .line 515
    return-void
.end method


# virtual methods
.method public bindActivityInfo()V
    .locals 11

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .local v10, activity:Landroid/app/Activity;
    move-object v0, v10

    .line 211
    check-cast v0, Lcom/google/android/gm/ConversationListCallbacks;

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCallbacks:Lcom/google/android/gm/ConversationListCallbacks;

    .line 212
    invoke-static {v10}, Lcom/google/android/gm/MenuHandler;->getInstance(Landroid/content/Context;)Lcom/google/android/gm/MenuHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 213
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getViewMode()Lcom/google/android/gm/ViewMode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mViewMode:Lcom/google/android/gm/ViewMode;

    move-object v7, v10

    .line 214
    check-cast v7, Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;

    .line 215
    .local v7, starHandler:Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mViewMode:Lcom/google/android/gm/ViewMode;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ViewMode;->addListener(Lcom/google/android/gm/ViewMode$ModeChangeListener;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getBatchConversations()Lcom/google/android/gm/ConversationSelectionSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ConversationSelectionSet;->addObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getConversationPositionTracker()Lcom/google/android/gm/ConversationPositionTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ConversationPositionTracker;->registerObserver(Lcom/google/android/gm/ConversationPositionTracker$ConversationPositionObserver;)V

    .line 222
    new-instance v2, Lcom/google/android/gm/comm/NetworkProgressMonitor;

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gm/comm/NetworkProgressMonitor;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 223
    .local v2, progressMonitor:Lcom/google/android/gm/IProgressMonitor;
    new-instance v0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v4}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v5}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getBatchConversations()Lcom/google/android/gm/ConversationSelectionSet;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v8, p0, Lcom/google/android/gm/ConversationListFragment;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->isSearchResult()Z

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gm/IProgressMonitor;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Lcom/google/android/gm/ViewMode;Z)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    .line 229
    const v0, 0x7f0f00b3

    invoke-virtual {v10, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchStatusView:Landroid/view/View;

    .line 230
    const v0, 0x7f0f00b4

    invoke-virtual {v10, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchStatusTextView:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f0f00b5

    invoke-virtual {v10, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchResultCountTextView:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f0f0045

    invoke-virtual {v10, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/UndoBarView;

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    .line 234
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/UndoBarView;->setOnCancelListener(Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;)V

    .line 235
    new-instance v0, Lcom/google/android/gm/ConversationListFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ConversationListFragment$3;-><init>(Lcom/google/android/gm/ConversationListFragment;)V

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 256
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UndoBarView;->setUndoHideListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    return-void
.end method

.method public fadeConversations(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, conversationIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->fadeConversations(Ljava/util/Collection;)V

    .line 680
    return-void
.end method

.method public bridge synthetic getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getListAdapter()Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getListAdapter()Lcom/google/android/gm/ConversationHeaderCursorAdapter;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    return-object v0
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;Ljava/util/Collection;Ljava/util/Map;)Z
    .locals 18
    .parameter "keyCode"
    .parameter "event"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/KeyEvent;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 555
    .local p3, selectedConversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p4, selectedLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ConversationListFragment;->getSelectedItemPosition()I

    move-result v17

    .line 556
    .local v17, selection:I
    const/4 v14, 0x0

    .line 559
    .local v14, handled:Z
    const/4 v1, -0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_1

    .line 560
    move-object/from16 v5, p3

    .line 561
    .local v5, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gm/MenuHandler;->onKeyDown(ILandroid/view/KeyEvent;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    move-result v14

    :goto_0
    move v15, v14

    .line 607
    .end local v5           #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .end local v14           #handled:Z
    .local v15, handled:Z
    :goto_1
    return v15

    .line 568
    .end local v15           #handled:Z
    .restart local v5       #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .restart local v14       #handled:Z
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gm/ConversationListFragment;->handleMoveSelectionKey(ILandroid/view/KeyEvent;)Z

    move-result v14

    goto :goto_0

    .line 580
    .end local v5           #conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/ConversationListFragment;->getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v13

    .line 581
    .local v13, cursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v13}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_3

    .line 582
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 584
    const/4 v14, 0x0

    .line 589
    packed-switch p1, :pswitch_data_0

    .line 598
    :goto_2
    if-nez v14, :cond_2

    .line 599
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gm/ConversationListFragment;->handleMoveSelectionKey(ILandroid/view/KeyEvent;)Z

    move-result v14

    .line 601
    :cond_2
    if-nez v14, :cond_3

    .line 602
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gm/MenuHandler;->onKeyDown(ILandroid/view/KeyEvent;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    move-result v14

    :cond_3
    move v15, v14

    .line 607
    .end local v14           #handled:Z
    .restart local v15       #handled:Z
    goto :goto_1

    .line 592
    .end local v15           #handled:Z
    .restart local v14       #handled:Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v16

    .line 593
    .local v16, selectedView:Landroid/view/View;
    move-object/from16 v0, v16

    instance-of v1, v0, Lcom/google/android/gm/CanvasConversationHeaderView;

    if-eqz v1, :cond_4

    .line 594
    check-cast v16, Lcom/google/android/gm/CanvasConversationHeaderView;

    .end local v16           #selectedView:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gm/CanvasConversationHeaderView;->toggleCheckMark()V

    .line 596
    :cond_4
    const/4 v14, 0x1

    goto :goto_2

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch
.end method

.method public hideUndoView(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0}, Lcom/google/android/gm/UndoBarView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/UndoBarView;->hide(Z)V

    .line 476
    if-nez p1, :cond_0

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mPostedUndoOp:Lcom/google/android/gm/UndoOperation;

    .line 480
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ActivityController$ControllableActivity;

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    .line 190
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0, p0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->attachFragment(Lcom/google/android/gm/ConversationListFragment;)V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->bindActivityInfo()V

    .line 194
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListFragment;->onViewModeChanged(Lcom/google/android/gm/ViewMode;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->showList()V

    .line 203
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->startLoadingList()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 148
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "conversation-list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/ConversationListContext;->forBundle(Landroid/os/Bundle;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    .line 149
    if-eqz p1, :cond_0

    .line 150
    const-string v1, "list-state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListSavedState:Landroid/os/Parcelable;

    .line 153
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ConversationListFragment;->setRetainInstance(Z)V

    .line 154
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 159
    if-nez p2, :cond_0

    .line 178
    :goto_0
    return-object v0

    .line 166
    :cond_0
    const v1, 0x7f040015

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, rootView:Landroid/view/View;
    const v1, 0x7f0f0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mEmptyView:Landroid/view/View;

    .line 170
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    .line 171
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 172
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 173
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 270
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->removeActionStateListener()V

    .line 275
    iget v0, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListSavedState:Landroid/os/Parcelable;

    .line 281
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ViewMode;->removeListener(Lcom/google/android/gm/ViewMode$ModeChangeListener;)V

    .line 284
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0, v3}, Lcom/google/android/gm/ActivityController$ControllableActivity;->attachFragment(Lcom/google/android/gm/ConversationListFragment;)V

    .line 285
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getConversationPositionTracker()Lcom/google/android/gm/ConversationPositionTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ConversationPositionTracker;->unregisterObserver(Lcom/google/android/gm/ConversationPositionTracker$ConversationPositionObserver;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getBatchConversations()Lcom/google/android/gm/ConversationSelectionSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ConversationSelectionSet;->removeObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 292
    :cond_1
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 293
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 635
    instance-of v5, p2, Lcom/google/android/gm/CanvasConversationHeaderView;

    if-eqz v5, :cond_0

    .line 636
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v6}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gm/persistence/Persistence;->getHideCheckboxes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    .line 638
    .local v1, isCheckBoxVisible:Z
    :goto_0
    iget-object v5, p0, Lcom/google/android/gm/ConversationListFragment;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v5}, Lcom/google/android/gm/ViewMode;->isTwoPane()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    .local v2, isOnePane:Z
    :goto_1
    move-object v0, p2

    .line 639
    check-cast v0, Lcom/google/android/gm/CanvasConversationHeaderView;

    .line 642
    .local v0, headerView:Lcom/google/android/gm/CanvasConversationHeaderView;
    if-eqz v1, :cond_3

    iget-boolean v4, p0, Lcom/google/android/gm/ConversationListFragment;->mIsCabMode:Z

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 643
    invoke-direct {p0, p3}, Lcom/google/android/gm/ConversationListFragment;->viewConversation(I)V

    .line 650
    .end local v0           #headerView:Lcom/google/android/gm/CanvasConversationHeaderView;
    .end local v1           #isCheckBoxVisible:Z
    .end local v2           #isOnePane:Z
    :cond_0
    :goto_2
    return v3

    :cond_1
    move v1, v4

    .line 636
    goto :goto_0

    .restart local v1       #isCheckBoxVisible:Z
    :cond_2
    move v2, v4

    .line 638
    goto :goto_1

    .line 647
    .restart local v0       #headerView:Lcom/google/android/gm/CanvasConversationHeaderView;
    .restart local v2       #isOnePane:Z
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gm/CanvasConversationHeaderView;->toggleSelectionOrBeginDrag()V

    goto :goto_2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 519
    invoke-direct {p0, p3}, Lcom/google/android/gm/ConversationListFragment;->viewConversation(I)V

    .line 520
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListFragment;->hideUndoView(Z)V

    .line 92
    return-void
.end method

.method public onPositionChanged(Lcom/google/android/gm/ConversationPositionTracker;Z)V
    .locals 0
    .parameter "selectedConversationPos"
    .parameter "smoothScroll"

    .prologue
    .line 685
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/ConversationListFragment;->setSelectedPosition(Lcom/google/android/gm/ConversationPositionTracker;Z)V

    .line 686
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "list-state"

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 266
    :cond_0
    return-void
.end method

.method public onSetBecomeUnempty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationListFragment;->mIsCabMode:Z

    .line 492
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->refreshList()V

    .line 493
    return-void
.end method

.method public onSetChanged(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 506
    return-void
.end method

.method public onSetEmpty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationListFragment;->mIsCabMode:Z

    .line 498
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->refreshList()V

    .line 499
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 434
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 436
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 444
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 446
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/UndoBarView;->isEventInUndo(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0}, Lcom/google/android/gm/UndoBarView;->doHide()V

    .line 692
    :cond_0
    return-void
.end method

.method public onUndoCancel()V
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListFragment;->hideUndoView(Z)V

    .line 673
    return-void
.end method

.method public onViewModeChanged(Lcom/google/android/gm/ViewMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 656
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 657
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/google/android/gm/ViewMode;->isTwoPane()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    invoke-virtual {p1}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 663
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gm/ConversationListFragment;->mAnimateChanges:Z

    .line 668
    :goto_1
    return-void

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 665
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 666
    invoke-virtual {p1}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gm/ConversationListFragment;->mAnimateChanges:Z

    goto :goto_1
.end method

.method public setActionStateListener(Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->setActionStateListener(Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;)V

    .line 696
    return-void
.end method

.method public setCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 11
    .parameter "conversationCursor"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 350
    iget-object v9, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    if-eqz v9, :cond_1

    .line 351
    iget-object v9, p0, Lcom/google/android/gm/ConversationListFragment;->mCursorAdapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    iget-boolean v10, p0, Lcom/google/android/gm/ConversationListFragment;->mAnimateChanges:Z

    invoke-virtual {v9, p1, v10}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->swapCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V

    .line 354
    iget-object v9, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/google/android/gm/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 357
    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/google/android/gm/ConversationListFragment;->mListSavedState:Landroid/os/Parcelable;

    if-eqz v9, :cond_0

    .line 358
    iget-object v9, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/google/android/gm/ConversationListFragment;->mListSavedState:Landroid/os/Parcelable;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 359
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/android/gm/ConversationListFragment;->mListSavedState:Landroid/os/Parcelable;

    .line 362
    :cond_0
    iget-object v9, p0, Lcom/google/android/gm/ConversationListFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v9}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getBatchConversations()Lcom/google/android/gm/ConversationSelectionSet;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/google/android/gm/ConversationSelectionSet;->validateAgainstCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 364
    if-nez p1, :cond_2

    .line 427
    :cond_1
    :goto_0
    return-void

    .line 371
    :cond_2
    iget-object v9, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 372
    invoke-static {p1, v8}, Lcom/google/android/gm/Utils;->markConversationsVisible(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V

    .line 375
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getError()Lcom/google/android/gm/provider/Gmail$CursorError;

    move-result-object v1

    .line 376
    .local v1, cursorError:Lcom/google/android/gm/provider/Gmail$CursorError;
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v2

    .line 378
    .local v2, cursorStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 381
    .local v5, res:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->isSearchResult()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 382
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v0

    .line 383
    .local v0, conversationCount:I
    if-lez v0, :cond_5

    .line 387
    sget-object v9, Lcom/google/android/gm/provider/Gmail$CursorStatus;->COMPLETE:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq v2, v9, :cond_4

    const/16 v9, 0xa

    if-le v0, v9, :cond_7

    :cond_4
    move v6, v8

    .line 389
    .local v6, showCount:Z
    :goto_1
    if-eqz v6, :cond_5

    .line 391
    const v4, 0x7f0c00f2

    .line 392
    .local v4, formatId:I
    sget-object v9, Lcom/google/android/gm/provider/Gmail$CursorStatus;->COMPLETE:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq v2, v9, :cond_8

    .line 393
    const v4, 0x7f0c00f1

    .line 394
    div-int/lit8 v9, v0, 0xa

    mul-int/lit8 v3, v9, 0xa

    .line 398
    .local v3, displayCount:I
    :goto_2
    iget-object v9, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchResultCountTextView:Landroid/widget/TextView;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v7

    invoke-virtual {v5, v4, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    .end local v3           #displayCount:I
    .end local v4           #formatId:I
    .end local v6           #showCount:Z
    :cond_5
    sget-object v7, Lcom/google/android/gm/provider/Gmail$CursorStatus;->SEARCHING:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq v2, v7, :cond_6

    .line 407
    iget-object v7, p0, Lcom/google/android/gm/ConversationListFragment;->mSearchStatusTextView:Landroid/widget/TextView;

    const v8, 0x7f0c00f0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    .end local v0           #conversationCount:I
    :cond_6
    sget-object v7, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ERROR:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-ne v2, v7, :cond_1

    sget-object v7, Lcom/google/android/gm/provider/Gmail$CursorError;->AUTH_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    if-ne v1, v7, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gm/ConversationListFragment;->mViewContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v8}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/google/android/gm/ConversationListFragment$4;

    invoke-direct {v9, p0}, Lcom/google/android/gm/ConversationListFragment$4;-><init>(Lcom/google/android/gm/ConversationListFragment;)V

    invoke-static {v7, v8, v9}, Lcom/google/android/gm/AccountHelper;->promptForCredentials(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/gm/AccountHelper$CredentialsCallback;)V

    goto :goto_0

    .restart local v0       #conversationCount:I
    :cond_7
    move v6, v7

    .line 387
    goto :goto_1

    .line 396
    .restart local v4       #formatId:I
    .restart local v6       #showCount:Z
    :cond_8
    move v3, v0

    .restart local v3       #displayCount:I
    goto :goto_2
.end method

.method public setSelectedPosition(Lcom/google/android/gm/ConversationPositionTracker;Z)V
    .locals 5
    .parameter "selectedConversationPos"
    .parameter "smoothScroll"

    .prologue
    .line 616
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    .line 618
    .local v0, adapter:Lcom/google/android/gm/ConversationHeaderCursorAdapter;
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    invoke-virtual {v0, v3}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->translateSelectedPosition(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 619
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gm/ConversationListFragment;->getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 620
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationPositionTracker;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->translateSelectedPosition(I)I

    move-result v1

    .line 622
    .local v1, position:I
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationPositionTracker;->getPosition()I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/ConversationListFragment;->mSelectedCursorPosition:I

    .line 623
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 624
    if-eqz p2, :cond_0

    .line 625
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 627
    :cond_0
    iput v1, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    .line 631
    .end local v1           #position:I
    :goto_0
    return-void

    .line 629
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    goto :goto_0
.end method

.method public showUndoView(Lcom/google/android/gm/UndoOperation;Z)V
    .locals 4
    .parameter "undoOperation"
    .parameter "animate"

    .prologue
    .line 453
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v1}, Lcom/google/android/gm/UndoBarView;->isShown()Z

    move-result v0

    .line 454
    .local v0, wasShown:Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 455
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/android/gm/UndoBarView;->show(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/UndoOperation;Z)V

    .line 461
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/android/gm/UndoBarView;->show(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/UndoOperation;Z)V

    goto :goto_0
.end method

.method public updateSelectedPosition()V
    .locals 3

    .prologue
    .line 699
    iget v0, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    iget v1, p0, Lcom/google/android/gm/ConversationListFragment;->mSelectedCursorPosition:I

    if-eq v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 703
    iget v0, p0, Lcom/google/android/gm/ConversationListFragment;->mSelectedCursorPosition:I

    iput v0, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    .line 704
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/android/gm/ConversationListFragment;->mPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 706
    :cond_0
    return-void
.end method
