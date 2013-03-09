.class public Lcom/google/android/finsky/activities/AntennaFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "AntennaFragment.java"


# instance fields
.field private final mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mDefaultDescriptionLines:I

.field private final mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

.field private final mMaxRelatedItems:I

.field private final mMaxRelatedItemsPerRow:I

.field private final mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

.field private final mUseWideHeaderImage:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    .line 35
    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 38
    new-instance v1, Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SongListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    .line 41
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 65
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mMaxRelatedItemsPerRow:I

    .line 67
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mMaxRelatedItems:I

    .line 68
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDefaultDescriptionLines:I

    .line 69
    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mUseWideHeaderImage:Z

    .line 70
    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/AntennaFragment;
    .locals 2
    .parameter "document"
    .parameter "url"
    .parameter "cookie"
    .parameter "referrer"

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/finsky/activities/AntennaFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/AntennaFragment;-><init>()V

    .line 57
    .local v0, fragment:Lcom/google/android/finsky/activities/AntennaFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/AntennaFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/AntennaFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 59
    const-string v1, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/AntennaFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "finsk.DetailsDatabasedFragment.referrer"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/AntennaFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f040067

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->recordState()V

    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->onDestroyView()V

    .line 183
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 185
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDestroyView()V

    .line 186
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SongListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 78
    return-void
.end method

.method public rebindActionBar()V
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 169
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 173
    .end local v0           #doc:Lcom/google/android/finsky/api/model/Document;
    :cond_0
    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .locals 29
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->rebindActionBar()V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    .line 89
    .local v4, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getAntennaInfo()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    move-result-object v22

    .line 91
    .local v22, antennaInfo:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getView()Landroid/view/View;

    move-result-object v24

    .line 93
    .local v24, fragmentView:Landroid/view/View;
    const v2, 0x7f08010e

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 95
    .local v25, headerHero:Lcom/google/android/finsky/layout/HeroGraphicView;
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/finsky/layout/HeroGraphicView;->hideAccessibilityOverlay()V

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mUseWideHeaderImage:Z

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static {v4, v5, v7, v10}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPageHeaderBannerUrlFromDocument(Lcom/google/android/finsky/api/model/Document;ZII)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4, v5, v7}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Z)V

    .line 100
    const v2, 0x7f08010f

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/google/android/finsky/layout/EditorialPageHeader;

    .line 102
    .local v21, antennaHeader:Lcom/google/android/finsky/layout/EditorialPageHeader;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSeriesSubtitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5, v7}, Lcom/google/android/finsky/layout/EditorialPageHeader;->showSeriesInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mUseWideHeaderImage:Z

    if-eqz v2, :cond_0

    .line 105
    const v2, 0x7f08010b

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 106
    .local v23, bottomStripWide:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    .line 107
    .local v19, antennaColor:I
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    .end local v19           #antennaColor:I
    .end local v23           #bottomStripWide:Landroid/view/View;
    :cond_0
    const v2, 0x7f08010d

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;

    .line 112
    .local v20, antennaEpisodeHeader:Lcom/google/android/finsky/layout/DescriptionEditorialHeader;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getEpisodeSubtitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;->showEpisodeInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const v2, 0x7f080098

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 117
    .local v3, descriptionPanel:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const/4 v5, -0x1

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->hideHeader()V

    .line 123
    :cond_1
    const v2, 0x7f08010c

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 125
    .local v27, videoHero:Lcom/google/android/finsky/layout/HeroGraphicView;
    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v28

    .line 126
    .local v28, videoLinks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    if-eqz v28, :cond_5

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPreviewUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4, v5, v7}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Z)V

    .line 130
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->showPlayIcon(Ljava/lang/String;)V

    .line 131
    const v2, 0x7f070175

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setContentDescription(I)V

    .line 132
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    .line 137
    :goto_0
    const v2, 0x7f08009a

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/SongList;

    .line 138
    .local v6, songList:Lcom/google/android/finsky/layout/SongList;
    if-eqz v6, :cond_2

    .line 139
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSectionTracks()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v26

    .line 140
    .local v26, sectionTracks:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x7f070242

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const v12, 0x7fffffff

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->hasDetailsDataLoaded()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual/range {v5 .. v15}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 147
    .end local v26           #sectionTracks:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :cond_2
    const v2, 0x7f08009c

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 148
    .local v8, bodyOfWorkPanel:Landroid/view/View;
    if-eqz v8, :cond_3

    .line 149
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;->getSectionAlbums()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v18

    .line 150
    .local v18, albumMetadata:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mMaxRelatedItemsPerRow:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mMaxRelatedItems:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v9, v4

    invoke-virtual/range {v7 .. v17}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v18           #albumMetadata:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    :cond_3
    const v2, 0x7f0800dd

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/layout/DetailsPlusOne;

    .line 158
    .local v9, plusOnePanel:Lcom/google/android/finsky/layout/DetailsPlusOne;
    if-eqz v9, :cond_4

    .line 159
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->hasDetailsDataLoaded()Z

    move-result v14

    move-object v13, v4

    move-object/from16 v15, p1

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bind(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;ZLandroid/os/Bundle;)V

    .line 162
    :cond_4
    return-void

    .line 134
    .end local v6           #songList:Lcom/google/android/finsky/layout/SongList;
    .end local v8           #bodyOfWorkPanel:Landroid/view/View;
    .end local v9           #plusOnePanel:Lcom/google/android/finsky/layout/DetailsPlusOne;
    :cond_5
    const/16 v2, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 191
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const v3, 0x7f080098

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, descriptionPanel:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 197
    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 200
    :cond_2
    const v3, 0x7f0800dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DetailsPlusOne;

    .line 201
    .local v1, plusOnePanel:Lcom/google/android/finsky/layout/DetailsPlusOne;
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1, p1}, Lcom/google/android/finsky/layout/DetailsPlusOne;->saveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method
