.class public Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;
.super Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;
.source "WebSuggestSourceWithLocalHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;
    }
.end annotation


# instance fields
.field private final mClock:Lcom/google/android/googlequicksearchbox/Clock;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private mHistoryObserver:Landroid/database/DataSetObserver;

.field private final mRepo:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

.field private final mSearchHistoryChangedObservable:Landroid/database/DataSetObservable;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private mZeroQuerySuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;Lcom/google/android/googlequicksearchbox/Clock;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Landroid/database/DataSetObservable;)V
    .locals 2
    .parameter "wrapped"
    .parameter "repository"
    .parameter "clock"
    .parameter "config"
    .parameter "settings"
    .parameter "searchHistoryChangedObservable"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;-><init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;)V

    .line 58
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mRepo:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    .line 59
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    .line 60
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 61
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 62
    iput-object p6, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mSearchHistoryChangedObservable:Landroid/database/DataSetObservable;

    .line 64
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$1;-><init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mHistoryObserver:Landroid/database/DataSetObserver;

    .line 70
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->fetchZeroQuerySuggestions()V

    .line 72
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mRepo:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mHistoryObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->fetchZeroQuerySuggestions()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->setZeroQuerySuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    return-void
.end method

.method private fetchZeroQuerySuggestions()V
    .locals 4

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->setZeroQuerySuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mRepo:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    const-string v1, ""

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMaxLocalHistorySuggestions()I

    move-result v2

    new-instance v3, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$2;

    invoke-direct {v3, p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$2;-><init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->getLocalHistory(Ljava/lang/String;ILcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 119
    return-void
.end method

.method private getLatency(Lcom/google/android/googlequicksearchbox/SuggestionList;)I
    .locals 1
    .parameter "list"

    .prologue
    .line 131
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getLatency()I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized isZeroQueryEmpty()Z
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mZeroQuerySuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mZeroQuerySuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setZeroQuerySuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mZeroQuerySuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 123
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mSearchHistoryChangedObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldUseLocalHistory()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldUseLocalWebHistory()Z

    move-result v0

    return v0
.end method


# virtual methods
.method addAtMost(ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 2
    .parameter "max"
    .parameter "to"
    .parameter "from"

    .prologue
    .line 168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 169
    invoke-interface {p3, v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method blendResults(Lcom/google/android/googlequicksearchbox/SuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 3
    .parameter "history"
    .parameter "web"
    .parameter "query"

    .prologue
    .line 137
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v0, blended:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->getLatency(Lcom/google/android/googlequicksearchbox/SuggestionList;)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->getLatency(Lcom/google/android/googlequicksearchbox/SuggestionList;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->setLatency(I)V

    .line 140
    if-eqz p1, :cond_1

    .line 141
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 143
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->addAll(Ljava/lang/Iterable;)I

    .line 158
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 160
    invoke-interface {v0, p2}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->addAll(Ljava/lang/Iterable;)I

    .line 163
    :cond_2
    return-object v0

    .line 144
    :cond_3
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMaxLocalHistoryForPartialWebResults()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 150
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getMaxLocalHistoryForPartialWebResults()I

    move-result v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->addAtMost(ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    goto :goto_0

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getMaxLocalHistoryForFullWebResults()I

    move-result v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->addAtMost(ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mRepo:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mHistoryObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 78
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->close()V

    .line 79
    return-void
.end method

.method public getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "query"

    .prologue
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mZeroQuerySuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    monitor-exit p0

    .line 88
    :goto_0
    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 3
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->shouldUseLocalHistory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, combined:Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mRepo:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMaxLocalHistorySuggestions()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->getLocalHistory(Ljava/lang/String;ILcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 98
    invoke-super {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 102
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->await()Z

    .line 103
    iget-object v1, v0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mHistorySuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    iget-object v2, v0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;->mWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->blendResults(Lcom/google/android/googlequicksearchbox/SuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 108
    .end local v0           #combined:Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$CombinedConsumer;
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    goto :goto_0
.end method

.method public isLikelyToReturnZeroQueryResults()Z
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->shouldUseLocalHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->isZeroQueryEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->isLikelyToReturnZeroQueryResults()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logClick(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "extraData"
    .parameter "query"
    .parameter "trafficTagFlags"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->shouldUseLocalHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mRepo:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p2, v1, v2}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->insertLocalHistory(Ljava/lang/String;J)V

    .line 185
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->logClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    return-void
.end method

.method public removeFromHistory(Ljava/lang/String;)Z
    .locals 2
    .parameter "query"

    .prologue
    const/4 v0, 0x1

    .line 190
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->shouldUseLocalHistory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->mRepo:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    invoke-interface {v1, p1, v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->deleteLocalHistoryItem(Ljava/lang/String;Z)V

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->removeFromHistory(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
