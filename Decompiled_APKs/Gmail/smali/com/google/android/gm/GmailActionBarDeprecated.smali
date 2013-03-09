.class public Lcom/google/android/gm/GmailActionBarDeprecated;
.super Lcom/google/android/gm/BaseGmailActionBar;
.source "GmailActionBarDeprecated.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;
.implements Lcom/google/android/gm/AdvancedSearchWrapper$Callback;
.implements Lcom/google/android/gm/ViewMode$ModeChangeListener;
.implements Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAdvancedSearchWidget:Lcom/google/android/gm/AdvancedSearchWidget;

.field private mMode:I

.field private mSearch:Landroid/view/MenuItem;

.field private mSearchWidget:Landroid/widget/SearchView;

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/GmailActionBarDeprecated;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/GmailActionBarDeprecated;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/BaseGmailActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mMode:I

    .line 53
    return-void
.end method

.method private handleSubmitSearch()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 311
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->getCurrentListContext()Lcom/google/android/gm/ConversationListContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    iget-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->reloadSearch(Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSearchWidget:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSearchWidget:Landroid/widget/SearchView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 318
    invoke-virtual {p0, v0}, Lcom/google/android/gm/GmailActionBarDeprecated;->setMode(I)Z

    goto :goto_0
.end method

.method private setActionBarIconBackInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 123
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 126
    return-void
.end method


# virtual methods
.method public enterSearchMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mAdvancedSearchWidget:Lcom/google/android/gm/AdvancedSearchWidget;

    invoke-virtual {v0}, Lcom/google/android/gm/AdvancedSearchWidget;->enterSearchEntryMode()V

    .line 351
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSearch:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 353
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 355
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public exitSearchEntryMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 130
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mAdvancedSearchWidget:Lcom/google/android/gm/AdvancedSearchWidget;

    invoke-virtual {v0}, Lcom/google/android/gm/AdvancedSearchWidget;->enterNormalMode()V

    .line 131
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSearch:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 136
    :cond_0
    return-void
.end method

.method public getCurrentLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->getCurrentListContext()Lcom/google/android/gm/ConversationListContext;

    move-result-object v0

    .line 104
    .local v0, context:Lcom/google/android/gm/ConversationListContext;
    if-nez v0, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 107
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
    .line 339
    iget v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mMode:I

    return v0
.end method

.method public getOptionsMenuId()I
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, menuId:I
    iget v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 239
    :goto_0
    return v0

    .line 210
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v1}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 217
    const v0, 0x7f120002

    .line 219
    goto :goto_0

    .line 212
    :pswitch_1
    const v0, 0x7f120001

    .line 213
    goto :goto_0

    .line 222
    :pswitch_2
    const v0, 0x7f120003

    .line 223
    goto :goto_0

    .line 226
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v1}, Lcom/google/android/gm/ViewMode;->isTwoPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const v0, 0x7f120003

    goto :goto_0

    .line 229
    :cond_0
    const v0, 0x7f120001

    .line 231
    goto :goto_0

    .line 233
    :pswitch_4
    const v0, 0x7f120005

    .line 234
    goto :goto_0

    .line 236
    :pswitch_5
    const v0, 0x7f120001

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 210
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method public handleRestore(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseGmailActionBar;->handleRestore(Landroid/os/Bundle;)V

    .line 281
    if-eqz p1, :cond_0

    const-string v1, "saved-actionbar-mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const-string v1, "saved-actionbar-mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, mode:I
    if-ltz v0, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Lcom/google/android/gm/GmailActionBarDeprecated;->setMode(I)Z

    .line 287
    .end local v0           #mode:I
    :cond_0
    return-void
.end method

.method public handleSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseGmailActionBar;->handleSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    if-eqz p1, :cond_0

    .line 271
    const-string v0, "saved-actionbar-mode"

    iget v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    :cond_0
    return-void
.end method

.method public initialize(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/BaseGmailActionBar$Callback;Lcom/google/android/gm/ViewMode;Landroid/app/ActionBar;)V
    .locals 3
    .parameter "activity"
    .parameter "callback"
    .parameter "viewMode"
    .parameter "actionBar"

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gm/BaseGmailActionBar;->initialize(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/BaseGmailActionBar$Callback;Lcom/google/android/gm/ViewMode;Landroid/app/ActionBar;)V

    .line 66
    const v1, 0x7f0f008d

    invoke-virtual {p0, v1}, Lcom/google/android/gm/GmailActionBarDeprecated;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, searchView:Landroid/view/View;
    check-cast v0, Lcom/google/android/gm/AdvancedSearchWidget;

    .end local v0           #searchView:Landroid/view/View;
    iput-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mAdvancedSearchWidget:Lcom/google/android/gm/AdvancedSearchWidget;

    .line 68
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mAdvancedSearchWidget:Lcom/google/android/gm/AdvancedSearchWidget;

    invoke-virtual {v1, p1, p0}, Lcom/google/android/gm/AdvancedSearchWidget;->initialize(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/AdvancedSearchWrapper$Callback;)V

    .line 70
    const v1, 0x7f0f0090

    invoke-virtual {p0, v1}, Lcom/google/android/gm/GmailActionBarDeprecated;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/AccountRecentLabelSpinner;

    iput-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    .line 71
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    iget-object v2, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    invoke-interface {v2}, Lcom/google/android/gm/RestrictedActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner;->initialize(Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;Lcom/google/android/gm/UiHandler;)V

    .line 73
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v1, p0}, Lcom/google/android/gm/ViewMode;->addListener(Lcom/google/android/gm/ViewMode$ModeChangeListener;)V

    .line 74
    return-void
.end method

.method public isSearchQueryEntryMode()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mAdvancedSearchWidget:Lcom/google/android/gm/AdvancedSearchWidget;

    invoke-virtual {v0}, Lcom/google/android/gm/AdvancedSearchWidget;->isSearchEntryMode()Z

    move-result v0

    return v0
.end method

.method public navigateToAccount(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v0, p1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->navigateToAccount(Ljava/lang/String;)Z

    .line 89
    return-void
.end method

.method public navigateToLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "labelCanonicalName"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v0, p1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->navigateToLabel(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onClose()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 245
    iget v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mMode:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v0}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->exitSearchMode()V

    .line 250
    :goto_0
    return v2

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/GmailActionBarDeprecated;->exitSearchEntryMode()V

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .parameter "newText"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSearchWidget:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSearchWidget:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 329
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBarDeprecated;->handleSubmitSearch()Z

    move-result v0

    return v0
.end method

.method public onSuggestionClick(I)Z
    .locals 5
    .parameter "position"

    .prologue
    .line 296
    iget v3, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 297
    const-string v2, ""

    .line 298
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mAdvancedSearchWidget:Lcom/google/android/gm/AdvancedSearchWidget;

    invoke-virtual {v3}, Lcom/google/android/gm/AdvancedSearchWidget;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 299
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    const-string v3, "suggest_intent_query"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, col:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    .end local v1           #col:I
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSearchWidget:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 305
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #query:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBarDeprecated;->handleSubmitSearch()Z

    move-result v3

    return v3
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/google/android/gm/GmailActionBarDeprecated;->onSuggestionClick(I)Z

    move-result v0

    return v0
.end method

.method public onViewModeChanged(Lcom/google/android/gm/ViewMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    invoke-interface {v0}, Lcom/google/android/gm/RestrictedActivity;->invalidateOptionsMenu()V

    .line 257
    return-void
.end method

.method public prepareOptionsMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 153
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/SnippetTextView;->setVisibility(I)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mLabelView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mLabelView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_1
    iget v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 162
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 166
    :cond_2
    iget v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :cond_3
    :goto_0
    return-void

    .line 168
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gm/GmailActionBarDeprecated;->exitSearchEntryMode()V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isTwoPane()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mAdvancedSearchWidget:Lcom/google/android/gm/AdvancedSearchWidget;

    invoke-virtual {v0}, Lcom/google/android/gm/AdvancedSearchWidget;->enterSearchResultsMode()V

    .line 177
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mAdvancedSearchWidget:Lcom/google/android/gm/AdvancedSearchWidget;

    iget-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->getCurrentListContext()Lcom/google/android/gm/ConversationListContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getSearchQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gm/AdvancedSearchWidget;->setQuery(Ljava/lang/String;Z)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mLabelView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 186
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    invoke-virtual {v0, v4}, Lcom/google/android/gm/SnippetTextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/gm/SnippetTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reloadSearch(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v0, p1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->reloadSearch(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public setActionBarIconBack()V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->getCurrentListContext()Lcom/google/android/gm/ConversationListContext;

    move-result-object v0

    .line 116
    .local v0, context:Lcom/google/android/gm/ConversationListContext;
    invoke-direct {p0}, Lcom/google/android/gm/GmailActionBarDeprecated;->setActionBarIconBackInternal()V

    .line 117
    return-void
.end method

.method public setActionBarIconNormal()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 84
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mAdvancedSearchWidget:Lcom/google/android/gm/AdvancedSearchWidget;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/AdvancedSearchWidget;->setLabel(Ljava/lang/String;)V

    .line 264
    invoke-super {p0, p1}, Lcom/google/android/gm/BaseGmailActionBar;->setLabel(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public setMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 143
    iget v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mMode:I

    if-eq p1, v0, :cond_0

    .line 144
    iput p1, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mMode:I

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSearch(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 360
    const v0, 0x7f0f008e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mSearch:Landroid/view/MenuItem;

    .line 361
    return-void
.end method

.method public showLabelList()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gm/GmailActionBarDeprecated;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v0}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->showLabelList()V

    .line 99
    return-void
.end method
