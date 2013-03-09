.class public Lcom/google/android/finsky/activities/TabbedAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TabbedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/TabbedAdapter$TabType;
    }
.end annotation


# instance fields
.field private final mBackendId:I

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContentListData:Lcom/google/android/finsky/api/model/DfeList;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentPageUrl:Ljava/lang/String;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

.field private final mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mNonListTabCount:I

.field private final mPromoData:Lcom/google/android/finsky/api/model/DfeList;

.field private final mReferrerUrl:Ljava/lang/String;

.field mTabDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/TabbedAdapter$TabType;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeBrowse;Lcom/google/android/finsky/api/model/DfeList;Lcom/google/android/finsky/api/model/DfeList;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "inflater"
    .parameter "navManager"
    .parameter "toc"
    .parameter "dfeApi"
    .parameter "loader"
    .parameter "browse"
    .parameter "contentListData"
    .parameter "promoData"
    .parameter "backendId"
    .parameter "currentPageUrl"
    .parameter "referrerUrl"
    .parameter "tabRestoreState"

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 57
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    .line 109
    iput-object p1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 111
    iput-object p3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 112
    iput-object p4, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 113
    iput-object p5, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 114
    iput-object p6, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 115
    iput-object p7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 116
    iput-object p8, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 117
    iput-object p9, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mPromoData:Lcom/google/android/finsky/api/model/DfeList;

    .line 118
    iput p10, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    .line 119
    iput-object p11, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mCurrentPageUrl:Ljava/lang/String;

    .line 120
    iput-object p12, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mReferrerUrl:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mPromoData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-direct {p0, p13, v0}, Lcom/google/android/finsky/activities/TabbedAdapter;->generateTabList(Landroid/os/Bundle;Lcom/google/android/finsky/api/model/DfeList;)V

    .line 123
    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedAdapter;->getTitles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabTitles:Ljava/util/List;

    .line 124
    return-void
.end method

.method private generateTabList(Landroid/os/Bundle;Lcom/google/android/finsky/api/model/DfeList;)V
    .locals 10
    .parameter "restoreBundle"
    .parameter "promoList"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 325
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/TabbedAdapter;->restoreScrollPositions(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v5

    .line 326
    .local v5, scrollPositions:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/TabbedAdapter;->restoreDfeLists(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v4

    .line 327
    .local v4, restoredDfeLists:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/DfeList;>;"
    iget-object v7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 328
    iget-object v7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasCategories()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 329
    iget-object v7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    new-instance v8, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    invoke-direct {v8, v6}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_0
    iget-object v7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasPromotionalItems()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 332
    new-instance v0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    invoke-direct {v0, v3}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;-><init>(I)V

    .line 334
    .local v0, gridTab:Lcom/google/android/finsky/activities/TabbedAdapter$TabType;
    iput-object p2, v0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 335
    iget-object v7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v0           #gridTab:Lcom/google/android/finsky/activities/TabbedAdapter$TabType;
    :cond_1
    iget-object v7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mNonListTabCount:I

    .line 339
    iget-object v7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v7, :cond_2

    .line 340
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 341
    iget-object v7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    new-instance v8, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v1           #i:I
    :cond_2
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_5

    move v2, v3

    .line 348
    .local v2, restoreDfeLists:Z
    :goto_1
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_6

    .line 350
    .local v3, restoreScrollPositions:Z
    :goto_2
    iget v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mNonListTabCount:I

    .restart local v1       #i:I
    :goto_3
    iget-object v6, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 351
    if-eqz v2, :cond_3

    .line 352
    iget-object v6, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/model/DfeList;

    iput-object v7, v6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 354
    :cond_3
    if-eqz v3, :cond_4

    .line 355
    iget-object v6, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    #setter for: Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v6, v7}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->access$002(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 350
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1           #i:I
    .end local v2           #restoreDfeLists:Z
    .end local v3           #restoreScrollPositions:Z
    :cond_5
    move v2, v6

    .line 346
    goto :goto_1

    .restart local v2       #restoreDfeLists:Z
    :cond_6
    move v3, v6

    .line 348
    goto :goto_2

    .line 358
    .restart local v1       #i:I
    .restart local v3       #restoreScrollPositions:Z
    :cond_7
    return-void
.end method

.method private getDfeListForListTab(I)Lcom/google/android/finsky/api/model/DfeList;
    .locals 6
    .parameter "listPosition"

    .prologue
    const/4 v5, 0x1

    .line 312
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 313
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 317
    :goto_0
    return-object v2

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    .line 316
    .local v0, bucket:Lcom/google/android/finsky/api/model/Bucket;
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->getBrowseUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "browse"

    const-string v4, "list"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, listUrl:Ljava/lang/String;
    new-instance v2, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v2, v3, v1, v5}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getDfeLists()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/finsky/api/model/DfeList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 182
    :cond_1
    return-object v0

    .line 178
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 179
    .local v0, dfeLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/api/model/DfeList;>;"
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    .line 180
    .local v2, tabData:Lcom/google/android/finsky/activities/TabbedAdapter$TabType;
    iget-object v3, v2, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getTabInstanceStates()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 167
    :cond_1
    return-object v0

    .line 159
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, bundles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    .line 161
    .local v2, tabData:Lcom/google/android/finsky/activities/TabbedAdapter$TabType;
    iget-object v3, v2, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    if-eqz v3, :cond_3

    .line 162
    iget-object v3, v2, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    invoke-interface {v3}, Lcom/google/android/finsky/activities/ViewPagerTab;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_3
    #getter for: Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getTitles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 242
    .local v1, titles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasCategories()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 244
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0701b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mPromoData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mPromoData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v2, :cond_3

    .line 255
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 256
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0701b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_3
    return-object v1
.end method

.method private restoreDfeLists(Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/DfeList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    const/4 v2, 0x0

    .line 370
    .local v2, lists:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/DfeList;>;"
    if-eqz p1, :cond_1

    const-string v3, "TabbedAdapter.TabDfeListParcels"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    const-string v3, "TabbedAdapter.TabDfeListParcels"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 372
    if-eqz v2, :cond_1

    .line 373
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/DfeList;

    .line 374
    .local v1, list:Lcom/google/android/finsky/api/model/DfeList;
    if-eqz v1, :cond_0

    .line 378
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/api/model/DfeList;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    goto :goto_0

    .line 382
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Lcom/google/android/finsky/api/model/DfeList;
    :cond_1
    return-object v2
.end method

.method private restoreScrollPositions(Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, scrollPositions:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_0

    const-string v1, "TabbedAdapter.TabParcels"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    const-string v1, "TabbedAdapter.TabParcels"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 365
    :cond_0
    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .parameter "viewPager"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 128
    move-object v0, p3

    check-cast v0, Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 130
    .local v0, tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    invoke-interface {v0, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 131
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    .line 133
    .local v1, tabType:Lcom/google/android/finsky/activities/TabbedAdapter$TabType;
    iget-object v2, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->flushUnusedPages()V

    .line 138
    :cond_0
    iget-object v2, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    invoke-interface {v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    #setter for: Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v1, v2}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->access$002(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 140
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 142
    invoke-interface {v0}, Lcom/google/android/finsky/activities/ViewPagerTab;->onDestroy()V

    .line 143
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "viewPager"

    .prologue
    .line 309
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasCategories()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 188
    .local v0, count:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasPromotionalItems()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    add-int/2addr v0, v1

    .line 189
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    .line 190
    return v0

    .end local v0           #count:I
    :cond_1
    move v0, v2

    .line 187
    goto :goto_0

    .restart local v0       #count:I
    :cond_2
    move v1, v2

    .line 188
    goto :goto_1
.end method

.method public bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/TabbedAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 267
    const-string v0, ""

    .line 269
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getPageWidth(I)F
    .locals 2
    .parameter "position"

    .prologue
    .line 287
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    iget v0, v0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->type:I

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    .line 292
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 12
    .parameter "viewPager"
    .parameter "position"

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    .line 207
    .local v11, tabType:Lcom/google/android/finsky/activities/TabbedAdapter$TabType;
    iget v1, v11, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->type:I

    packed-switch v1, :pswitch_data_0

    .line 232
    :goto_0
    iput-object v0, v11, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 233
    iget v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    invoke-interface {v0, v1}, Lcom/google/android/finsky/activities/ViewPagerTab;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 234
    return-object v0

    .line 209
    :pswitch_0
    new-instance v0, Lcom/google/android/finsky/activities/CategoryTab;

    .end local v0           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v5, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v6, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mCurrentPageUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/activities/CategoryTab;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeBrowse;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 211
    .restart local v0       #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    #getter for: Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v11}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/activities/ViewPagerTab;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v1, v11, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeBrowse;->buildPromoList(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 217
    :cond_0
    new-instance v0, Lcom/google/android/finsky/activities/GridFeaturedTab;

    .end local v0           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, v11, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v6, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mReferrerUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mCurrentPageUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/activities/GridFeaturedTab;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeList;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 220
    .restart local v0       #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    #getter for: Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v11}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/activities/ViewPagerTab;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v1, v11, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v1, :cond_1

    .line 224
    iget v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mNonListTabCount:I

    sub-int v1, p2, v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/TabbedAdapter;->getDfeListForListTab(I)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 226
    :cond_1
    new-instance v0, Lcom/google/android/finsky/activities/ListTab;

    .end local v0           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v5, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v6, v11, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mReferrerUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mCurrentPageUrl:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget v10, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    invoke-direct/range {v0 .. v10}, Lcom/google/android/finsky/activities/ListTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Landroid/view/LayoutInflater;Lcom/google/android/finsky/api/model/DfeList;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;I)V

    .line 229
    .restart local v0       #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    #getter for: Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v11}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/activities/ViewPagerTab;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 282
    check-cast p2, Lcom/google/android/finsky/activities/ViewPagerTab;

    .end local p2
    iget v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    invoke-interface {p2, v0}, Lcom/google/android/finsky/activities/ViewPagerTab;->getView(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 273
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    iget-object v1, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    iget-object v2, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v1}, Lcom/google/android/finsky/activities/ViewPagerTab;->setTabSelected(Z)V

    .line 273
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 278
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 147
    const-string v0, "TabbedAdapter.TabParcels"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedAdapter;->getTabInstanceStates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 149
    const-string v0, "TabbedAdapter.TabDfeListParcels"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedAdapter;->getDfeLists()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 150
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 300
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 306
    return-void
.end method
