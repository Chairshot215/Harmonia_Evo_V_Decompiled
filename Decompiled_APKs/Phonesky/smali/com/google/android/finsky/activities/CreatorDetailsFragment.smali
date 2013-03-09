.class public Lcom/google/android/finsky/activities/CreatorDetailsFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "CreatorDetailsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/ReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# instance fields
.field private final mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

.field private final mDefaultDescriptionLines:I

.field private final mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

.field private final mHeroImageHeight:I

.field private final mMaxCreatorRelatedItems:I

.field private final mMaxCreatorRelatedItemsPerRow:I

.field private final mMaxRelatedItems:I

.field private final mMaxRelatedItemsPerRow:I

.field private mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

.field private final mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

.field private final mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

.field private final mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

.field private final mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    .line 49
    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 52
    new-instance v1, Lcom/google/android/finsky/activities/SeasonListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SeasonListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    .line 55
    new-instance v1, Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SongListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    .line 58
    new-instance v1, Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    .line 61
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 64
    new-instance v1, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    .line 96
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxCreatorRelatedItemsPerRow:I

    .line 98
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItemsPerRow:I

    .line 99
    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxCreatorRelatedItems:I

    .line 100
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItems:I

    .line 101
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDefaultDescriptionLines:I

    .line 102
    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mHeroImageHeight:I

    .line 103
    return-void
.end method

.method private moveViewOneUp(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 287
    .local v1, parent:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 288
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 289
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 290
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 294
    :cond_0
    return-void

    .line 287
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/CreatorDetailsFragment;
    .locals 2
    .parameter "document"
    .parameter "url"
    .parameter "cookie"
    .parameter "externalReferrer"

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;-><init>()V

    .line 88
    .local v0, fragment:Lcom/google/android/finsky/activities/CreatorDetailsFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 90
    const-string v1, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "finsky.CreatorDetailsFragment.referrerUrl"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object v0
.end method

.method private rebindMusicSections(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V
    .locals 19
    .parameter "fragmentView"
    .parameter "doc"
    .parameter "savedInstanceState"

    .prologue
    .line 333
    const/16 v17, 0x0

    .line 334
    .local v17, isShowingRelatedSongList:Z
    const v3, 0x7f08009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/SongList;

    .line 336
    .local v4, songList:Lcom/google/android/finsky/layout/SongList;
    if-eqz v4, :cond_0

    .line 337
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 338
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentHeader()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 356
    :cond_0
    :goto_0
    const v3, 0x7f080099

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/google/android/finsky/layout/GooglePlusShareSection;

    .line 358
    .local v18, shareSection:Lcom/google/android/finsky/layout/GooglePlusShareSection;
    if-eqz v18, :cond_1

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    .line 360
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 368
    :cond_1
    :goto_1
    const v3, 0x7f08009e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/layout/ListingView;

    .line 370
    .local v16, flagContentPanel:Lcom/google/android/finsky/layout/ListingView;
    if-eqz v16, :cond_2

    .line 371
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v5}, Lcom/google/android/finsky/layout/ListingView;->bindFlagContent(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V

    .line 379
    :cond_2
    :goto_2
    const v3, 0x7f08009c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 380
    .local v6, bodyOfWorkPanel:Landroid/view/View;
    if-eqz v6, :cond_3

    .line 381
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkListUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 383
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkHeader()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkListUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkBrowseUrl()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItemsPerRow:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItems:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v15}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 387
    if-eqz v17, :cond_3

    .line 390
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->moveViewOneUp(Landroid/view/View;)V

    .line 396
    :cond_3
    :goto_3
    return-void

    .line 346
    .end local v6           #bodyOfWorkPanel:Landroid/view/View;
    .end local v16           #flagContentPanel:Lcom/google/android/finsky/layout/ListingView;
    .end local v18           #shareSection:Lcom/google/android/finsky/layout/GooglePlusShareSection;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getRelatedDocTypeHeader()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getRelatedDocTypeListUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 349
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 352
    :cond_5
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    goto/16 :goto_0

    .line 363
    .restart local v18       #shareSection:Lcom/google/android/finsky/layout/GooglePlusShareSection;
    :cond_6
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    goto/16 :goto_1

    .line 374
    .restart local v16       #flagContentPanel:Lcom/google/android/finsky/layout/ListingView;
    :cond_7
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    goto/16 :goto_2

    .line 393
    .restart local v6       #bodyOfWorkPanel:Landroid/view/View;
    :cond_8
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private rebindTvSections(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V
    .locals 16
    .parameter "fragmentView"
    .parameter "doc"
    .parameter "savedInstanceState"

    .prologue
    .line 297
    const v1, 0x7f08009b

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/EpisodeList;

    .line 298
    .local v3, episodeList:Lcom/google/android/finsky/layout/EpisodeList;
    if-eqz v3, :cond_0

    .line 299
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 301
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/layout/EpisodeList;->setVisibility(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 303
    .local v14, detailsUri:Landroid/net/Uri;
    const-string v1, "cdid"

    invoke-virtual {v14, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, seasonId:Ljava/lang/String;
    const-string v1, "gdid"

    invoke-virtual {v14, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, episodeId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentHeader()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->bind(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/layout/EpisodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 315
    .end local v4           #seasonId:Ljava/lang/String;
    .end local v5           #episodeId:Ljava/lang/String;
    .end local v14           #detailsUri:Landroid/net/Uri;
    :cond_0
    :goto_0
    const v1, 0x7f08009d

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 316
    .local v15, reviewsPanel:Landroid/view/View;
    if-eqz v15, :cond_1

    .line 317
    const v1, 0x7f080094

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/OwnedActions;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    .line 318
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 319
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v11

    move-object/from16 v7, p2

    move-object/from16 v10, p0

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/finsky/layout/OwnedActions;->setDocument(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Z)V

    .line 321
    new-instance v6, Lcom/google/android/finsky/activities/ReviewDialogListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    move-object/from16 v9, p0

    invoke-direct/range {v6 .. v13}, Lcom/google/android/finsky/activities/ReviewDialogListener;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;Lcom/google/android/finsky/layout/OwnedActions;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v1, v15, v0, v2}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    :cond_1
    :goto_2
    return-void

    .line 310
    .end local v15           #reviewsPanel:Landroid/view/View;
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/layout/EpisodeList;->setVisibility(I)V

    goto :goto_0

    .line 324
    .restart local v15       #reviewsPanel:Landroid/view/View;
    :cond_3
    const/16 v1, 0x8

    goto :goto_1

    .line 326
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OwnedActions;->setVisibility(I)V

    .line 327
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f040031

    return v0
.end method

.method public onDeleteReview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "docId"
    .parameter "commentId"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onDeleteReview(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->recordState()V

    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->onDestroyView()V

    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->onDestroyView()V

    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->onDestroyView()V

    .line 257
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->onDestroyView()V

    .line 259
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDestroyView()V

    .line 260
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 7

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SongListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v6

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/fragments/PageFragment;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/library/Libraries;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 115
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 413
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 401
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x200a

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 408
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .locals 1
    .parameter "docId"
    .parameter "reviewId"
    .parameter "newRating"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    .line 418
    return-void
.end method

.method public onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;Z)V
    .locals 7
    .parameter "docId"
    .parameter "rating"
    .parameter "reviewTitle"
    .parameter "reviewComment"
    .parameter "userProfile"
    .parameter "isPublic"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;Z)V

    .line 426
    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 245
    :cond_0
    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .locals 37
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->rebindActionBar()V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v7

    .line 126
    .local v7, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v19

    .line 127
    .local v19, backend:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v21

    .line 128
    .local v21, backendHintColor:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendDarkColor(Landroid/content/Context;I)I

    move-result v20

    .line 130
    .local v20, backendDarkColor:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getView()Landroid/view/View;

    move-result-object v26

    .line 132
    .local v26, fragmentView:Landroid/view/View;
    const v4, 0x7f0800a4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    .line 133
    .local v34, topBanner:Landroid/view/View;
    if-eqz v34, :cond_0

    .line 134
    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    const v4, 0x7f0800a5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 136
    .local v33, pinstripeOverlay:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    check-cast v22, Landroid/graphics/drawable/BitmapDrawable;

    .line 138
    .local v22, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 139
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    const v4, 0x7f0800a3

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    .line 142
    .local v35, topBannerLeading:Landroid/view/View;
    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    .end local v22           #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    .end local v33           #pinstripeOverlay:Landroid/view/View;
    .end local v35           #topBannerLeading:Landroid/view/View;
    :cond_0
    const v4, 0x7f080093

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 146
    .local v28, heroSeparator:Landroid/view/View;
    if-eqz v28, :cond_1

    .line 147
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 150
    :cond_1
    const v4, 0x7f080097

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 152
    .local v24, creatorTitleView:Lcom/google/android/finsky/layout/DecoratedTextView;
    if-eqz v24, :cond_2

    .line 153
    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v5, -0x1

    move-object/from16 v0, v24

    invoke-static {v7, v4, v0, v5}, Lcom/google/android/finsky/utils/BadgeUtils;->configureItemBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V

    .line 157
    :cond_2
    const v4, 0x7f080091

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 159
    .local v27, heroGraphicImageView:Lcom/google/android/finsky/layout/HeroGraphicView;
    const/16 v29, 0x0

    .line 160
    .local v29, heroUrl:Ljava/lang/String;
    const/16 v36, 0x0

    .line 161
    .local v36, usePromoImage:Z
    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_3

    .line 162
    const/16 v36, 0x1

    .line 163
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mHeroImageHeight:I

    invoke-static {v7, v4, v5}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPromoBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v29

    .line 167
    :cond_3
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 168
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mHeroImageHeight:I

    invoke-static {v7, v4, v5}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v29

    .line 169
    const/16 v36, 0x0

    .line 171
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v7, v1, v5}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Z)V

    .line 172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v7, v4, v1}, Lcom/google/android/finsky/layout/HeroGraphicView;->bindLightboxImage(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V

    .line 174
    const v4, 0x7f08009f

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 175
    .local v30, leadingStrip:Landroid/view/View;
    if-eqz v30, :cond_5

    .line 176
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    :cond_5
    const v4, 0x7f0800b9

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/BadgeSection;

    .line 181
    .local v3, badgeSection:Lcom/google/android/finsky/layout/BadgeSection;
    if-eqz v3, :cond_6

    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v9, p1

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/finsky/layout/BadgeSection;->configure(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;)V

    .line 187
    :cond_6
    const v4, 0x7f080098

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 188
    .local v6, descriptionPanel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const/4 v8, -0x1

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 190
    const v4, 0x7f0800a0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 191
    .local v23, creatorTaglinePanel:Landroid/view/View;
    if-nez v23, :cond_7

    .line 192
    const v4, 0x7f020057

    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 196
    :cond_7
    const v4, 0x7f080096

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 197
    .local v9, relatedPanel:Landroid/view/View;
    if-eqz v9, :cond_8

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 199
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getRelatedHeader()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxCreatorRelatedItemsPerRow:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxCreatorRelatedItems:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v10, v7

    invoke-virtual/range {v8 .. v18}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_8
    :goto_0
    const v4, 0x7f080095

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/google/android/finsky/layout/ListingView;

    .line 210
    .local v31, linksPanel:Lcom/google/android/finsky/layout/ListingView;
    if-eqz v31, :cond_9

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v7}, Lcom/google/android/finsky/layout/ListingView;->bindLinks(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    .line 215
    :cond_9
    const v4, 0x7f080092

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/google/android/finsky/layout/ExplorePanel;

    .line 216
    .local v25, explorePanel:Lcom/google/android/finsky/layout/ExplorePanel;
    if-eqz v25, :cond_a

    .line 217
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v7, v1}, Lcom/google/android/finsky/layout/ExplorePanel;->configure(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;)V

    .line 221
    :cond_a
    const v4, 0x7f0800dd

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/layout/DetailsPlusOne;

    .line 223
    .local v10, plusOnePanel:Lcom/google/android/finsky/layout/DetailsPlusOne;
    if-eqz v10, :cond_b

    .line 224
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v15

    move-object v14, v7

    move-object/from16 v16, p1

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bind(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;ZLandroid/os/Bundle;)V

    .line 229
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->rebindTvSections(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V

    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->rebindMusicSections(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V

    .line 233
    const v4, 0x7f0800d7

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 234
    .local v32, loadingSection:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v32, :cond_c

    .line 235
    const/16 v4, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_c
    return-void

    .line 204
    .end local v10           #plusOnePanel:Lcom/google/android/finsky/layout/DetailsPlusOne;
    .end local v25           #explorePanel:Lcom/google/android/finsky/layout/ExplorePanel;
    .end local v31           #linksPanel:Lcom/google/android/finsky/layout/ListingView;
    .end local v32           #loadingSection:Landroid/view/View;
    :cond_d
    const/16 v4, 0x8

    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 265
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 282
    :goto_0
    return-void

    .line 269
    :cond_0
    const v3, 0x7f080098

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, descriptionPanel:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 271
    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 274
    :cond_1
    const v3, 0x7f0800dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DetailsPlusOne;

    .line 275
    .local v1, plusOnePanel:Lcom/google/android/finsky/layout/DetailsPlusOne;
    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {v1, p1}, Lcom/google/android/finsky/layout/DetailsPlusOne;->saveInstanceState(Landroid/os/Bundle;)V

    .line 279
    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 281
    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/SongListViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method
