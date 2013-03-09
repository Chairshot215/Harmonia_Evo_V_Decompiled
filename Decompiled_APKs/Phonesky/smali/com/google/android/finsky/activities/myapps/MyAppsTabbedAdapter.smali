.class public Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MyAppsTabbedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private final mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

.field private final mHasSubscriptions:Z

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected final mTabDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;",
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
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/os/Bundle;Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V
    .locals 1
    .parameter "context"
    .parameter "navManager"
    .parameter "dfeApi"
    .parameter "dfeToc"
    .parameter "loader"
    .parameter "enableSubscriptions"
    .parameter "tabRestoreState"
    .parameter "fragment"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 78
    iput-object p5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 79
    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 80
    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 81
    iput-boolean p6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mHasSubscriptions:Z

    .line 82
    iput-object p8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    .line 84
    invoke-direct {p0, p7}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->generateTabList(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTitles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabTitles:Ljava/util/List;

    .line 86
    return-void
.end method

.method private generateTabList(Landroid/os/Bundle;)V
    .locals 7
    .parameter "restoreBundle"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 235
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->restoreTabBundles(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .line 236
    .local v2, tabBundles:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 238
    iget-boolean v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mHasSubscriptions:Z

    if-eqz v4, :cond_0

    .line 239
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    new-instance v5, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    invoke-direct {v5, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    new-instance v5, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    invoke-direct {v5, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    new-instance v5, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 248
    .local v1, restoreTabBundles:Z
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 249
    if-eqz v1, :cond_1

    .line 250
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    #setter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v3, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$002(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 248
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #restoreTabBundles:Z
    :cond_2
    move v1, v3

    .line 246
    goto :goto_0

    .line 253
    .restart local v0       #i:I
    .restart local v1       #restoreTabBundles:Z
    :cond_3
    return-void
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
    .line 116
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 127
    :cond_1
    return-object v0

    .line 119
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, bundles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    .line 121
    .local v2, tabData:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;
    iget-object v3, v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    if-eqz v3, :cond_3

    .line 122
    iget-object v3, v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_3
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getTitles()Ljava/util/List;
    .locals 3
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
    .line 188
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    .local v0, titles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mHasSubscriptions:Z

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f07025b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f070259

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f07025a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-object v0
.end method

.method private restoreTabBundles(Landroid/os/Bundle;)Ljava/util/List;
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
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, tabBundles:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_0

    const-string v1, "MyAppsTabbedAdapter.TabParcels"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const-string v1, "MyAppsTabbedAdapter.TabParcels"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 260
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
    .line 90
    move-object v0, p3

    check-cast v0, Lcom/google/android/finsky/activities/ViewPagerTab;

    .line 92
    .local v0, tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 93
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    .line 96
    .local v1, tabType:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;
    iget-object v2, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    #setter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v1, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$002(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 98
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    .line 100
    invoke-interface {v0}, Lcom/google/android/finsky/activities/ViewPagerTab;->onDestroy()V

    .line 101
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "viewPager"

    .prologue
    .line 229
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTabType(I)I
    .locals 1
    .parameter "tabIndex"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->type:I

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11
    .parameter "viewPager"
    .parameter "position"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    .line 157
    .local v10, tabType:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;
    iget-object v0, v10, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    .line 158
    .local v0, tab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<*>;"
    if-nez v0, :cond_0

    .line 159
    iget v1, v10, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->type:I

    packed-switch v1, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    iput-object v0, v10, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    .line 177
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 180
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->loadData()V

    .line 181
    return-object v0

    .line 161
    :pswitch_0
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    .end local v0           #tab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<*>;"
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v10}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;)V

    .line 163
    .restart local v0       #tab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<*>;"
    goto :goto_0

    .line 165
    :pswitch_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v8

    .line 167
    .local v8, library:Lcom/google/android/finsky/library/AccountLibrary;
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    .end local v0           #tab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<*>;"
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v10}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/AccountLibrary;Landroid/os/Bundle;)V

    .line 170
    .restart local v0       #tab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<*>;"
    goto :goto_0

    .line 172
    .end local v8           #library:Lcom/google/android/finsky/library/AccountLibrary;
    :pswitch_2
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;

    .end local v0           #tab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<*>;"
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v10}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;)V

    .restart local v0       #tab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<*>;"
    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 213
    check-cast p2, Lcom/google/android/finsky/activities/ViewPagerTab;

    .end local p2
    const/4 v0, 0x3

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
    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget-object v1, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget-object v2, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->setTabSelected(Z)V

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 209
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 105
    const-string v0, "MyAppsTabbedAdapter.TabParcels"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabInstanceStates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 106
    return-void
.end method

.method public refreshAllTabs()V
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget-object v1, v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    .line 138
    .local v1, tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    instance-of v2, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    if-eqz v2, :cond_0

    .line 139
    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    .end local v1           #tab:Lcom/google/android/finsky/activities/ViewPagerTab;
    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->requestData()V

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 220
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 226
    return-void
.end method
