.class public Lcom/google/android/googlequicksearchbox/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field private final mCachedStringSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private mCountryDomainOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceIconOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mCachedStringSets:Ljava/util/HashMap;

    .line 102
    return-void
.end method

.method private getBoolean(I)Z
    .locals 1
    .parameter "resId"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private getInteger(I)I
    .locals 1
    .parameter "resId"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private loadResourceStringMap(I)Ljava/util/Map;
    .locals 5
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 131
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, vals:[Ljava/lang/String;
    array-length v3, v2

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 133
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 134
    aget-object v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v2, v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 132
    .end local v0           #i:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 136
    .restart local v0       #i:I
    :cond_1
    return-object v1
.end method

.method private loadResourceStringSet(I)Ljava/util/HashSet;
    .locals 2
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public areShortcutsEnabled()Z
    .locals 1

    .prologue
    .line 614
    const v0, 0x7f0a000b

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public getApplicationsSuggestUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCommitPublishedResultsDelayMillis()J
    .locals 2

    .prologue
    .line 365
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public getCompleteServerClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    const-string v0, "qsb-android"

    return-object v0
.end method

.method public getConcurrentSourceQueries()I
    .locals 1

    .prologue
    .line 224
    const/high16 v0, 0x7f09

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getContext()Lcom/google/android/googlequicksearchbox/QsbContext;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    return-object v0
.end method

.method public getCountryCodeCheckServerUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    const-string v0, "https://www.google.com/searchdomaincheck?format=countrycode"

    return-object v0
.end method

.method public declared-synchronized getCountryDomainOverride(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "countryCode"

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mCountryDomainOverrides:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 218
    const v0, 0x7f0c0010

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->loadResourceStringMap(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mCountryDomainOverrides:Ljava/util/Map;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mCountryDomainOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultNumVisibleSuggestionSlots()I
    .locals 1

    .prologue
    .line 275
    const v0, 0x7f090008

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getDefaultSourcePromotionWeight()I
    .locals 1

    .prologue
    .line 575
    const v0, 0x7f090015

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getDomainCheckServerUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    const-string v0, "https://www.google.com/searchdomaincheck?format=domain"

    return-object v0
.end method

.method public getExperimentIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getFixedSearchDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHelpUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "activity"

    .prologue
    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpConnectTimeout()I
    .locals 1

    .prologue
    .line 409
    const/16 v0, 0x2710

    return v0
.end method

.method public getHttpReadTimeout()I
    .locals 1

    .prologue
    .line 413
    const/16 v0, 0x2710

    return v0
.end method

.method public getLatencyLogFrequency()I
    .locals 1

    .prologue
    .line 340
    const/16 v0, 0x3e8

    return v0
.end method

.method public getManageSearchHistoryUrlFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Config;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxConcurrentSourceQueries()I
    .locals 1

    .prologue
    .line 228
    const v0, 0x7f090001

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxLocalHistoryAgeMillis()J
    .locals 2

    .prologue
    .line 483
    const-wide v0, 0x9a7ec800L

    return-wide v0
.end method

.method public getMaxLocalHistoryForFullWebResults()I
    .locals 1

    .prologue
    .line 510
    const v0, 0x7f09000f

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxLocalHistoryForPartialWebResults()I
    .locals 1

    .prologue
    .line 501
    const v0, 0x7f09000e

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxLocalHistorySuggestions()I
    .locals 1

    .prologue
    .line 492
    const v0, 0x7f09000d

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxNewSourcesNotificationCount()I
    .locals 1

    .prologue
    .line 389
    const v0, 0x7f090011

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxNewSourcesNotificationHours()I
    .locals 1

    .prologue
    .line 393
    const v0, 0x7f090012

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxPromotedSuggestions()I
    .locals 1

    .prologue
    .line 282
    const v0, 0x7f09000a

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxPromotedSummons()I
    .locals 1

    .prologue
    .line 286
    const v0, 0x7f09000b

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxResultsPerSource()I
    .locals 1

    .prologue
    .line 293
    const v0, 0x7f090003

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxSourcePromotionWeight()I
    .locals 1

    .prologue
    .line 591
    const v0, 0x7f090017

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxStatAgeMillis()J
    .locals 2

    .prologue
    .line 323
    const-wide v0, 0x9a7ec800L

    return-wide v0
.end method

.method public getMaxSuggestionsDisplayDelayMillis()I
    .locals 1

    .prologue
    .line 385
    const v0, 0x7f09000c

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxZeroQueryResultsPerSource()I
    .locals 1

    .prologue
    .line 300
    const v0, 0x7f090004

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaximumSuggestionsAboveSummons()I
    .locals 1

    .prologue
    .line 261
    const v0, 0x7f090007

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMinClicksForSourceRanking()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x3

    return v0
.end method

.method public getMinSourcePromotionWeight()I
    .locals 1

    .prologue
    .line 599
    const v0, 0x7f090018

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMinimumSuggestionsAboveSummons()I
    .locals 1

    .prologue
    .line 254
    const v0, 0x7f090006

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMinimumVisibleSummons()I
    .locals 1

    .prologue
    .line 268
    const v0, 0x7f090009

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getNewConcurrentSourceQueryDelay()I
    .locals 1

    .prologue
    .line 232
    const v0, 0x7f090002

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getPublishResultDelayMillis()J
    .locals 2

    .prologue
    .line 356
    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public getQueryThreadPriority()I
    .locals 1

    .prologue
    .line 316
    const/16 v0, 0x9

    return v0
.end method

.method public getRefreshSearchHistoryDelay()J
    .locals 2

    .prologue
    .line 465
    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public getRemoveFromHistoryButtonDisplayDelay()J
    .locals 2

    .prologue
    .line 618
    const v0, 0x7f090019

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getResultLastAccessSecondsLeeway()I
    .locals 1

    .prologue
    .line 397
    const v0, 0x7f090013

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getSearchBoxPageUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowClearQueryButton(Z)Z
    .locals 1
    .parameter "queryEmpty"

    .prologue
    .line 529
    if-eqz p1, :cond_0

    const v0, 0x7f0a0004

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getBoolean(I)Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f0a0003

    goto :goto_0
.end method

.method public getShowGoButton(Z)Z
    .locals 1
    .parameter "queryEmpty"

    .prologue
    .line 539
    if-eqz p1, :cond_0

    const v0, 0x7f0a0008

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getBoolean(I)Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f0a0007

    goto :goto_0
.end method

.method public getShowVoiceSearchButton(Z)Z
    .locals 1
    .parameter "queryEmpty"

    .prologue
    .line 534
    if-eqz p1, :cond_0

    const v0, 0x7f0a0006

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getBoolean(I)Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f0a0005

    goto :goto_0
.end method

.method public declared-synchronized getSourceIconOverride(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "iconUri"

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mSourceIconOverrides:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 211
    const v0, 0x7f0c000b

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->loadResourceStringMap(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mSourceIconOverrides:Ljava/util/Map;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Config;->mSourceIconOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSourcePromotionWeight()I
    .locals 1

    .prologue
    .line 567
    const v0, 0x7f090014

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getSourcePromotionWeightRankAdjustment()I
    .locals 1

    .prologue
    .line 583
    const v0, 0x7f090016

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getSourceTimeoutMillis()J
    .locals 2

    .prologue
    .line 307
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method protected declared-synchronized getStringSet(I)Ljava/util/HashSet;
    .locals 3
    .parameter "resId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Config;->mCachedStringSets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 110
    .local v0, strings:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/Config;->loadResourceStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Config;->mCachedStringSets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-object v0

    .line 109
    .end local v0           #strings:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTypingUpdateSuggestionsDelayMillis()J
    .locals 2

    .prologue
    .line 348
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public getUseGenie()Z
    .locals 1

    .prologue
    .line 421
    const v0, 0x7f0a0002

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    const-string v0, "Android/1.0"

    return-object v0
.end method

.method public getVoiceSearchInstallUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    const-string v0, "market://search?q=pname:com.google.android.voicesearch"

    return-object v0
.end method

.method public getVoiceSearchPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const-string v0, "com.google.android.voicesearch"

    return-object v0
.end method

.method public isDebuggingEnabled()Z
    .locals 1

    .prologue
    .line 603
    const v0, 0x7f0a0009

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isDropBoxLoggingEnabled()Z
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isIgnoredUntilUsedZeroQuerySource(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 3
    .parameter "source"

    .prologue
    .line 176
    monitor-enter p0

    const v2, 0x7f0c0007

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    .line 177
    .local v0, names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const v2, 0x7f0c0008

    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v1

    .line 178
    .local v1, uris:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 176
    .end local v0           #names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #uris:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isNeverShortcutSource(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 2
    .parameter "source"

    .prologue
    .line 183
    monitor-enter p0

    const v0, 0x7f0c0005

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0c0006

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPsuggestAvailable()Z
    .locals 1

    .prologue
    .line 473
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->isHoneycombOrLater()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isSourceEnabledByDefault(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 4
    .parameter "source"

    .prologue
    const/4 v2, 0x1

    .line 143
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, name:Ljava/lang/String;
    const v3, 0x7f0c0001

    invoke-virtual {p0, v3}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 150
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, uri:Ljava/lang/String;
    const v3, 0x7f0c0002

    invoke-virtual {p0, v3}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 157
    const/4 v2, 0x0

    goto :goto_0

    .line 143
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #uri:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isSourceIgnoreIcon1(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 2
    .parameter "source"

    .prologue
    .line 206
    monitor-enter p0

    const v0, 0x7f0c000d

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSourceIgnored(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 2
    .parameter "source"

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, name:Ljava/lang/String;
    const v1, 0x7f0c000e

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 161
    .end local v0           #name:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isSourceShowSingleLine(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 2
    .parameter "source"

    .prologue
    .line 198
    monitor-enter p0

    const v0, 0x7f0c000c

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSourceTrusted(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 2
    .parameter "source"

    .prologue
    .line 189
    monitor-enter p0

    const v0, 0x7f0c0009

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isZeroQuerySource(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 2
    .parameter "source"

    .prologue
    .line 170
    monitor-enter p0

    const v0, 0x7f0c0003

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldAllowWebHistoryFromPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 525
    monitor-enter p0

    const v0, 0x7f0c000f

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldDedupeUserQuery()Z
    .locals 1

    .prologue
    .line 610
    const v0, 0x7f0a000a

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public shouldFilterGoogleDomainPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 622
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldGroupSimilarSuggestions()Z
    .locals 1

    .prologue
    .line 626
    const v0, 0x7f0a000c

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public shouldPreloadOnMobileNetwork()Z
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public shouldPreloadOnWifi()Z
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x1

    return v0
.end method

.method public shouldPreloadWhileRoaming()Z
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public showSuggestionsForZeroQuery()Z
    .locals 1

    .prologue
    .line 377
    const/high16 v0, 0x7f0a

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public showSummonsForZeroQuery()Z
    .locals 1

    .prologue
    .line 381
    const v0, 0x7f0a0001

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/Config;->getBoolean(I)Z

    move-result v0

    return v0
.end method
