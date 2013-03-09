.class public Lcom/google/android/googlequicksearchbox/LastAccessValidator;
.super Ljava/lang/Object;
.source "LastAccessValidator.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mApplicationsSuggestUri:Landroid/net/Uri;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private mLastAccessTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V
    .locals 3
    .parameter "context"
    .parameter "config"
    .parameter "executor"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 59
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 61
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getApplicationsSuggestUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "refresh"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mApplicationsSuggestUri:Landroid/net/Uri;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/LastAccessValidator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->updateStats()V

    return-void
.end method

.method private extractPackageFromAppIntentData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 137
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 139
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    :goto_0
    return-object v1

    .line 141
    :cond_0
    const-string v1, "QSB.LastAccessValidator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cant get package from intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getLastAccessTimeForSource(Lcom/google/android/googlequicksearchbox/Source;)J
    .locals 3
    .parameter "source"

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->waitForLastAccessTimes()V

    .line 148
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, pkg:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mLastAccessTimes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mLastAccessTimes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 154
    .end local v0           #pkg:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setLastAccessTimes(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, lastAccessTimes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 119
    :try_start_0
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mLastAccessTimes:Ljava/util/Map;

    .line 124
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 120
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mLastAccessTimes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mLastAccessTimes:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateStats()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mApplicationsSuggestUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 83
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 84
    invoke-direct {p0, v3}, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->setLastAccessTimes(Ljava/util/Map;)V

    .line 115
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v0, "suggest_intent_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 88
    .local v8, intentDataIndex:I
    const-string v0, "suggest_last_access_hint"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 90
    .local v9, lastAccessTimeIndex:I
    if-ltz v9, :cond_1

    if-gez v8, :cond_2

    .line 91
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->setLastAccessTimes(Ljava/util/Map;)V

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 95
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    .line 97
    .local v12, mostRecentAccessTimeByPackage:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 98
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 99
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->extractPackageFromAppIntentData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 101
    .local v13, pkg:Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 102
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 103
    .local v10, lastResumeTime:J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getResultLastAccessSecondsLeeway()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local v10           #lastResumeTime:J
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 98
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 111
    .end local v13           #pkg:Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 113
    invoke-direct {p0, v12}, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->setLastAccessTimes(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private declared-synchronized waitForLastAccessTimes()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mLastAccessTimes:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 130
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0

    .line 134
    :cond_0
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public hasSourceBeenAccessed(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 4
    .parameter "source"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->getLastAccessTimeForSource(Lcom/google/android/googlequicksearchbox/Source;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLastAccessTimes()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    new-instance v1, Lcom/google/android/googlequicksearchbox/LastAccessValidator$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/LastAccessValidator$1;-><init>(Lcom/google/android/googlequicksearchbox/LastAccessValidator;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    .line 77
    return-void
.end method

.method public validateLastAccessTime(Lcom/google/android/googlequicksearchbox/Suggestion;)J
    .locals 5
    .parameter "suggestion"

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getLastAccessTime()J

    move-result-wide v0

    .line 159
    .local v0, lastAccess:J
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v2

    .line 160
    .local v2, source:Lcom/google/android/googlequicksearchbox/Source;
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Source;->isTrusted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->getLastAccessTimeForSource(Lcom/google/android/googlequicksearchbox/Source;)J

    move-result-wide v3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 163
    :cond_0
    return-wide v0
.end method
