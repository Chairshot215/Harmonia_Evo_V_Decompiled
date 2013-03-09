.class public Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "MyWishlistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# instance fields
.field private mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

.field private mAdapterSet:Z

.field private mBreadcrumb:Ljava/lang/String;

.field private mDfeList:Lcom/google/android/finsky/api/model/DfeList;

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mLibraryUrl:Ljava/lang/String;

.field private mMyWishlistListView:Landroid/widget/ListView;

.field private mNumCellsTall:I

.field private mNumCellsWide:I

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 46
    return-void
.end method

.method private getLibraryList()Lcom/google/android/finsky/api/model/DfeList;
    .locals 6

    .prologue
    .line 117
    iget-object v2, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v2

    const-string v3, "u-wl"

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v1

    .line 119
    .local v1, serverToken:[B
    iget-object v2, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v3, 0x0

    const-string v4, "u-wl"

    const/4 v5, 0x7

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/google/android/finsky/api/DfeApi;->getLibraryUrl(ILjava/lang/String;I[B)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, libraryUrl:Ljava/lang/String;
    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraryUrl:Ljava/lang/String;

    .line 122
    new-instance v2, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v3, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    return-object v2
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 97
    const v0, 0x7f040118

    return v0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f07026f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mBreadcrumb:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mNumCellsWide:I

    .line 74
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mNumCellsTall:I

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDataView:Landroid/view/ViewGroup;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 78
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 80
    iput-boolean v2, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapterSet:Z

    .line 82
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->switchToLoading()V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->requestData()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->rebindActionBar()V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->rebindAdapter()V

    .line 93
    return-void
.end method

.method public onAllLibrariesLoaded()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 177
    .local v6, position:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, document:Lcom/google/android/finsky/api/model/Document;
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #document:Lcom/google/android/finsky/api/model/Document;
    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    .line 180
    .restart local v1       #document:Lcom/google/android/finsky/api/model/Document;
    if-eqz v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v1           #document:Lcom/google/android/finsky/api/model/Document;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 52
    return-void
.end method

.method public onDataChanged()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDataChanged()V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->rebindAdapter()V

    .line 129
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroy()V

    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;->onDestroy()V

    .line 209
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;->onDestroyView()V

    .line 196
    :cond_0
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 2
    .parameter "library"

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->requestData()V

    .line 216
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onStart()V

    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 58
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 63
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onStop()V

    .line 64
    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 136
    return-void
.end method

.method public rebindAdapter()V
    .locals 10

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 147
    const-string v0, "List view null, ignoring."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    if-nez v0, :cond_2

    .line 153
    new-instance v0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v5, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    iget v6, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mNumCellsWide:I

    iget v7, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mNumCellsTall:I

    const v8, 0x7f040081

    iget-object v9, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraryUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    .line 158
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapterSet:Z

    if-nez v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapterSet:Z

    .line 168
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f080112

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistAdapter;->updateAdapterData(Lcom/google/android/finsky/api/model/BucketedList;)V

    goto :goto_1
.end method

.method protected rebindViews()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method protected requestData()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->getLibraryList()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 114
    return-void
.end method
