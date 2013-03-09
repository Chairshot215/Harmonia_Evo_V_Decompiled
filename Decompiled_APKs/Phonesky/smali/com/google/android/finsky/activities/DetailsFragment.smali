.class public Lcom/google/android/finsky/activities/DetailsFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/OfferResolutionDialog$OfferResolutionListener;
.implements Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/ReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# instance fields
.field private final mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

.field private final mAlbumDetailsBackgroundColor:I

.field private final mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

.field private mContinueUrl:Ljava/lang/String;

.field private final mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mDefaultAlbumDescriptionLines:I

.field private final mDefaultDescriptionLines:I

.field private final mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

.field private mDetailsPanel:Landroid/view/ViewGroup;

.field private mExternalReferrer:Ljava/lang/String;

.field private mLastUsedSectionOrderId:I

.field private final mMaxCreatorMoreByItems:I

.field private final mMaxCreatorMoreByItemsPerRow:I

.field private final mMaxRelatedItems:I

.field private final mMaxRelatedItemsPerRow:I

.field private final mMaxRelatedMagazinesPerRow:I

.field private final mMaxRelatedMusicItemsPerRow:I

.field private final mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

.field private final mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private mReturnAfterPurchase:Z

.field private mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

.field private final mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

.field private final mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

.field private final mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

.field private mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

.field private mUseDynamicButtonsContainer:Z

.field private final mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    .line 71
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 74
    new-instance v1, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    .line 78
    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 81
    new-instance v1, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    .line 84
    new-instance v1, Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SongListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    .line 87
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 90
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 93
    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    .line 96
    new-instance v1, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    .line 100
    new-instance v1, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    .line 104
    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 135
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mLastUsedSectionOrderId:I

    .line 166
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 167
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItemsPerRow:I

    .line 168
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    .line 169
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMusicItemsPerRow:I

    .line 170
    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMagazinesPerRow:I

    .line 171
    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItems:I

    .line 172
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItems:I

    .line 173
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    .line 174
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    .line 175
    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultAlbumDescriptionLines:I

    .line 176
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAlbumDetailsBackgroundColor:I

    .line 177
    return-void
.end method

.method private getRepresentativeBackendId()I
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    return v0
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/DetailsFragment;
    .locals 2
    .parameter "document"
    .parameter "url"
    .parameter "listCookie"
    .parameter "referrer"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"

    .prologue
    .line 154
    new-instance v0, Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/DetailsFragment;-><init>()V

    .line 155
    .local v0, fragment:Lcom/google/android/finsky/activities/DetailsFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/DetailsFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/DetailsFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 157
    const-string v1, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "finsk.DetailsDatabasedFragment.referrer"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "finsky.DetailsFragment.externalReferrerUrl"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "finsky.DetailsFragment.continueUrl"

    invoke-virtual {v0, v1, p5}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "finsky.DetailsFragment.returnAfterPurchase"

    invoke-virtual {v0, v1, p6}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Z)V

    .line 162
    return-object v0
.end method

.method private trackLeftColumnScrollingIfNecessary(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 831
    const v0, 0x7f0800bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 833
    if-nez v0, :cond_0

    .line 861
    :goto_0
    return-void

    .line 836
    :cond_0
    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ObservableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;

    .line 838
    const v2, 0x7f0800c3

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 840
    const v3, 0x7f08009f

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 842
    new-instance v4, Lcom/google/android/finsky/activities/DetailsFragment$1;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/google/android/finsky/activities/DetailsFragment$1;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;Landroid/view/View;Lcom/google/android/finsky/layout/DetailsLeftColumnContainer;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/ObservableScrollView;->setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V

    goto :goto_0
.end method

.method private trackSingleColumnScrollingIfNecessary(Landroid/view/View;)V
    .locals 4
    .parameter "fragmentView"

    .prologue
    .line 868
    const v3, 0x7f0800cd

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 870
    .local v2, singleColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;
    if-nez v2, :cond_1

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    const v3, 0x7f0800ce

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ObservableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 875
    .local v1, scrollContainer:Landroid/view/View;
    instance-of v3, v1, Lcom/google/android/finsky/layout/DetailsContentLayout;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 879
    check-cast v0, Lcom/google/android/finsky/layout/DetailsContentLayout;

    .line 880
    .local v0, detailsContent:Lcom/google/android/finsky/layout/DetailsContentLayout;
    new-instance v3, Lcom/google/android/finsky/activities/DetailsFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/activities/DetailsFragment$2;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;Lcom/google/android/finsky/layout/DetailsContentLayout;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ObservableScrollView;->setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V

    goto :goto_0
.end method

.method private updateDetailsSections(Landroid/os/Bundle;)V
    .locals 17
    .parameter

    .prologue
    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    .line 311
    if-nez v4, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0800ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 317
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 318
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1c

    .line 319
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 320
    const v2, 0x7f04004e

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 347
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v16

    .line 349
    const v1, 0x7f0800bf

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/SubscriptionsSection;

    .line 351
    if-eqz v3, :cond_2

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    const v5, 0x7f040106

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/layout/SubscriptionsSection;Lcom/google/android/finsky/api/model/Document;ILandroid/os/Bundle;)V

    .line 356
    :cond_2
    const v1, 0x7f0800c0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DetailsSummaryByline;

    .line 358
    if-eqz v1, :cond_3

    .line 359
    invoke-virtual {v1, v4}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 362
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 363
    if-eqz v1, :cond_3

    .line 364
    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setBackgroundResource(I)V

    .line 370
    :cond_3
    const v2, 0x7f0800b9

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/BadgeSection;

    .line 371
    if-eqz v5, :cond_4

    .line 372
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v9, v4

    move-object/from16 v11, p1

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/finsky/layout/BadgeSection;->configure(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;)V

    .line 376
    :cond_4
    const v2, 0x7f0800dd

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/DetailsPlusOne;

    .line 378
    if-eqz v5, :cond_5

    .line 379
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "finsky.DetailsDataBasedFragment.cookie"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v10

    move-object v9, v4

    move-object/from16 v11, p1

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bind(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;ZLandroid/os/Bundle;)V

    .line 383
    :cond_5
    const v2, 0x7f080094

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/OwnedActions;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    if-eqz v2, :cond_6

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v8

    move-object/from16 v7, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/finsky/layout/OwnedActions;->setDocument(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Z)V

    .line 389
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    .line 390
    const/16 v3, 0x10

    if-eq v2, v3, :cond_7

    const/16 v3, 0x11

    if-ne v2, v3, :cond_21

    :cond_7
    const/4 v2, 0x1

    move v13, v2

    .line 394
    :goto_2
    const v2, 0x7f0800c1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 395
    if-eqz v3, :cond_8

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_22

    if-nez v13, :cond_22

    .line 397
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMoreByHeader()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItemsPerRow:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItems:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_8
    :goto_3
    const v2, 0x7f080098

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 409
    if-eqz v2, :cond_9

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 411
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v4, v0}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V

    .line 414
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 415
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultAlbumDescriptionLines:I

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->setDefaultMaxLines(I)V

    .line 416
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_9

    .line 417
    const v5, 0x7f020057

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 419
    if-eqz v1, :cond_9

    .line 420
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mAlbumDetailsBackgroundColor:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setBackgroundColor(I)V

    .line 430
    :cond_9
    :goto_4
    const v1, 0x7f0800c2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 431
    if-eqz v1, :cond_a

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    invoke-virtual {v2, v1, v4, v5}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 436
    :cond_a
    const v1, 0x7f0800e8

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 437
    if-eqz v6, :cond_b

    .line 438
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getWhatsNew()Ljava/lang/CharSequence;

    move-result-object v9

    .line 439
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const v8, 0x7f070137

    move-object v7, v4

    move-object/from16 v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 444
    :cond_b
    const v1, 0x7f08009d

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 445
    if-eqz v2, :cond_c

    .line 446
    new-instance v5, Lcom/google/android/finsky/activities/ReviewDialogListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    move-object/from16 v8, p0

    invoke-direct/range {v5 .. v12}, Lcom/google/android/finsky/activities/ReviewDialogListener;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;Lcom/google/android/finsky/layout/OwnedActions;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    :cond_c
    const v1, 0x7f080095

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ListingView;

    .line 454
    if-eqz v1, :cond_d

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/finsky/layout/ListingView;->bindLinks(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    .line 460
    :cond_d
    const v1, 0x7f080096

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 461
    if-eqz v14, :cond_11

    .line 462
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_25

    const/4 v1, 0x1

    .line 463
    :goto_6
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_26

    const/4 v2, 0x1

    .line 465
    :goto_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    .line 466
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItems:I

    .line 467
    if-eqz v2, :cond_e

    .line 468
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMusicItemsPerRow:I

    .line 470
    :cond_e
    if-eqz v13, :cond_f

    .line 472
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMagazinesPerRow:I

    .line 473
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMagazinesPerRow:I

    .line 476
    :cond_f
    if-eqz v1, :cond_10

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->hasCreatorRelatedContent()Z

    move-result v1

    if-nez v1, :cond_10

    if-nez v3, :cond_27

    :cond_10
    const/4 v1, 0x1

    .line 479
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_28

    if-eqz v1, :cond_28

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getRelatedHeader()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v12

    move-object v3, v14

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_11
    :goto_9
    const v1, 0x7f0800e9

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 490
    if-eqz v3, :cond_12

    .line 491
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->hasCrossSellContent()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCrossSellHeader()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCrossSellListUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCrossSellBrowseUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItems:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_12
    :goto_a
    const v1, 0x7f0800ea

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 503
    if-eqz v3, :cond_13

    .line 504
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->hasMoreBy()Z

    move-result v1

    if-eqz v1, :cond_2a

    if-eqz v13, :cond_2a

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMoreByHeader()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMagazinesPerRow:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMagazinesPerRow:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_13
    :goto_b
    const v1, 0x7f0800e5

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ScreenshotGallery;

    .line 518
    if-eqz v1, :cond_14

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/google/android/finsky/layout/ScreenshotGallery;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V

    .line 523
    :cond_14
    const v2, 0x7f0800e6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/MovieTrailerView;

    .line 525
    if-eqz v2, :cond_15

    .line 526
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMovieTrailers()Ljava/util/List;

    move-result-object v5

    .line 527
    if-eqz v5, :cond_2b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2b

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 529
    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    .line 530
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/finsky/layout/MovieTrailerView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getWatchUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/layout/MovieTrailerView;->showPlayIcon(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getDuration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/MovieTrailerView;->setCurtainCaption(Ljava/lang/String;)V

    .line 533
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/MovieTrailerView;->setVisibility(I)V

    .line 540
    :cond_15
    :goto_c
    const v2, 0x7f08009e

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ListingView;

    .line 542
    if-eqz v2, :cond_16

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/google/android/finsky/layout/ListingView;->bindFlagContent(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V

    .line 546
    :cond_16
    const v2, 0x7f08009a

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/SongList;

    .line 547
    if-eqz v6, :cond_17

    .line 548
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 549
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCoreContentHeader()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const v12, 0x7fffffff

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual/range {v5 .. v15}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 556
    const-string v3, "tid"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 557
    if-eqz v3, :cond_17

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f0800cd

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 560
    invoke-virtual {v6, v3, v2}, Lcom/google/android/finsky/layout/SongList;->setHighlightedSong(Ljava/lang/String;Landroid/widget/ScrollView;)V

    .line 567
    :cond_17
    :goto_d
    const v2, 0x7f080099

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/GooglePlusShareSection;

    .line 569
    if-eqz v2, :cond_18

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v2, v4, v0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 578
    :cond_18
    :goto_e
    const v2, 0x7f0800eb

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 579
    if-eqz v3, :cond_19

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_2e

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasAboutTheAuthor()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 582
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAboutTheAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/FastHtmlParser;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const v5, 0x7f070270

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 592
    :cond_19
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0800be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/WarningMessageSection;

    .line 594
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    if-eqz v2, :cond_2f

    const/4 v5, 0x0

    :goto_10
    check-cast v5, Landroid/widget/ImageView;

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/finsky/layout/WarningMessageSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/widget/ImageView;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)V

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0800d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeDetails;->getFooterHtml()Ljava/lang/String;

    move-result-object v3

    .line 601
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 602
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :goto_11
    const v2, 0x7f080092

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ExplorePanel;

    .line 610
    if-eqz v2, :cond_1a

    .line 611
    move-object/from16 v0, p0

    invoke-virtual {v2, v4, v0}, Lcom/google/android/finsky/layout/ExplorePanel;->configure(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;)V

    .line 615
    :cond_1a
    const v2, 0x7f0800d7

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 616
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getVisibility()I

    move-result v1

    if-nez v1, :cond_31

    const/4 v1, 0x1

    .line 618
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v3

    if-nez v3, :cond_1b

    if-eqz v1, :cond_0

    :cond_1b
    if-eqz v2, :cond_0

    .line 619
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 322
    :cond_1c
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v5}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v2

    .line 325
    if-eqz v2, :cond_1e

    const v2, 0x7f040051

    .line 329
    :goto_13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1f

    .line 331
    const v5, 0x7f04004f

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 333
    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 344
    :cond_1d
    :goto_14
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mLastUsedSectionOrderId:I

    goto/16 :goto_1

    .line 325
    :cond_1e
    const v2, 0x7f040050

    goto :goto_13

    .line 334
    :cond_1f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mLastUsedSectionOrderId:I

    if-eq v2, v5, :cond_1d

    .line 337
    const v5, 0x7f0800e7

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 338
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 339
    :goto_15
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    if-le v6, v7, :cond_20

    .line 340
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_15

    .line 342
    :cond_20
    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_14

    .line 390
    :cond_21
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_2

    .line 403
    :cond_22
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 425
    :cond_23
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 449
    :cond_24
    const/16 v1, 0x8

    goto/16 :goto_5

    .line 462
    :cond_25
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 463
    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 476
    :cond_27
    const/4 v1, 0x0

    goto/16 :goto_8

    .line 484
    :cond_28
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 497
    :cond_29
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 511
    :cond_2a
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 535
    :cond_2b
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/MovieTrailerView;->setVisibility(I)V

    goto/16 :goto_c

    .line 563
    :cond_2c
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    goto/16 :goto_d

    .line 573
    :cond_2d
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    goto/16 :goto_e

    .line 587
    :cond_2e
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 594
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    const v5, 0x7f0800bd

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_10

    .line 605
    :cond_30
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_11

    .line 616
    :cond_31
    const/4 v1, 0x0

    goto/16 :goto_12
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 211
    const v0, 0x7f040042

    return v0
.end method

.method public onAllLibrariesLoaded()V
    .locals 0

    .prologue
    .line 908
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 643
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 644
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 645
    return-object v0
.end method

.method public onDataChanged()V
    .locals 10

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-nez v0, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getRepresentativeBackendId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/activities/BinderFactory;->getSummaryViewBinder(Lcom/google/android/finsky/api/model/DfeToc;ILandroid/accounts/Account;)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    .line 631
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mExternalReferrer:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContinueUrl:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReturnAfterPurchase:Z

    move-object v4, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 637
    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDataChanged()V

    .line 638
    return-void
.end method

.method public onDeleteReview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "docId"
    .parameter "commentId"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onDeleteReview(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 653
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->recordState()V

    .line 655
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onDestroyView()V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 659
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 660
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 661
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    .line 662
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->onDestroyView()V

    .line 663
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->onDestroyView()V

    .line 664
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    .line 665
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->onDestroyView()V

    .line 666
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onDestroyView()V

    .line 667
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    .line 669
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDestroyView()V

    .line 670
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 817
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->canChangeFragmentManagerState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    .line 823
    :goto_0
    return-void

    .line 821
    :cond_0
    const-string v0, "Volley error: %s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onInitViewBinders()V
    .locals 6

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SongListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/library/Libraries;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    .line 197
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 1
    .parameter "library"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->refresh()V

    .line 918
    :cond_0
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 713
    packed-switch p1, :pswitch_data_0

    .line 726
    const-string v0, "Unknown request code %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 715
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onNegativeClick(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 721
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onNegativeClick(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOfferSelected(Lcom/google/android/finsky/api/model/Document;I)V
    .locals 8
    .parameter "document"
    .parameter "offerType"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getReferrer()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mExternalReferrer:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContinueUrl:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 766
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 680
    packed-switch p1, :pswitch_data_0

    .line 700
    const-string v0, "Unknown request code %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 682
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onPositiveClick(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 688
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onPositiveClick(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 693
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    const/high16 v1, 0x200a

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 697
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .locals 1
    .parameter "docId"
    .parameter "reviewId"
    .parameter "newRating"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    .line 760
    return-void
.end method

.method public onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;Z)V
    .locals 7
    .parameter "docId"
    .parameter "rating"
    .parameter "title"
    .parameter "comment"
    .parameter "userProfile"
    .parameter "isPublic"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;Z)V

    .line 740
    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 288
    :cond_0
    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f0800a1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f0800ca

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 223
    .local v13, summaryContainer:Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f0800cc

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 224
    .local v16, summaryPanel:Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f0800c3

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 226
    .local v14, summaryDynamicPanel:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 230
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->rebindActionBar()V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v8

    .line 232
    .local v8, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    .line 233
    .local v3, backend:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v5

    .line 234
    .local v5, backendHintColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendDarkColor(Landroid/content/Context;I)I

    move-result v4

    .line 236
    .local v4, backendDarkColor:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v9

    .line 237
    .local v9, fragmentView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 239
    .local v10, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 241
    invoke-static {v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusDetailsLayoutResource(I)I

    move-result v7

    .line 242
    .local v7, detailsLayoutId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 245
    .end local v7           #detailsLayoutId:I
    :cond_1
    const v19, 0x7f0800a4

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 246
    .local v17, topBanner:Landroid/view/View;
    if-eqz v17, :cond_2

    .line 247
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 248
    const v19, 0x7f0800a5

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 249
    .local v12, pinstripeOverlay:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0200d2

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 251
    .local v6, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v19, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v20, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 252
    invoke-virtual {v12, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    const v19, 0x7f0800a3

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 255
    .local v18, topBannerLeading:Landroid/view/View;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 258
    .end local v6           #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    .end local v12           #pinstripeOverlay:Landroid/view/View;
    .end local v18           #topBannerLeading:Landroid/view/View;
    :cond_2
    if-eqz v13, :cond_3

    .line 259
    invoke-virtual {v13, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0200d2

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 262
    .restart local v6       #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v19, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v20, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 263
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    const v19, 0x7f0800cb

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 266
    .local v15, summaryLeading:Landroid/view/View;
    invoke-virtual {v15, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 269
    .end local v6           #backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    .end local v15           #summaryLeading:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v16, v21, v22

    const/16 v22, 0x2

    aput-object v14, v21, v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 271
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/android/finsky/activities/DetailsFragment;->trackSingleColumnScrollingIfNecessary(Landroid/view/View;)V

    .line 272
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/android/finsky/activities/DetailsFragment;->trackLeftColumnScrollingIfNecessary(Landroid/view/View;)V

    .line 274
    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/activities/DetailsFragment;->updateDetailsSections(Landroid/os/Bundle;)V

    .line 276
    const v19, 0x7f08009f

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 277
    .local v11, leadingStrip:Landroid/view/View;
    if-eqz v11, :cond_4

    .line 278
    invoke-virtual {v11, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 280
    :cond_4
    return-void
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v7

    .line 771
    .local v7, view:Landroid/view/View;
    if-nez v7, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    const v9, 0x7f0800ce

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 778
    .local v3, detailsContainer:Landroid/view/ViewGroup;
    const v9, 0x7f080098

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 779
    .local v2, descriptionPanel:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 780
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 783
    :cond_2
    const v9, 0x7f0800e8

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 784
    .local v8, whatsNewPanel:Landroid/view/View;
    if-eqz v8, :cond_3

    .line 785
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 788
    :cond_3
    const v9, 0x7f0800b9

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/BadgeSection;

    .line 789
    .local v1, badgeSection:Lcom/google/android/finsky/layout/BadgeSection;
    if-eqz v1, :cond_4

    .line 790
    invoke-virtual {v1, p1}, Lcom/google/android/finsky/layout/BadgeSection;->saveInstanceState(Landroid/os/Bundle;)V

    .line 793
    :cond_4
    const v9, 0x7f0800dd

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/DetailsPlusOne;

    .line 794
    .local v4, plusOnePanel:Lcom/google/android/finsky/layout/DetailsPlusOne;
    if-eqz v4, :cond_5

    .line 795
    invoke-virtual {v4, p1}, Lcom/google/android/finsky/layout/DetailsPlusOne;->saveInstanceState(Landroid/os/Bundle;)V

    .line 798
    :cond_5
    const v9, 0x7f0800bf

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/SubscriptionsSection;

    .line 800
    .local v6, subscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;
    if-eqz v6, :cond_6

    .line 801
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 804
    :cond_6
    const v9, 0x7f08009a

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/SongList;

    .line 805
    .local v5, songList:Lcom/google/android/finsky/layout/SongList;
    if-eqz v5, :cond_7

    .line 806
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/SongListViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 809
    :cond_7
    const v9, 0x7f0800eb

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 810
    .local v0, aboutAuthorPanel:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 811
    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected requestData()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->requestData()V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.DetailsFragment.externalReferrerUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mExternalReferrer:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.DetailsFragment.continueUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContinueUrl:Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.DetailsFragment.returnAfterPurchase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReturnAfterPurchase:Z

    .line 207
    return-void
.end method

.method public updateDetailsSections()V
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsFragment;->updateDetailsSections(Landroid/os/Bundle;)V

    .line 301
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsFragment;->trackSingleColumnScrollingIfNecessary(Landroid/view/View;)V

    .line 303
    :cond_0
    return-void
.end method
