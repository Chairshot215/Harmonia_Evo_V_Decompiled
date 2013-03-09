.class public Lcom/google/android/finsky/activities/SeasonListViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "SeasonListViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mCurrentPageUrl:Ljava/lang/String;

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

.field private mReferrerCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mRestoreBundle:Landroid/os/Bundle;

.field private mSeasonListUrl:Ljava/lang/String;

.field private mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mSelectedEpisodeId:Ljava/lang/String;

.field private mSelectedSeasonId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method private detachListeners()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/layout/EpisodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "libraries"
    .parameter "view"
    .parameter "selectedSeasonId"
    .parameter "selectedEpisodeId"
    .parameter "title"
    .parameter "subtitle"
    .parameter "seasonsListUrl"
    .parameter "hasDetailsLoaded"
    .parameter "referrerUrl"
    .parameter "referrerCookie"
    .parameter "currentPageUrl"

    .prologue
    const/4 v2, 0x0

    .line 95
    const/4 v0, 0x4

    invoke-super {p0, p2, p5, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Ljava/lang/String;I)V

    .line 97
    if-nez p8, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-object p4, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSelectedEpisodeId:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSelectedSeasonId:Ljava/lang/String;

    .line 104
    iput-object p7, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonListUrl:Ljava/lang/String;

    .line 105
    iput-object p11, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->detachListeners()V

    .line 110
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v0, v1, p7, v2}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 114
    iput-object p9, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mReferrerUrl:Ljava/lang/String;

    .line 115
    iput-object p10, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mReferrerCookie:Ljava/lang/String;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 2
    .parameter "context"
    .parameter "api"
    .parameter "navManager"

    .prologue
    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this version of init is not supported by this binder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/fragments/PageFragment;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/library/Libraries;)V
    .locals 1
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "pageFragment"
    .parameter "bitmapLoader"
    .parameter "libraries"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 68
    iput-object p3, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    const v0, 0x7f0800af

    iput v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mHeaderLayoutId:I

    .line 71
    iput-object p4, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

    .line 72
    iput-object p5, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 73
    iput-object p6, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 74
    return-void
.end method

.method public onDataChanged()V
    .locals 18

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v16

    .line 122
    .local v16, listCookie:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mReferrerUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mReferrerCookie:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonListUrl:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonListUrl:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 127
    .local v8, seasons:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v15

    .line 128
    .local v15, library:Lcom/google/android/finsky/library/Library;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v2

    if-ge v14, v2, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2, v14}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/finsky/api/model/Document;

    .line 130
    .local v17, season:Lcom/google/android/finsky/api/model/Document;
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 120
    .end local v8           #seasons:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v14           #i:I
    .end local v15           #library:Lcom/google/android/finsky/library/Library;
    .end local v16           #listCookie:Ljava/lang/String;
    .end local v17           #season:Lcom/google/android/finsky/api/model/Document;
    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .line 133
    .restart local v8       #seasons:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .restart local v14       #i:I
    .restart local v15       #library:Lcom/google/android/finsky/library/Library;
    .restart local v16       #listCookie:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLayout:Landroid/view/View;

    check-cast v1, Lcom/google/android/finsky/layout/EpisodeList;

    .line 136
    .local v1, episodeList:Lcom/google/android/finsky/layout/EpisodeList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mRestoreBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/EpisodeList;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mRestoreBundle:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSelectedSeasonId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSelectedEpisodeId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mReferrerUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mReferrerCookie:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual/range {v1 .. v13}, Lcom/google/android/finsky/layout/EpisodeList;->setSeasonList(Lcom/google/android/finsky/fragments/PageFragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->detachListeners()V

    .line 151
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mRestoreBundle:Landroid/os/Bundle;

    .line 155
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLayout:Landroid/view/View;

    check-cast v0, Lcom/google/android/finsky/layout/EpisodeList;

    .line 159
    .local v0, episodeList:Lcom/google/android/finsky/layout/EpisodeList;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/EpisodeList;->saveInstanceState(Landroid/os/Bundle;)V

    .line 162
    :cond_0
    return-void
.end method
