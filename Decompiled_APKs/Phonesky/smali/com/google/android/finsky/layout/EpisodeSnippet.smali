.class public Lcom/google/android/finsky/layout/EpisodeSnippet;
.super Lcom/google/android/finsky/layout/CheckedRelativeLayout;
.source "EpisodeSnippet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;
    }
.end annotation


# instance fields
.field private mAddedDrawable:Landroid/view/View;

.field private mAddedState:Landroid/widget/TextView;

.field private final mBaseRowHeight:I

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mBuyButton:Landroid/widget/Button;

.field private mCollapsedContent:Landroid/view/View;

.field private mCollapsedStateChangedListener:Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;

.field private mEpisode:Lcom/google/android/finsky/api/model/Document;

.field private mEpisodeNumber:Landroid/widget/TextView;

.field private mEpisodeTitle:Landroid/widget/TextView;

.field private mExpandedContent:Landroid/view/View;

.field private mExpandedDescription:Landroid/widget/TextView;

.field private mExpandedEpisodeScreencap:Lcom/google/android/finsky/layout/HeroGraphicView;

.field private mExpandedViewStub:Landroid/view/ViewStub;

.field private final mHandler:Landroid/os/Handler;

.field private mIsNewPurchase:Z

.field private mMaxExpandedHeight:I

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mParentFragment:Lcom/google/android/finsky/fragments/PageFragment;

.field private mReferrerListCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private final mScrollerRunnable:Ljava/lang/Runnable;

.field private mSeasonDocument:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mHandler:Landroid/os/Handler;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBaseRowHeight:I

    .line 90
    new-instance v0, Lcom/google/android/finsky/layout/EpisodeSnippet$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/EpisodeSnippet$1;-><init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mScrollerRunnable:Ljava/lang/Runnable;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/EpisodeSnippet;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBaseRowHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/EpisodeSnippet;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/EpisodeSnippet;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/EpisodeSnippet;)Lcom/google/android/finsky/fragments/PageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mParentFragment:Lcom/google/android/finsky/fragments/PageFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/EpisodeSnippet;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->toggleExpandedVisibility()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/EpisodeSnippet;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->logCurrentState()V

    return-void
.end method

.method public static handleBuyButtonClick(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/fragments/PageFragment;)V
    .locals 17
    .parameter "navMgr"
    .parameter "doc"
    .parameter "containerFragment"

    .prologue
    .line 363
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 364
    .local v3, currentAccount:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v14

    .line 366
    .local v14, owner:Landroid/accounts/Account;
    if-eqz v14, :cond_1

    .line 367
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->openItem(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 370
    .local v13, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v15

    .line 371
    .local v15, purchase:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-eqz v15, :cond_2

    .line 372
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_2
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v16

    .line 375
    .local v16, purchaseHd:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-eqz v16, :cond_3

    .line 376
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 380
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/fragments/PageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v11

    .line 381
    .local v11, fragMgr:Landroid/support/v4/app/FragmentManager;
    const-string v2, "tv_offer_resolution_dialog"

    invoke-virtual {v11, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 385
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 386
    .local v10, docs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    .line 387
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 390
    :cond_4
    const v2, 0x7f07012a

    const/4 v4, 0x1

    invoke-static {v13, v4}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v13, v10, v2, v4}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->newInstance(Ljava/util/List;Ljava/util/ArrayList;II)Lcom/google/android/finsky/activities/OfferResolutionDialog;

    move-result-object v9

    .line 393
    .local v9, dialog:Lcom/google/android/finsky/activities/OfferResolutionDialog;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v2}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 394
    const-string v2, "tv_offer_resolution_dialog"

    invoke-virtual {v9, v11, v2}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    .end local v9           #dialog:Lcom/google/android/finsky/activities/OfferResolutionDialog;
    .end local v10           #docs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v11           #fragMgr:Landroid/support/v4/app/FragmentManager;
    .end local v12           #i:I
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 396
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private inflateViewStubIfNecessary()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    .line 211
    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedDescription:Landroid/widget/TextView;

    .line 212
    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/HeroGraphicView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedEpisodeScreencap:Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 214
    :cond_0
    return-void
.end method

.method private logCurrentState()V
    .locals 6

    .prologue
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "episodeSelected?doc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&expanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->isExpanded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, newLogState:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mReferrerUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mReferrerListCookie:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const-string v2, "episodeSelected"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "cidi"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "expanded"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->isExpanded()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method private setExpandedContentVisibility(I)V
    .locals 9
    .parameter "visibility"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 217
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->inflateViewStubIfNecessary()V

    .line 218
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    if-nez p1, :cond_3

    .line 221
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    iget v5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mMaxExpandedHeight:I

    invoke-static {v4, v3, v5}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getScreenshotUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, imageUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 224
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedEpisodeScreencap:Lcom/google/android/finsky/layout/HeroGraphicView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mSeasonDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4, v5, v6, v1, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Z)V

    .line 226
    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 227
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, episodeDescription:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070115

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .end local v0           #episodeDescription:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    new-instance v5, Lcom/google/android/finsky/layout/EpisodeSnippet$5;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/layout/EpisodeSnippet$5;-><init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .end local v1           #imageUrl:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedStateChangedListener:Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;

    if-eqz v4, :cond_4

    .line 245
    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedStateChangedListener:Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;

    const/16 v5, 0x8

    if-ne p1, v5, :cond_5

    :goto_0
    invoke-interface {v4, p0, v2}, Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;->onCollapsedStateChanged(Lcom/google/android/finsky/layout/EpisodeSnippet;Z)V

    .line 251
    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    return-void

    :cond_5
    move v2, v3

    .line 245
    goto :goto_0
.end method

.method private toggleExpandedVisibility()V
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setExpandedContentVisibility(I)V

    .line 206
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateBuyButtonState(Landroid/content/res/Resources;Landroid/widget/Button;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZ)V
    .locals 8
    .parameter "resources"
    .parameter "buyButton"
    .parameter "addedButton"
    .parameter "addedDrawable"
    .parameter "parentDoc"
    .parameter "doc"
    .parameter "stringOverrideForPrice"
    .parameter "isNewPurchase"

    .prologue
    .line 300
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 301
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 302
    .local v0, currentAccount:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    .line 303
    .local v1, libraries:Lcom/google/android/finsky/library/Libraries;
    invoke-static {p5, v1, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v2

    .line 306
    .local v2, owner:Landroid/accounts/Account;
    const v4, 0x7f020053

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 308
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingRight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 309
    const v4, 0x7f0a0002

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 310
    if-eqz v2, :cond_2

    .line 312
    invoke-virtual {p5}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    const/16 v5, 0x13

    if-ne v4, v5, :cond_1

    .line 313
    const v4, 0x7f0700f1

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 314
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 349
    :goto_0
    if-eqz p2, :cond_0

    .line 350
    if-eqz p7, :cond_9

    const/4 v3, 0x0

    .line 351
    .local v3, visibility:I
    :goto_1
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 352
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    .end local v3           #visibility:I
    :cond_0
    return-void

    .line 317
    :cond_1
    const v4, 0x7f020047

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 319
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingRight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 320
    const v4, 0x7f070104

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 321
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 322
    const v4, 0x7f0a004c

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 324
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p5, v4}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 326
    const/4 v4, -0x1

    if-eq p6, v4, :cond_3

    .line 327
    invoke-virtual {p1, p6}, Landroid/widget/Button;->setText(I)V

    .line 331
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 329
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p5, v4}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 332
    :cond_4
    const/4 v4, 0x7

    invoke-virtual {p5, v4}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 334
    const/4 v4, -0x1

    if-eq p6, v4, :cond_5

    .line 335
    invoke-virtual {p1, p6}, Landroid/widget/Button;->setText(I)V

    .line 339
    :goto_3
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 337
    :cond_5
    const/4 v4, 0x7

    invoke-virtual {p5, v4}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 340
    :cond_6
    if-eqz p4, :cond_8

    const/4 v4, 0x1

    invoke-virtual {p4, v4}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v4

    if-nez v4, :cond_7

    const/4 v4, 0x7

    invoke-virtual {p4, v4}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 343
    :cond_7
    const v4, 0x7f07023f

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 344
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 346
    :cond_8
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 350
    :cond_9
    const/16 v3, 0x8

    goto/16 :goto_1
.end method


# virtual methods
.method public collapseWithoutNotifyingListeners()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public expand()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setExpandedContentVisibility(I)V

    .line 195
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 9

    .prologue
    .line 119
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onAttachedToWindow()V

    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v8

    .line 122
    .local v8, episodeDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
    if-nez v8, :cond_0

    .line 123
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setVisibility(I)V

    .line 171
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeNumber:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getEpisodeIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBuyButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mAddedState:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mAddedDrawable:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mSeasonDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    const/4 v6, -0x1

    iget-boolean v7, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mIsNewPurchase:Z

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/layout/EpisodeSnippet;->updateBuyButtonState(Landroid/content/res/Resources;Landroid/widget/Button;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZ)V

    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBuyButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/finsky/layout/EpisodeSnippet$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/EpisodeSnippet$2;-><init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 144
    sget-object v0, Lcom/google/android/finsky/config/G;->prePurchaseSharingEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Lcom/google/android/finsky/layout/EpisodeSnippet$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/EpisodeSnippet$3;-><init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedContent:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/EpisodeSnippet$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/EpisodeSnippet$4;-><init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onDetachedFromWindow()V

    .line 258
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onFinishInflate()V

    .line 264
    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedContent:Landroid/view/View;

    .line 265
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedViewStub:Landroid/view/ViewStub;

    .line 266
    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeNumber:Landroid/widget/TextView;

    .line 267
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBuyButton:Landroid/widget/Button;

    .line 268
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeTitle:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mAddedState:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mAddedDrawable:Landroid/view/View;

    .line 271
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mMaxExpandedHeight:I

    .line 272
    return-void
.end method

.method public setEpisodeDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/fragments/PageFragment;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;)V
    .locals 0
    .parameter "season"
    .parameter "episode"
    .parameter "bitmapLoader"
    .parameter "navigationManager"
    .parameter "isNewPurchase"
    .parameter "parentFragment"
    .parameter "referrerUrl"
    .parameter "referrerListCookie"
    .parameter "listener"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mSeasonDocument:Lcom/google/android/finsky/api/model/Document;

    .line 278
    iput-object p2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    .line 279
    iput-object p4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 280
    iput-object p3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 281
    iput-boolean p5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mIsNewPurchase:Z

    .line 282
    iput-object p9, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedStateChangedListener:Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;

    .line 283
    iput-object p6, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mParentFragment:Lcom/google/android/finsky/fragments/PageFragment;

    .line 284
    iput-object p7, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mReferrerUrl:Ljava/lang/String;

    .line 285
    iput-object p8, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mReferrerListCookie:Ljava/lang/String;

    .line 286
    return-void
.end method
