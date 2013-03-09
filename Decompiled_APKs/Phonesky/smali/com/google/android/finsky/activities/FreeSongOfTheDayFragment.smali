.class public Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "FreeSongOfTheDayFragment.java"


# instance fields
.field private final mAlbumViewBinder:Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;

.field private mRestrictHeroHeight:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    .line 22
    new-instance v0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mAlbumViewBinder:Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;

    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;
    .locals 2
    .parameter "document"
    .parameter "url"
    .parameter "listCookie"
    .parameter "referrer"

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;-><init>()V

    .line 36
    .local v0, fragment:Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 38
    const-string v1, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "finsk.DetailsDatabasedFragment.referrer"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-object v0
.end method

.method private setTiledBackground(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "pinstripeResourceId"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 107
    .local v0, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f04007e

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mAlbumViewBinder:Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->onDestroyView()V

    .line 47
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDestroyView()V

    .line 48
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 7

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mAlbumViewBinder:Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 56
    :cond_0
    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->rebindActionBar()V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    .line 74
    .local v3, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDealOfTheDayInfo()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    move-result-object v1

    .line 76
    .local v1, dealOfTheDayInfo:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 78
    .local v4, fragmentView:Landroid/view/View;
    const v8, 0x7f08010e

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 80
    .local v6, headerHero:Lcom/google/android/finsky/layout/HeroGraphicView;
    invoke-virtual {v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->hideAccessibilityOverlay()V

    .line 81
    iget-object v8, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {v3, v9, v9, v9}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPageHeaderBannerUrlFromDocument(Lcom/google/android/finsky/api/model/Document;ZII)Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mRestrictHeroHeight:Z

    invoke-virtual {v6, v8, v3, v9, v10}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Z)V

    .line 84
    const v8, 0x7f0200d2

    invoke-direct {p0, v6, v8}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->setTiledBackground(Landroid/view/View;I)V

    .line 86
    const v8, 0x7f08010f

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;

    .line 88
    .local v5, header:Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;
    invoke-virtual {v5, v1}, Lcom/google/android/finsky/layout/FreeSongOfTheDayHeader;->showDealOfTheDayInfo(Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;)V

    .line 90
    const v8, 0x7f080146

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    .line 92
    .local v7, summary:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;
    iget-object v8, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->getReferrer()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v8, v9, v10}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->showSummary(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const v8, 0x7f08012f

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    .local v2, description:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v8, 0x7f0200d1

    invoke-direct {p0, v2, v8}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->setTiledBackground(Landroid/view/View;I)V

    .line 98
    const v8, 0x7f080147

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, albumPanel:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 100
    iget-object v8, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mAlbumViewBinder:Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->getReferrer()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v0, v3, v9, v10}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 113
    return-void
.end method
