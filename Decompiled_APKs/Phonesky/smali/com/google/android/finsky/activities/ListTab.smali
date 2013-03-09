.class public final Lcom/google/android/finsky/activities/ListTab;
.super Ljava/lang/Object;
.source "ListTab.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/activities/ViewPagerTab;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

.field private final mCurrentBrowseUrl:Ljava/lang/String;

.field private mIsCurrentlySelected:Z

.field private mLastKnownBucket:Lcom/google/android/finsky/api/model/Bucket;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mList:Lcom/google/android/finsky/api/model/DfeList;

.field private mListBoundAlready:Z

.field private mListTabContainer:Landroid/view/ViewGroup;

.field private mListTabWrapper:Landroid/view/ViewGroup;

.field protected final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mNumCellsWide:I

.field private final mReferrerBrowseUrl:Ljava/lang/String;

.field private mRestoreBundle:Landroid/os/Bundle;

.field protected final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Landroid/view/LayoutInflater;Lcom/google/android/finsky/api/model/DfeList;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;I)V
    .locals 3
    .parameter "context"
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "dfeApi"
    .parameter "inflater"
    .parameter "list"
    .parameter "referrerBrowseUrl"
    .parameter "currentBrowseUrl"
    .parameter "toc"
    .parameter "backendId"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    .line 87
    iput-object p5, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 89
    iput-object p6, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    .line 90
    iput-object p7, p0, Lcom/google/android/finsky/activities/ListTab;->mReferrerBrowseUrl:Ljava/lang/String;

    .line 91
    iput-object p8, p0, Lcom/google/android/finsky/activities/ListTab;->mCurrentBrowseUrl:Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1, p10}, Lcom/google/android/finsky/activities/ListTab;->getColumnCount(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/ListTab;->mNumCellsWide:I

    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/finsky/activities/ListTab;->mNumCellsWide:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->setWindowDistance(I)V

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 99
    iput-object p9, p0, Lcom/google/android/finsky/activities/ListTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 100
    iput-object p2, p0, Lcom/google/android/finsky/activities/ListTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 102
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/finsky/activities/ListTab;->createBinder(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ListTab;)Lcom/google/android/finsky/api/model/DfeList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ListTab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V

    return-void
.end method

.method private bindList(Landroid/view/View;Landroid/widget/ListView;)V
    .locals 7
    .parameter "loadingIndicator"
    .parameter "list"

    .prologue
    const/4 v3, 0x1

    .line 268
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    if-nez v0, :cond_1

    .line 269
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/BucketedListBinder;->setData(Lcom/google/android/finsky/api/model/BucketedList;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/google/android/finsky/activities/ListTab;->mNumCellsWide:I

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mLastKnownBucket:Lcom/google/android/finsky/api/model/Bucket;

    iget-object v5, p0, Lcom/google/android/finsky/activities/ListTab;->mCurrentBrowseUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/activities/ListTab;->mRestoreBundle:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/fragments/BucketedListBinder;->bind(Landroid/view/ViewGroup;IILcom/google/android/finsky/api/model/Bucket;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mRestoreBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mRestoreBundle:Landroid/os/Bundle;

    const-string v1, "ListTab.ListParcelKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mRestoreBundle:Landroid/os/Bundle;

    .line 278
    :cond_0
    iput-boolean v3, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    .line 280
    :cond_1
    return-void
.end method

.method private createBinder(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;)V
    .locals 3
    .parameter "context"
    .parameter "bitmapLoader"
    .parameter "dfeApi"

    .prologue
    .line 106
    new-instance v0, Lcom/google/android/finsky/fragments/BucketedListBinder;

    const v1, 0x7f04002a

    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {v0, v1, v2, p3}, Lcom/google/android/finsky/fragments/BucketedListBinder;-><init>(ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/DfeApi;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/finsky/fragments/BucketedListBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 108
    return-void
.end method

.method private getColumnCount(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "backendId"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    .local v0, resources:Landroid/content/res/Resources;
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const v2, 0x7f0b0012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/2addr v1, v2

    .line 118
    :goto_0
    return v1

    :cond_0
    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0
.end method

.method private getListTabContainerLayoutRes()I
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->hasEditorialSeriesContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const v0, 0x7f040092

    .line 188
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f040020

    goto :goto_0
.end method

.method private inflateLayoutForTemplateType()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->getListTabContainerLayoutRes()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 265
    return-void
.end method

.method private logViewImpressionForList()V
    .locals 5

    .prologue
    .line 297
    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, cookie:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mReferrerBrowseUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mCurrentBrowseUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mCurrentBrowseUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeList;->getInitialUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v0           #cookie:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private syncViewToState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 206
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    const v5, 0x7f080080

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 211
    .local v3, loadingIndicator:Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    const v5, 0x7f0801a3

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, errorIndicator:Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeList;->inErrorState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 216
    iget-boolean v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    if-nez v4, :cond_0

    .line 221
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 222
    const v4, 0x7f080044

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 223
    .local v1, errorMsg:Landroid/widget/TextView;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/DfeList;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    const v4, 0x7f080126

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/google/android/finsky/activities/ListTab$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/ListTab$1;-><init>(Lcom/google/android/finsky/activities/ListTab;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 237
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 239
    .end local v1           #errorMsg:Landroid/widget/TextView;
    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 240
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mLastKnownBucket:Lcom/google/android/finsky/api/model/Bucket;

    if-nez v4, :cond_3

    .line 241
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/api/model/Bucket;

    iput-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mLastKnownBucket:Lcom/google/android/finsky/api/model/Bucket;

    .line 243
    :cond_3
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    if-nez v4, :cond_4

    .line 244
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->inflateLayoutForTemplateType()V

    .line 246
    :cond_4
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    const v5, 0x7f080065

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 247
    .local v2, list:Landroid/widget/ListView;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 248
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 249
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 250
    invoke-direct {p0, v3, v2}, Lcom/google/android/finsky/activities/ListTab;->bindList(Landroid/view/View;Landroid/widget/ListView;)V

    goto/16 :goto_0

    .line 252
    .end local v2           #list:Landroid/widget/ListView;
    :cond_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 253
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 255
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .locals 3
    .parameter "backendId"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    .line 126
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDataChanged()V
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mIsCurrentlySelected:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->logViewImpressionForList()V

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V

    .line 155
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/BucketedListBinder;->onDestroyView()V

    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->flushUnusedPages()V

    .line 137
    iput-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    .line 138
    iput-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    .line 140
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V

    .line 285
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/finsky/activities/ListTab;->mRestoreBundle:Landroid/os/Bundle;

    .line 200
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 170
    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    const v3, 0x7f080065

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 172
    .local v0, list:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 173
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v1, output:Landroid/os/Bundle;
    const-string v2, "ListTab.ListParcelKey"

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/fragments/BucketedListBinder;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 179
    .end local v0           #list:Landroid/widget/ListView;
    .end local v1           #output:Landroid/os/Bundle;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTabSelected(Z)V
    .locals 1
    .parameter "isSelected"

    .prologue
    .line 289
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mIsCurrentlySelected:Z

    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->logViewImpressionForList()V

    .line 293
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/ListTab;->mIsCurrentlySelected:Z

    .line 294
    return-void
.end method
