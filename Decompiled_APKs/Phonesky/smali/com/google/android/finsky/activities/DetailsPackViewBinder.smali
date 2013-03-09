.class public Lcom/google/android/finsky/activities/DetailsPackViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsPackViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mCurrentPageUrl:Ljava/lang/String;

.field private mHaveLoggedBefore:Z

.field private mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mMaxItemsCount:I

.field private mMaxItemsPerRow:I

.field private mMoreUrl:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/DfeList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/DfeToc;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private attachToInternalRequest()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot attach when no request is held internally"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 274
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->prepareAndPopulateContent()V

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isMoreAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 277
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->inErrorState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private detachListeners()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 145
    :cond_0
    return-void
.end method

.method private logListView()V
    .locals 5

    .prologue
    .line 319
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mHaveLoggedBefore:Z

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, cookie:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mReferrerUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v4, v0}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeList;->getInitialUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mHaveLoggedBefore:Z

    .line 329
    .end local v0           #cookie:Ljava/lang/String;
    :cond_0
    return-void

    .line 322
    .restart local v0       #cookie:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private populateArtistCell(Landroid/view/ViewGroup;Lcom/google/android/finsky/api/model/Document;Z)V
    .locals 7
    .parameter "rowView"
    .parameter "data"
    .parameter "isLastRow"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .local v6, artistEntry:Landroid/view/View;
    move-object v0, v6

    .line 225
    check-cast v0, Lcom/google/android/finsky/layout/DocumentCell;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v2, p2, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    move-object v2, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/layout/DocumentCell;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    return-void
.end method

.method private populateMagazineCell(Landroid/view/ViewGroup;Lcom/google/android/finsky/api/model/Document;Z)V
    .locals 7
    .parameter "rowView"
    .parameter "data"
    .parameter "isLastRow"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040097

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 234
    .local v6, magazineEntry:Landroid/view/View;
    const v1, 0x7f08016a

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/MagazineBucketEntry;

    .line 236
    .local v0, magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v2, p2, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V

    .line 238
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 239
    return-void
.end method

.method private prepareAndPopulateContent()V
    .locals 3

    .prologue
    .line 305
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 306
    .local v0, packHeader:Landroid/view/View;
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;-><init>(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->populateContent()V

    .line 316
    return-void
.end method

.method private setupItemListRequest()V
    .locals 4

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->detachListeners()V

    .line 294
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 296
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->attachToInternalRequest()V

    .line 297
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 299
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->clearTransientState()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f08014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->setupItemListRequest()V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "doc"
    .parameter "header"
    .parameter "subheader"
    .parameter "url"
    .parameter "moreUrl"
    .parameter "maxItemsPerRow"
    .parameter "maxItemsCount"
    .parameter "currentPageUrl"
    .parameter "referrerUrl"

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    .local v0, subheaderView:Landroid/widget/TextView;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :goto_0
    iput-object p5, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUrl:Ljava/lang/String;

    .line 120
    iput-object p6, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMoreUrl:Ljava/lang/String;

    .line 121
    iput-object p9, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    .line 122
    iput-object p10, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mReferrerUrl:Ljava/lang/String;

    .line 123
    iput p7, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    .line 124
    iput p8, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsCount:I

    .line 126
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f0800d6

    new-instance v4, Lcom/google/android/finsky/activities/DetailsPackViewBinder$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;ILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->setupView()V

    .line 138
    return-void

    .line 115
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected handleEmptyData()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 0
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "bitmapLoader"
    .parameter "toc"

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 92
    iput-object p4, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 93
    iput-object p5, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 94
    return-void
.end method

.method public onDataChanged()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 339
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    .line 346
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->logListView()V

    .line 343
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->prepareAndPopulateContent()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mHaveLoggedBefore:Z

    .line 352
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->detachListeners()V

    .line 353
    return-void
.end method

.method protected populateContent()V
    .locals 20

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v5, 0x7f0800d6

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 152
    .local v15, linearLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsCount:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 159
    .local v13, itemCount:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    div-int v16, v3, v5

    .line 160
    .local v16, rowCount:I
    const/4 v14, 0x0

    .line 162
    .local v14, itemIndex:I
    if-nez v16, :cond_1

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    .line 220
    :cond_0
    return-void

    .line 167
    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->setHeaderNavigable(Z)V

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v5, 0x7f0800db

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v5, 0x7f0800d5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 172
    const/16 v17, 0x0

    .local v17, rowNum:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 173
    add-int/lit8 v3, v16, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_5

    const/4 v6, 0x1

    .line 174
    .local v6, isLastRow:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040021

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v15, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/google/android/finsky/layout/BucketRow;

    .line 176
    .local v18, rowView:Lcom/google/android/finsky/layout/BucketRow;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/BucketRow;->setCompact(Z)V

    .line 178
    const/4 v9, 0x0

    .local v9, colNum:I
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    if-ge v9, v3, :cond_c

    .line 179
    if-ge v14, v13, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v3, v14}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    move-object v4, v3

    .line 181
    .local v4, data:Lcom/google/android/finsky/api/model/Document;
    :goto_3
    const/4 v11, 0x0

    .line 182
    .local v11, isCellHandled:Z
    if-eqz v4, :cond_3

    .line 183
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v10

    .line 184
    .local v10, documentType:I
    const/16 v3, 0x10

    if-eq v10, v3, :cond_2

    const/16 v3, 0x11

    if-ne v10, v3, :cond_7

    :cond_2
    const/4 v12, 0x1

    .line 186
    .local v12, isMagazine:Z
    :goto_4
    if-eqz v12, :cond_8

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4, v6}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->populateMagazineCell(Landroid/view/ViewGroup;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 188
    const/4 v11, 0x1

    .line 194
    .end local v10           #documentType:I
    .end local v12           #isMagazine:Z
    :cond_3
    :goto_5
    if-nez v11, :cond_4

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400c4

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v5, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 198
    .local v8, cellView:Landroid/view/View;
    const v3, 0x7f08001e

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/OverviewBucketEntry;

    .line 200
    .local v2, genericEntry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    if-eqz v4, :cond_a

    .line 201
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v4, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V

    .line 203
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    add-int/lit8 v3, v3, -0x1

    if-ge v9, v3, :cond_9

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setRightSeparatorVisibility(Z)V

    .line 214
    :goto_7
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/google/android/finsky/layout/BucketRow;->addView(Landroid/view/View;)V

    .line 216
    .end local v2           #genericEntry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    .end local v8           #cellView:Landroid/view/View;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 178
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 173
    .end local v4           #data:Lcom/google/android/finsky/api/model/Document;
    .end local v6           #isLastRow:Z
    .end local v9           #colNum:I
    .end local v11           #isCellHandled:Z
    .end local v18           #rowView:Lcom/google/android/finsky/layout/BucketRow;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 179
    .restart local v6       #isLastRow:Z
    .restart local v9       #colNum:I
    .restart local v18       #rowView:Lcom/google/android/finsky/layout/BucketRow;
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 184
    .restart local v4       #data:Lcom/google/android/finsky/api/model/Document;
    .restart local v10       #documentType:I
    .restart local v11       #isCellHandled:Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 189
    .restart local v12       #isMagazine:Z
    :cond_8
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4, v6}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->populateArtistCell(Landroid/view/ViewGroup;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 191
    const/4 v11, 0x1

    goto :goto_5

    .line 203
    .end local v10           #documentType:I
    .end local v12           #isMagazine:Z
    .restart local v2       #genericEntry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    .restart local v8       #cellView:Landroid/view/View;
    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    .line 207
    :cond_a
    if-ne v14, v13, :cond_b

    .line 208
    invoke-virtual {v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setNoDocument()V

    goto :goto_7

    .line 210
    :cond_b
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    goto :goto_7

    .line 218
    .end local v2           #genericEntry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    .end local v4           #data:Lcom/google/android/finsky/api/model/Document;
    .end local v8           #cellView:Landroid/view/View;
    .end local v11           #isCellHandled:Z
    :cond_c
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0
.end method
