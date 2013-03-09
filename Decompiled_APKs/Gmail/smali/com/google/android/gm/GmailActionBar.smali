.class public Lcom/google/android/gm/GmailActionBar;
.super Lcom/google/android/gm/BaseGmailActionBar;
.source "GmailActionBar.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;
.implements Lcom/google/android/gm/AdvancedSearchWrapper$Callback;
.implements Lcom/google/android/gm/ViewMode$ModeChangeListener;
.implements Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;


# instance fields
.field private mAdvancedSearchWrapper:Lcom/google/android/gm/AdvancedSearchWrapper;

.field private mHandler:Landroid/os/Handler;

.field private mMode:I

.field private mRemoveSearchFocusRunnable:Ljava/lang/Runnable;

.field private mSearch:Landroid/view/MenuItem;

.field private mSearchWidget:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/GmailActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/GmailActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/BaseGmailActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mHandler:Landroid/os/Handler;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/GmailActionBar;->mMode:I

    .line 45
    new-instance v0, Lcom/google/android/gm/GmailActionBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/GmailActionBar$1;-><init>(Lcom/google/android/gm/GmailActionBar;)V

    iput-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mRemoveSearchFocusRunnable:Ljava/lang/Runnable;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/GmailActionBar;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    return-object v0
.end method

.method private handleSubmitSearch()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 339
    iget v2, p0, Lcom/google/android/gm/GmailActionBar;->mMode:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/google/android/gm/GmailActionBar;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBar;->isSearchResult()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/GmailActionBar;->reloadSearch(Ljava/lang/String;)V

    move v0, v1

    .line 349
    :cond_1
    :goto_0
    return v0

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 347
    invoke-virtual {p0, v0}, Lcom/google/android/gm/GmailActionBar;->setMode(I)Z

    goto :goto_0
.end method

.method private isSearchResult()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v0}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->getCurrentListContext()Lcom/google/android/gm/ConversationListContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    return v0
.end method

.method private setActionBarIconBackInternal()V
    .locals 3

    .prologue
    const/4 v1, 0x6

    .line 147
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_1

    .line 149
    const-string v0, "Gmail"

    const-string v1, "null ActionBar"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 156
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->isRunningICSOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    invoke-interface {v0}, Lcom/google/android/gm/RestrictedActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method private setSearchResultsText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 229
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 230
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/gm/GmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->getCurrentListContext()Lcom/google/android/gm/ConversationListContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getSearchQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 234
    :cond_1
    return-void
.end method


# virtual methods
.method public enterSearchMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 403
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 405
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 406
    const/4 v0, 0x1

    .line 408
    :cond_0
    return v0
.end method

.method public exitSearchEntryMode()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public getCurrentLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->getCurrentListContext()Lcom/google/android/gm/ConversationListContext;

    move-result-object v0

    .line 124
    .local v0, context:Lcom/google/android/gm/ConversationListContext;
    if-nez v0, :cond_0

    .line 125
    const/4 v1, 0x0

    .line 127
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/google/android/gm/GmailActionBar;->mMode:I

    return v0
.end method

.method public getOptionsMenuId()I
    .locals 2

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, menuId:I
    iget v1, p0, Lcom/google/android/gm/GmailActionBar;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 275
    :goto_0
    return v0

    .line 246
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBar;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v1}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 253
    const v0, 0x7f120002

    .line 255
    goto :goto_0

    .line 248
    :pswitch_1
    const v0, 0x7f120001

    .line 249
    goto :goto_0

    .line 258
    :pswitch_2
    const v0, 0x7f120003

    .line 259
    goto :goto_0

    .line 262
    :pswitch_3
    const v0, 0x7f120005

    .line 263
    goto :goto_0

    .line 267
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBar;->isSearchResult()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/GmailActionBar;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v1}, Lcom/google/android/gm/ViewMode;->isTwoPane()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/GmailActionBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gm/Utils;->shouldShowTwoPaneSearchResult(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const v0, 0x7f120003

    goto :goto_0

    .line 271
    :cond_0
    const v0, 0x7f120001

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 246
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method public handleRestore(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseGmailActionBar;->handleRestore(Landroid/os/Bundle;)V

    .line 307
    if-eqz p1, :cond_0

    const-string v1, "saved-actionbar-mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    const-string v1, "saved-actionbar-mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 309
    .local v0, mode:I
    if-ltz v0, :cond_1

    .line 310
    invoke-virtual {p0, v0}, Lcom/google/android/gm/GmailActionBar;->setMode(I)Z

    .line 315
    .end local v0           #mode:I
    :cond_0
    :goto_0
    return-void

    .line 312
    .restart local v0       #mode:I
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/GmailActionBar;->setMode(I)Z

    goto :goto_0
.end method

.method public handleSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseGmailActionBar;->handleSaveInstanceState(Landroid/os/Bundle;)V

    .line 296
    if-eqz p1, :cond_0

    .line 297
    const-string v0, "saved-actionbar-mode"

    iget v1, p0, Lcom/google/android/gm/GmailActionBar;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    :cond_0
    return-void
.end method

.method public initialize(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/BaseGmailActionBar$Callback;Lcom/google/android/gm/ViewMode;Landroid/app/ActionBar;)V
    .locals 2
    .parameter "activity"
    .parameter "callback"
    .parameter "viewMode"
    .parameter "actionBar"

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gm/BaseGmailActionBar;->initialize(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/BaseGmailActionBar$Callback;Lcom/google/android/gm/ViewMode;Landroid/app/ActionBar;)V

    .line 81
    const v0, 0x7f0f0090

    invoke-virtual {p0, v0}, Lcom/google/android/gm/GmailActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/AccountRecentLabelSpinner;

    iput-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    .line 82
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    iget-object v1, p0, Lcom/google/android/gm/GmailActionBar;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    invoke-interface {v1}, Lcom/google/android/gm/RestrictedActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->initialize(Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;Lcom/google/android/gm/UiHandler;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ViewMode;->addListener(Lcom/google/android/gm/ViewMode$ModeChangeListener;)V

    .line 85
    return-void
.end method

.method public isSearchQueryEntryMode()Z
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public navigateToAccount(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v0, p1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->navigateToAccount(Ljava/lang/String;)Z

    .line 109
    return-void
.end method

.method public navigateToLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "labelCanonicalName"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v0, p1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->navigateToLabel(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/GmailActionBar;->setMode(I)Z

    .line 436
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v0}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->exitSearchMode()V

    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 413
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->shouldShowTwoPaneSearchResult(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gm/GmailActionBar;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v0}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->exitSearchMode()V

    .line 416
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 418
    :cond_1
    return v2
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBar;->isSearchResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/GmailActionBar;->mRemoveSearchFocusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBar;->handleSubmitSearch()Z

    move-result v0

    return v0
.end method

.method public onSuggestionClick(I)Z
    .locals 5
    .parameter "position"

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBar;->isSearchResult()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    const-string v2, ""

    .line 326
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 327
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    const-string v3, "suggest_intent_query"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 329
    .local v1, col:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    .end local v1           #col:I
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 333
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #query:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBar;->handleSubmitSearch()Z

    move-result v3

    return v3
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/google/android/gm/GmailActionBar;->onSuggestionClick(I)Z

    move-result v0

    return v0
.end method

.method public onViewModeChanged(Lcom/google/android/gm/ViewMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 282
    return-void
.end method

.method public prepareOptionsMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 177
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gm/GmailActionBar;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gm/GmailActionBar;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/SnippetTextView;->setVisibility(I)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mLabelView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mLabelView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_1
    iget v0, p0, Lcom/google/android/gm/GmailActionBar;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 223
    :cond_2
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0

    .line 195
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setVisibility(I)V

    .line 196
    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBar;->setSearchResultsText()V

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mLabelView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 204
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setVisibility(I)V

    .line 207
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBar;->isSearchResult()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->shouldShowTwoPaneSearchResult(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0

    .line 218
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBar;->setSearchResultsText()V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reloadSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 397
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 398
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v0, p1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->reloadSearch(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public setActionBarIconBack()V
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->getCurrentListContext()Lcom/google/android/gm/ConversationListContext;

    move-result-object v0

    .line 136
    .local v0, context:Lcom/google/android/gm/ConversationListContext;
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBar;->setActionBarIconBackInternal()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBar;->setActionBarIconBackInternal()V

    goto :goto_0
.end method

.method public setActionBarIconNormal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_1

    .line 94
    const-string v0, "Gmail"

    const-string v1, "null ActionBar"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 101
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->isRunningICSOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    invoke-interface {v0}, Lcom/google/android/gm/RestrictedActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mAdvancedSearchWrapper:Lcom/google/android/gm/AdvancedSearchWrapper;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mAdvancedSearchWrapper:Lcom/google/android/gm/AdvancedSearchWrapper;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/AdvancedSearchWrapper;->setLabel(Ljava/lang/String;)V

    .line 290
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseGmailActionBar;->setLabel(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public setMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/gm/GmailActionBar;->mMode:I

    if-eq p1, v0, :cond_0

    .line 169
    iput p1, p0, Lcom/google/android/gm/GmailActionBar;->mMode:I

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSearch(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 364
    const v0, 0x7f0f008e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    .line 365
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    .line 367
    .local v3, fullView:Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 368
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    .line 369
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SearchManager;

    .line 372
    .local v7, searchManager:Landroid/app/SearchManager;
    if-eqz v7, :cond_0

    .line 373
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    invoke-interface {v0}, Lcom/google/android/gm/RestrictedActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v6

    .line 375
    .local v6, info:Landroid/app/SearchableInfo;
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v0, v6}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 377
    .end local v6           #info:Landroid/app/SearchableInfo;
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 378
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 380
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 382
    .end local v7           #searchManager:Landroid/app/SearchManager;
    :cond_1
    const v0, 0x7f0f008f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 383
    new-instance v0, Lcom/google/android/gm/AdvancedSearchWrapper;

    iget-object v1, p0, Lcom/google/android/gm/GmailActionBar;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    iget-object v4, p0, Lcom/google/android/gm/GmailActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/gm/GmailActionBar;->getCurrentLabel()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/AdvancedSearchWrapper;-><init>(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/AdvancedSearchWrapper$Callback;Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mAdvancedSearchWrapper:Lcom/google/android/gm/AdvancedSearchWrapper;

    .line 387
    .end local v3           #fullView:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public showLabelList()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v0}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->showLabelList()V

    .line 119
    return-void
.end method
