.class public Lcom/google/android/finsky/activities/TabbedBrowseFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "TabbedBrowseFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private mBackendId:I

.field private mBreadcrumb:Ljava/lang/String;

.field mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

.field mContentListData:Lcom/google/android/finsky/api/model/DfeList;

.field private mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

.field private mReferringBrowseUrl:Ljava/lang/String;

.field private mRestoreSelectedPanel:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

.field private mTabbedAdapterBundle:Landroid/os/Bundle;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    return-void
.end method

.method private clearState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 362
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 363
    iput-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 368
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 369
    iput-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 374
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 375
    iput-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 380
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f08017e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, tabStrip:Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    .end local v0           #tabStrip:Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_4

    .line 384
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 385
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 386
    iput-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 388
    :cond_4
    return-void
.end method

.method private getBreadcrumbText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 210
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeBrowse;->getBreadcrumbList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 212
    .local v1, breadcrumbListSize:I
    if-lez v1, :cond_0

    .line 214
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeBrowse;->getBreadcrumbList()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, breadcrumb:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 216
    .end local v0           #breadcrumb:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    iget v4, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v2

    .line 217
    .local v2, data:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-nez v2, :cond_1

    .line 219
    const-string v0, ""

    .restart local v0       #breadcrumb:Ljava/lang/String;
    goto :goto_0

    .line 220
    .end local v0           #breadcrumb:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canGoUp()Z

    move-result v3

    if-nez v3, :cond_2

    .line 223
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0701d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #breadcrumb:Ljava/lang/String;
    goto :goto_0

    .line 226
    .end local v0           #breadcrumb:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #breadcrumb:Ljava/lang/String;
    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;
    .locals 2
    .parameter "url"
    .parameter "title"
    .parameter "backendId"
    .parameter "referrerBrowseUrl"
    .parameter "dfeToc"

    .prologue
    .line 85
    new-instance v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;-><init>()V

    .line 87
    .local v0, fragment:Lcom/google/android/finsky/activities/TabbedBrowseFragment;
    if-ltz p2, :cond_0

    .line 88
    iput p2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    .line 91
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iput-object p1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    .line 95
    :cond_1
    invoke-virtual {v0, p4, p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 96
    const-string v1, "TabbedBrowseFragment.ReferrerUrl"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-object v0
.end method

.method private recordState()V
    .locals 3

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BrowseData"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 404
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.Breadcrumb"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BackendId"

    iget v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.ListData"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.PromoData"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.CurrentTab"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/TabbedAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 423
    :cond_3
    return-void
.end method

.method private restoreFromBundle(Z)V
    .locals 2
    .parameter "restoredFromDisk"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BrowseData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/DfeBrowse;

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.ListData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.ListData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapterBundle:Landroid/os/Bundle;

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.PromoData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.PromoData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.Breadcrumb"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.Breadcrumb"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BackendId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BackendId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.CurrentTab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.CurrentTab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    .line 176
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->onDataChanged()V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_5

    .line 180
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->switchToLoading()V

    .line 182
    :cond_5
    return-void

    .line 163
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 196
    const v0, 0x7f04010a

    return v0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TabbedBrowseFragment.ReferrerUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mReferringBrowseUrl:Ljava/lang/String;

    .line 113
    if-eqz p1, :cond_0

    .line 114
    iput-object p1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BrowseData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->restoreFromBundle(Z)V

    .line 130
    :goto_1
    return-void

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->switchToLoading()V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->requestData()V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindActionBar()V

    goto :goto_1

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindViews()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->setRetainInstance(Z)V

    .line 104
    return-void
.end method

.method public onDataChanged()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeBrowse;->buildContentList(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 244
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeBrowse;->buildPromoList(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    iget v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->getBackendId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getBreadcrumbText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    .line 274
    :cond_3
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDataChanged()V

    .line 277
    :cond_4
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->recordState()V

    .line 428
    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->clearState()V

    .line 429
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    .line 430
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "scrollState"

    .prologue
    .line 433
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 436
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/TabbedAdapter;->onPageSelected(I)V

    .line 441
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->recordState()V

    .line 393
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 394
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 395
    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 345
    return-void
.end method

.method public rebindViews()V
    .locals 21

    .prologue
    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->switchToData()V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindActionBar()V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    if-eqz v2, :cond_0

    .line 338
    :goto_0
    return-void

    .line 288
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f08017d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 289
    new-instance v2, Lcom/google/android/finsky/activities/TabbedAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mReferringBrowseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapterBundle:Landroid/os/Bundle;

    invoke-direct/range {v2 .. v15}, Lcom/google/android/finsky/activities/TabbedAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeBrowse;Lcom/google/android/finsky/api/model/DfeList;Lcom/google/android/finsky/api/model/DfeList;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 296
    const/16 v18, 0x1

    .line 297
    .local v18, shouldShowHeader:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/api/model/Bucket;

    .line 299
    .local v16, bucket:Lcom/google/android/finsky/api/model/Bucket;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/api/model/Bucket;->hasEditorialSeriesContainer()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/api/model/Bucket;->hasContainerWithBannerTemplate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    :cond_1
    const/16 v18, 0x0

    .line 303
    .end local v16           #bucket:Lcom/google/android/finsky/api/model/Bucket;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v3, 0x7f08017e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/support/v4/view/PagerTabStrip;

    .line 305
    .local v20, tabStrip:Landroid/support/v4/view/PagerTabStrip;
    if-eqz v18, :cond_4

    .line 306
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTabStrip;->setVisibility(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v19

    .line 309
    .local v19, tabColor:I
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTabStrip;->setTextColor(I)V

    .line 310
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 311
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTabStrip;->setDrawFullUnderline(Z)V

    .line 314
    const/high16 v2, 0x42a0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTabStrip;->setTextSpacing(I)V

    .line 316
    const v2, 0x3f333333

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTabStrip;->setNonPrimaryAlpha(F)V

    .line 320
    .end local v19           #tabColor:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasCategories()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v17, 0x1

    .line 323
    .local v17, currentItem:I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    move/from16 v17, v0

    .line 326
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    .line 328
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->onPageScrolled(IFI)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    move/from16 v0, v17

    if-ne v2, v0, :cond_6

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/activities/TabbedAdapter;->onPageSelected(I)V

    goto/16 :goto_0

    .line 318
    .end local v17           #currentItem:I
    :cond_4
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTabStrip;->setVisibility(I)V

    goto :goto_1

    .line 321
    :cond_5
    const/16 v17, 0x0

    goto :goto_2

    .line 336
    .restart local v17       #currentItem:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindViews()V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->refresh()V

    goto :goto_0
.end method

.method protected requestData()V
    .locals 3

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->clearState()V

    .line 354
    new-instance v0, Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeBrowse;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 355
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 356
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 357
    return-void
.end method
