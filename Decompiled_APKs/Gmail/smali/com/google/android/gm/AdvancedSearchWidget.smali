.class public Lcom/google/android/gm/AdvancedSearchWidget;
.super Landroid/widget/LinearLayout;
.source "AdvancedSearchWidget.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;


# instance fields
.field private mCallback:Lcom/google/android/gm/AdvancedSearchWrapper$Callback;

.field private mContext:Landroid/content/Context;

.field public mLabel:Ljava/lang/String;

.field public mQuery:Ljava/lang/String;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/AdvancedSearchWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/AdvancedSearchWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-object p1, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private handleSubmitSearch()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mCallback:Lcom/google/android/gm/AdvancedSearchWrapper$Callback;

    invoke-interface {v2}, Lcom/google/android/gm/AdvancedSearchWrapper$Callback;->getMode()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mCallback:Lcom/google/android/gm/AdvancedSearchWrapper$Callback;

    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gm/AdvancedSearchWrapper$Callback;->reloadSearch(Ljava/lang/String;)V

    .line 130
    :goto_0
    return v0

    .line 127
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gm/AdvancedSearchWidget;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mCallback:Lcom/google/android/gm/AdvancedSearchWrapper$Callback;

    invoke-interface {v0, v1}, Lcom/google/android/gm/AdvancedSearchWrapper$Callback;->setMode(I)Z

    .line 129
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mCallback:Lcom/google/android/gm/AdvancedSearchWrapper$Callback;

    invoke-interface {v0}, Lcom/google/android/gm/AdvancedSearchWrapper$Callback;->exitSearchEntryMode()V

    move v0, v1

    .line 130
    goto :goto_0
.end method


# virtual methods
.method public enterNormalMode()V
    .locals 3

    .prologue
    .line 170
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gm/AdvancedSearchWidget;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mQuery:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public enterSearchEntryMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0, v2}, Lcom/google/android/gm/AdvancedSearchWidget;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setGravity(I)V

    .line 180
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 181
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 182
    return-void
.end method

.method public enterSearchResultsMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 186
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 187
    invoke-virtual {p0, v2}, Lcom/google/android/gm/AdvancedSearchWidget;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setGravity(I)V

    .line 189
    return-void
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/AdvancedSearchWrapper$Callback;)V
    .locals 5
    .parameter "activity"
    .parameter "callback"

    .prologue
    const/4 v4, 0x1

    .line 59
    const v2, 0x7f0f008e

    invoke-virtual {p0, v2}, Lcom/google/android/gm/AdvancedSearchWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    .line 60
    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 61
    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 62
    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 63
    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 64
    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 65
    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 67
    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 69
    .local v1, searchManager:Landroid/app/SearchManager;
    if-eqz v1, :cond_0

    .line 70
    invoke-interface {p1}, Lcom/google/android/gm/RestrictedActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 71
    .local v0, info:Landroid/app/SearchableInfo;
    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 73
    .end local v0           #info:Landroid/app/SearchableInfo;
    :cond_0
    iput-object p2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mCallback:Lcom/google/android/gm/AdvancedSearchWrapper$Callback;

    .line 74
    return-void
.end method

.method public isSearchEntryMode()Z
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/android/gm/AdvancedSearchWidget;->isShown()Z

    move-result v0

    return v0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mCallback:Lcom/google/android/gm/AdvancedSearchWrapper$Callback;

    invoke-interface {v0}, Lcom/google/android/gm/AdvancedSearchWrapper$Callback;->onClose()Z

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mQuery:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mQuery:Ljava/lang/String;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mQuery:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    return v0

    .line 95
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mQuery:Ljava/lang/String;

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 89
    invoke-direct {p0}, Lcom/google/android/gm/AdvancedSearchWidget;->handleSubmitSearch()Z

    move-result v0

    return v0
.end method

.method public onSuggestionClick(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 107
    const-string v2, ""

    .line 108
    .local v2, query:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 109
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    const-string v4, "suggest_intent_query"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, col:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    iget-object v4, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 113
    iput-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mQuery:Ljava/lang/String;

    .line 115
    .end local v1           #col:I
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/google/android/gm/AdvancedSearchWidget;->handleSubmitSearch()Z

    move-result v3

    .line 118
    :cond_1
    return v3
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/google/android/gm/AdvancedSearchWidget;->onSuggestionClick(I)Z

    move-result v0

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 5
    .parameter "label"

    .prologue
    .line 155
    if-eqz p1, :cond_1

    .line 156
    const-string v2, "(label|in):\\s*\\w*\\b"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 157
    .local v0, labelPattern:Ljava/util/regex/Pattern;
    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mQuery:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 160
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mQuery:Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mQuery:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 165
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mLabel:Ljava/lang/String;

    .line 167
    .end local v0           #labelPattern:Ljava/util/regex/Pattern;
    :cond_1
    return-void
.end method

.method public setQuery(Ljava/lang/String;Z)V
    .locals 1
    .parameter "searchQuery"
    .parameter "b"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWidget;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 202
    return-void
.end method
