.class public Lcom/google/android/finsky/layout/EpisodeList;
.super Landroid/widget/LinearLayout;
.source "EpisodeList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;
    }
.end annotation


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mBuyButton:Landroid/widget/Button;

.field private final mCorpusColor:I

.field private mCurrentPageUrl:Ljava/lang/String;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mEpisodeIdFromBundle:Ljava/lang/String;

.field private final mEpisodeSnippets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/layout/EpisodeSnippet;",
            ">;"
        }
    .end annotation
.end field

.field private mEpisodesContainer:Landroid/widget/LinearLayout;

.field private mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mLoadingOverlay:Landroid/view/View;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mOldSeason:Lcom/google/android/finsky/api/model/Document;

.field private mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

.field private mReferrerListCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mSeasonIdFromBundle:Ljava/lang/String;

.field private mSeasonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mSeasonSpinner:Landroid/widget/Spinner;

.field private mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

.field private mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mSelectedSeasonRequestUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    .line 120
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mCorpusColor:I

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/EpisodeList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mCorpusColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/EpisodeList;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/EpisodeList;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/EpisodeList;)Lcom/google/android/finsky/fragments/PageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

    return-object v0
.end method

.method private hideUi()V
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 286
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/EpisodeList;->setVisibility(I)V

    goto :goto_0
.end method

.method private setDefaultSelectionState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "selectedSeasonId"
    .parameter "selectedEpisodeId"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iput-object p2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    .line 209
    :cond_1
    return-void
.end method

.method private setEpisodeList(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;)V
    .locals 17
    .parameter "selectedSeason"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, episodeList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 223
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    .line 226
    const/4 v15, 0x0

    .line 227
    .local v15, selectedSnippet:Lcom/google/android/finsky/layout/EpisodeSnippet;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/api/model/Document;

    .line 228
    .local v4, episode:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f04006e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/EpisodeSnippet;

    .line 231
    .local v2, snippet:Lcom/google/android/finsky/layout/EpisodeSnippet;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v14

    .line 233
    .local v14, library:Lcom/google/android/finsky/library/Library;
    invoke-static {v4, v14}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v13

    .line 234
    .local v13, isOwned:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    .line 235
    .local v16, wasOwned:Z
    if-eqz v13, :cond_2

    if-nez v16, :cond_2

    const/4 v7, 0x1

    .line 237
    .local v7, isNewPurchase:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/layout/EpisodeList;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/layout/EpisodeList;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/layout/EpisodeList;->mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/layout/EpisodeList;->mReferrerUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/layout/EpisodeList;->mReferrerListCookie:Ljava/lang/String;

    move-object/from16 v11, p0

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setEpisodeDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/fragments/PageFragment;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    move-object v15, v2

    goto/16 :goto_0

    .line 235
    .end local v7           #isNewPurchase:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 245
    .end local v2           #snippet:Lcom/google/android/finsky/layout/EpisodeSnippet;
    .end local v4           #episode:Lcom/google/android/finsky/api/model/Document;
    .end local v13           #isOwned:Z
    .end local v14           #library:Lcom/google/android/finsky/library/Library;
    .end local v16           #wasOwned:Z
    :cond_3
    if-eqz v15, :cond_4

    .line 246
    invoke-virtual {v15}, Lcom/google/android/finsky/layout/EpisodeSnippet;->expand()V

    .line 248
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->isInProgressSeason()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04008c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    .line 258
    return-void
.end method

.method private shouldEnableLoadingOverlay(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 497
    if-eqz p1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/EpisodeList$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/EpisodeList$2;-><init>(Lcom/google/android/finsky/layout/EpisodeList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateSeasonBuyButton()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getExperiments()Lcom/google/android/finsky/experiments/Experiments;

    move-result-object v0

    const-string v1, "cl:billing.show_tv_season_price_in_button"

    invoke-interface {v0, v1}, Lcom/google/android/finsky/experiments/Experiments;->isEnabled(Ljava/lang/String;)Z

    move-result v8

    .line 417
    .local v8, showPriceInButton:Z
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mBuyButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    if-eqz v8, :cond_0

    const/4 v6, -0x1

    :goto_0
    const/4 v7, 0x0

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/layout/EpisodeSnippet;->updateBuyButtonState(Landroid/content/res/Resources;Landroid/widget/Button;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZ)V

    .line 419
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mBuyButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/finsky/layout/EpisodeList$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/EpisodeList$1;-><init>(Lcom/google/android/finsky/layout/EpisodeList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    return-void

    .line 417
    :cond_0
    const v6, 0x7f070240

    goto :goto_0
.end method


# virtual methods
.method public getSelectedEpisodeId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/EpisodeSnippet;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/EpisodeSnippet;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectedSeasonId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAllLibrariesLoaded()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public onCollapsedStateChanged(Lcom/google/android/finsky/layout/EpisodeSnippet;Z)V
    .locals 3
    .parameter "snippet"
    .parameter "collapsed"

    .prologue
    .line 346
    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/EpisodeSnippet;

    .line 347
    .local v0, current:Lcom/google/android/finsky/layout/EpisodeSnippet;
    if-eq v0, p1, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->collapseWithoutNotifyingListeners()V

    goto :goto_0

    .line 351
    .end local v0           #current:Lcom/google/android/finsky/layout/EpisodeSnippet;
    :cond_1
    return-void
.end method

.method public onDataChanged()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 461
    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, listCookie:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/EpisodeList;->mReferrerUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/finsky/layout/EpisodeList;->mReferrerListCookie:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequestUrl:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9, v4}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/EpisodeList;->mCurrentPageUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequestUrl:Ljava/lang/String;

    invoke-virtual {v6, v7, v4, v8}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/EpisodeList;->shouldEnableLoadingOverlay(Z)V

    .line 468
    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 470
    .local v2, firstTimeThroughForSeasonId:Z
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 473
    .local v5, ownedDocumentsFromLibrary:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 474
    .local v1, episodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 475
    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6, v3}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 476
    .local v0, episode:Lcom/google/android/finsky/api/model/Document;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v0, v6}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 478
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 461
    .end local v0           #episode:Lcom/google/android/finsky/api/model/Document;
    .end local v1           #episodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v2           #firstTimeThroughForSeasonId:Z
    .end local v3           #i:I
    .end local v4           #listCookie:Ljava/lang/String;
    .end local v5           #ownedDocumentsFromLibrary:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 485
    .restart local v1       #episodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .restart local v2       #firstTimeThroughForSeasonId:Z
    .restart local v3       #i:I
    .restart local v4       #listCookie:Ljava/lang/String;
    .restart local v5       #ownedDocumentsFromLibrary:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    if-eqz v2, :cond_5

    .line 486
    new-instance v6, Landroid/util/Pair;

    iget-object v7, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    .line 489
    :cond_5
    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v6, v1}, Lcom/google/android/finsky/layout/EpisodeList;->setEpisodeList(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;)V

    .line 490
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 139
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 140
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 141
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "error"

    .prologue
    const/4 v3, 0x0

    .line 446
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/EpisodeList;->shouldEnableLoadingOverlay(Z)V

    .line 448
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    if-eq v0, v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    .line 452
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 457
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 126
    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    .line 127
    const v0, 0x7f08011a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    .line 128
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    .line 393
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    .line 395
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonBuyButton()V

    .line 397
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/EpisodeList;->shouldEnableLoadingOverlay(Z)V

    .line 400
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 402
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 406
    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 408
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 409
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 410
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 411
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequestUrl:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 1
    .parameter "library"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonBuyButton()V

    .line 439
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->onDataChanged()V

    .line 441
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 375
    const-string v1, "SeasonListViewBinder.SelectedSeasonId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    const-string v1, "SeasonListViewBinder.SelectedSeasonId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    .line 378
    :cond_0
    const-string v1, "SeasonListViewBinder.SelectedEpisodeId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    const-string v1, "SeasonListViewBinder.SelectedEpisodeId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    .line 381
    :cond_1
    const-string v1, "SeasonListViewBinder.OwnedEpisodes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 382
    .local v0, ownedEpisodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 383
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    .line 386
    :cond_2
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getSelectedSeasonId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    const-string v1, "SeasonListViewBinder.SelectedSeasonId"

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getSelectedSeasonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getSelectedEpisodeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 361
    const-string v1, "SeasonListViewBinder.SelectedEpisodeId"

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getSelectedEpisodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    .line 366
    .local v0, docs:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "SeasonListViewBinder.OwnedEpisodes"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 369
    .end local v0           #docs:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public setSeasonList(Lcom/google/android/finsky/fragments/PageFragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "parentFragment"
    .parameter "dfeApi"
    .parameter "libraries"
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "restoreBundle"
    .parameter
    .parameter "selectedSeasonId"
    .parameter "selectedEpisodeId"
    .parameter "referrerUrl"
    .parameter "referrerListCookie"
    .parameter "currentPageUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/fragments/PageFragment;",
            "Lcom/google/android/finsky/api/DfeApi;",
            "Lcom/google/android/finsky/library/Libraries;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p7, seasonList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    if-eqz p7, :cond_0

    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->hideUi()V

    .line 195
    :goto_0
    return-void

    .line 157
    :cond_1
    iput-object p7, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    .line 158
    iput-object p3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 159
    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

    .line 160
    iput-object p2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 161
    iput-object p4, p0, Lcom/google/android/finsky/layout/EpisodeList;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 162
    iput-object p5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 163
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mReferrerUrl:Ljava/lang/String;

    .line 164
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mReferrerListCookie:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mCurrentPageUrl:Ljava/lang/String;

    .line 167
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 168
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 170
    move-object/from16 v0, p9

    invoke-direct {p0, p8, v0}, Lcom/google/android/finsky/layout/EpisodeList;->setDefaultSelectionState(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const v3, 0x7f080118

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/EpisodeList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    .line 173
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;-><init>(Lcom/google/android/finsky/layout/EpisodeList;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 174
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 177
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    iput-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    .line 178
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 179
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    .line 180
    .local v2, season:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    iput-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    goto :goto_1

    .line 186
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #season:Lcom/google/android/finsky/api/model/Document;
    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 187
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 188
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 189
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 193
    :cond_4
    const v3, 0x7f0800b1

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/EpisodeList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mBuyButton:Landroid/widget/Button;

    .line 194
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonBuyButton()V

    goto/16 :goto_0
.end method
