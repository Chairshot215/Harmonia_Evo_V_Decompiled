.class public Lcom/google/android/finsky/activities/SearchFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "SearchFragment.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

.field private mAdapterSet:Z

.field private mBackendId:I

.field private mListView:Landroid/widget/ListView;

.field private mNumCellsTallSearch:I

.field private mNumCellsWideSearch:I

.field private mQuery:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

.field private mSearchUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/SearchFragment;
    .locals 2
    .parameter "query"
    .parameter "searchUrl"
    .parameter "referrerUrl"

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/finsky/activities/SearchFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SearchFragment;-><init>()V

    .line 52
    .local v0, fragment:Lcom/google/android/finsky/activities/SearchFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SearchFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 53
    const-string v1, "finsky.PageFragment.SearchFragment.query"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/activities/SearchFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "finsky.PageFragment.SearchFragment.referrer"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/SearchFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "finsky.PageFragment.SearchFragment.searchUrl"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/SearchFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 145
    const v0, 0x7f040020

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logListView()V
    .locals 6

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    :cond_0
    return-void

    .line 173
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeSearch;->getBucketCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeSearch;->getBucketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, cookie:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mReferrerUrl:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/DfeSearch;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeSearch;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeSearch;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    if-eqz p1, :cond_0

    .line 73
    const-string v1, "backend_id"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    .line 74
    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    invoke-interface {v1, v2}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    .line 79
    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 82
    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f080186

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    .local v0, emptyResultsView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f7

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mNumCellsWideSearch:I

    .line 86
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mNumCellsTallSearch:I

    .line 88
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->rebindActionBar()V

    .line 90
    iput-boolean v5, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapterSet:Z

    .line 91
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->switchToLoading()V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->requestData()V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->rebindAdapter()V

    .line 101
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mReferrerUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeSearch;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.PageFragment.SearchFragment.query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.PageFragment.SearchFragment.referrer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mReferrerUrl:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.PageFragment.SearchFragment.searchUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchUrl:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public onDataChanged()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDataChanged()V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->logListView()V

    .line 164
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->rebindAdapter()V

    .line 165
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->rebindActionBar()V

    .line 166
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 234
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/SearchAdapter;->onDestroy()V

    .line 240
    :cond_1
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroy()V

    .line 241
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    .line 224
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/SearchAdapter;->onDestroyView()V

    .line 227
    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    .line 228
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    const-string v0, "backend_id"

    iget v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    return-void
.end method

.method public rebindActionBar()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v4

    if-nez v4, :cond_0

    .line 208
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeSearch;->getBackendId()I

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    .line 190
    iget v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    const-string v5, "pub:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07023a

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    const-string v8, "pub:"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, breadcrumb:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v4, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 205
    .end local v1           #breadcrumb:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    check-cast v4, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/MainActivity;->getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    .line 206
    .local v0, actionBar:Lcom/google/android/finsky/layout/CustomActionBar;
    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeSearch;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/android/finsky/layout/CustomActionBar;->updateSearchQuery(Ljava/lang/String;)V

    .line 207
    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget v5, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    invoke-interface {v4, v5}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    goto :goto_0

    .line 199
    .end local v0           #actionBar:Lcom/google/android/finsky/layout/CustomActionBar;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 200
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f090006

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const v3, 0x7f070235

    .line 202
    .local v3, titleResourceId:I
    :goto_2
    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    .end local v3           #titleResourceId:I
    :cond_2
    const v3, 0x7f070234

    goto :goto_2
.end method

.method public rebindAdapter()V
    .locals 10

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 114
    const-string v0, "List view null, ignoring."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->getUrl()Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, currentPageUrl:Ljava/lang/String;
    new-instance v0, Lcom/google/android/finsky/adapters/SearchAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    iget v6, p0, Lcom/google/android/finsky/activities/SearchFragment;->mNumCellsWideSearch:I

    iget v7, p0, Lcom/google/android/finsky/activities/SearchFragment;->mNumCellsTallSearch:I

    const v8, 0x7f040081

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/SearchAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/DfeSearch;IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    .line 128
    .end local v9           #currentPageUrl:Ljava/lang/String;
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapterSet:Z

    if-nez v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapterSet:Z

    .line 137
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f080112

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/SearchAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/SearchAdapter;->updateAdapterData(Lcom/google/android/finsky/api/model/BucketedList;)V

    goto :goto_1
.end method

.method protected rebindViews()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->logListView()V

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->clearTransientState()V

    .line 156
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    goto :goto_0
.end method

.method protected requestData()V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/google/android/finsky/api/model/DfeSearch;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeSearch;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->startLoadItems()V

    .line 218
    return-void
.end method
