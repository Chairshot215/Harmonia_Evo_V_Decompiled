.class public Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;
.super Ljava/lang/Object;
.source "BucketingClickLog.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;


# instance fields
.field private final mClicks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/util/ExpiringSum;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/google/android/googlequicksearchbox/Clock;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private mFlushPending:Z

.field private final mFlushSettingsTask:Lcom/google/android/googlequicksearchbox/util/NamedTask;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Clock;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V
    .locals 12
    .parameter "sources"
    .parameter "config"
    .parameter "settings"
    .parameter "clock"
    .parameter "executor"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 62
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 63
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    .line 64
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 66
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mClicks:Ljava/util/Map;

    .line 68
    new-instance v1, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog$1;-><init>(Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mFlushSettingsTask:Lcom/google/android/googlequicksearchbox/util/NamedTask;

    .line 81
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Sources;->getSources()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/googlequicksearchbox/Source;

    .line 82
    .local v9, source:Lcom/google/android/googlequicksearchbox/Source;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v9}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getSourceClickStats(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, stats:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v10, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mClicks:Ljava/util/Map;

    invoke-interface {v9}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/Config;->getMaxStatAgeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xa4cb800

    invoke-direct/range {v1 .. v7}, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;-><init>(Lcom/google/android/googlequicksearchbox/Clock;JJLjava/lang/String;)V

    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    .end local v7           #stats:Ljava/lang/String;
    .end local v9           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->flushSettings()V

    return-void
.end method

.method private declared-synchronized flushSettings()V
    .locals 5

    .prologue
    .line 150
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mFlushPending:Z

    .line 151
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mClicks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/ExpiringSum;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->getJsonIfChanged()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, json:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 154
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3, v2}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setSourceClickStats(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/ExpiringSum;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #json:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 157
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private scheduleFlushSettings()V
    .locals 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mFlushPending:Z

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mFlushPending:Z

    .line 145
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mFlushSettingsTask:Lcom/google/android/googlequicksearchbox/util/NamedTask;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public clearHistory()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->flushSettings()V

    .line 105
    return-void
.end method

.method public getSourceScores(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 110
    .local v3, res:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mClicks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/ExpiringSum;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->get()I

    move-result v0

    .line 114
    .local v0, clicks:I
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Config;->getMinClicksForSourceRanking()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    .end local v0           #clicks:I
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/ExpiringSum;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-interface {p1, v3}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public hasHistory(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public reportClick(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 4
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    .line 126
    .local v0, source:Lcom/google/android/googlequicksearchbox/Source;
    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->reportClickAtTime(Ljava/lang/String;J)V

    .line 129
    :cond_0
    return-void
.end method

.method public declared-synchronized reportClickAtTime(Ljava/lang/String;J)V
    .locals 6
    .parameter "sourceName"
    .parameter "time"

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mClicks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;

    .line 133
    .local v0, sum:Lcom/google/android/googlequicksearchbox/util/ExpiringSum;
    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;

    .end local v0           #sum:Lcom/google/android/googlequicksearchbox/util/ExpiringSum;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMaxStatAgeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb800

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;-><init>(Lcom/google/android/googlequicksearchbox/Clock;JJ)V

    .line 136
    .restart local v0       #sum:Lcom/google/android/googlequicksearchbox/util/ExpiringSum;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->mClicks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/google/android/googlequicksearchbox/util/ExpiringSum;->incrementAtTime(J)V

    .line 139
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->scheduleFlushSettings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 132
    .end local v0           #sum:Lcom/google/android/googlequicksearchbox/util/ExpiringSum;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
