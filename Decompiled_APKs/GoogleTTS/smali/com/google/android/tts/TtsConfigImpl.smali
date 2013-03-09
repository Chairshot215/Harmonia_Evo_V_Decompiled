.class public Lcom/google/android/tts/TtsConfigImpl;
.super Ljava/lang/Object;
.source "TtsConfigImpl.java"

# interfaces
.implements Lcom/google/android/tts/TtsConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/tts/TtsConfigImpl$GservicesKeys;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private mGservicesCache:Ljava/util/Map;
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

.field private final mGservicesReceiver:Landroid/content/BroadcastReceiver;

.field private final mPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mUpdateExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v1, Lcom/google/android/tts/TtsConfigImpl$2;

    invoke-direct {v1, p0}, Lcom/google/android/tts/TtsConfigImpl$2;-><init>(Lcom/google/android/tts/TtsConfigImpl;)V

    iput-object v1, p0, Lcom/google/android/tts/TtsConfigImpl;->mGservicesReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/google/android/tts/TtsConfigImpl;->mContext:Landroid/content/Context;

    .line 64
    const-string v1, "GoogleTtsSettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/tts/TtsConfigImpl;->mPreferences:Landroid/content/SharedPreferences;

    .line 65
    iget-object v1, p0, Lcom/google/android/tts/TtsConfigImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/google/android/tts/TtsConfigImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/tts/TtsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/tts/TtsConfigImpl;->mGservicesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/tts/TtsConfigImpl;->mUpdateExecutor:Ljava/util/concurrent/ExecutorService;

    .line 73
    iget-object v1, p0, Lcom/google/android/tts/TtsConfigImpl;->mUpdateExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/tts/TtsConfigImpl$1;

    invoke-direct {v2, p0}, Lcom/google/android/tts/TtsConfigImpl$1;-><init>(Lcom/google/android/tts/TtsConfigImpl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/tts/TtsConfigImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/tts/TtsConfigImpl;->updateCache()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/tts/TtsConfigImpl;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/tts/TtsConfigImpl;->mUpdateExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private declared-synchronized getCache()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/tts/TtsConfigImpl;->mGservicesCache:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 271
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "TtsConfig"

    const-string v2, "Interrupted while waiting for Gservices cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 269
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 276
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/google/android/tts/TtsConfigImpl;->mGservicesCache:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/google/android/tts/TtsConfigImpl;->getCache()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 255
    .end local p2
    :goto_0
    return p2

    .line 248
    .restart local p2
    :cond_0
    move v1, p2

    .line 250
    .local v1, valueInt:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move p2, v1

    .line 255
    goto :goto_0

    .line 251
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/google/android/tts/TtsConfigImpl;->getCache()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 224
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method private updateCache()V
    .locals 5

    .prologue
    .line 259
    iget-object v1, p0, Lcom/google/android/tts/TtsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "googletts:"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 262
    .local v0, cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 263
    :try_start_0
    iput-object v0, p0, Lcom/google/android/tts/TtsConfigImpl;->mGservicesCache:Ljava/util/Map;

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 265
    monitor-exit p0

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private writeMapAsPrefString(Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "prefKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 196
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 197
    .local v2, first:Z
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 198
    .local v4, key:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 199
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    const/4 v2, 0x0

    goto :goto_0

    .line 207
    .end local v4           #key:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/google/android/tts/TtsConfigImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 208
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, p2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    return-void
.end method


# virtual methods
.method public addActiveDownload(Ljava/lang/String;J)V
    .locals 4
    .parameter "voice"
    .parameter "downloadId"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/android/tts/TtsConfigImpl;->getActiveDownloads()Ljava/util/Map;

    move-result-object v0

    .line 157
    .local v0, active:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to add download :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", was already active."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "ACTIVE_DOWNLOADS"

    invoke-direct {p0, v0, v1}, Lcom/google/android/tts/TtsConfigImpl;->writeMapAsPrefString(Ljava/util/Map;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public getActiveDownloads()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 129
    iget-object v9, p0, Lcom/google/android/tts/TtsConfigImpl;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "ACTIVE_DOWNLOADS"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, active:Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, values:[Ljava/lang/String;
    array-length v9, v8

    if-lez v9, :cond_2

    .line 132
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v7, valueSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v6, v1, v3

    .line 134
    .local v6, value:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 133
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :cond_0
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, kvpair:[Ljava/lang/String;
    array-length v9, v4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 142
    const-string v9, "TtsConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping bad value in active downloads setting pref :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    :cond_1
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 146
    .local v2, downloadId:Ljava/lang/Long;
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-interface {v7, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 150
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #downloadId:Ljava/lang/Long;
    .end local v3           #i$:I
    .end local v4           #kvpair:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #valueSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :cond_3
    return-object v7
.end method

.method public getConfigValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "resourceId"
    .end parameter
    .parameter "defaultStr"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/tts/TtsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTimeoutNetworkFirst()I
    .locals 2

    .prologue
    .line 92
    const-string v0, "googletts:timeout_network_first"

    const/16 v1, 0xbb8

    invoke-direct {p0, v0, v1}, Lcom/google/android/tts/TtsConfigImpl;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultTimeoutNetworkOnly()I
    .locals 2

    .prologue
    .line 98
    const-string v0, "googletts:timeout_network_only"

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/google/android/tts/TtsConfigImpl;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMetadataUpdateFrequencyMs()I
    .locals 2

    .prologue
    .line 110
    const-string v0, "googletts:metadata_update_frequency_ms"

    const v1, 0x127500

    invoke-direct {p0, v0, v1}, Lcom/google/android/tts/TtsConfigImpl;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMetadataUpdateTime()J
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/tts/TtsConfigImpl;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "METADATA_UPDATE_TIME_MS"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProjectFileVariant()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 104
    const-string v0, "googletts:project_file_variant"

    const/high16 v1, 0x7f06

    const-string v2, "project_hq"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/tts/TtsConfigImpl;->getConfigValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/tts/TtsConfigImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFlintEnabled()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/tts/TtsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/tts/TtsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/tts/TtsConfigImpl;->mGservicesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/tts/TtsConfigImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 180
    return-void
.end method

.method public removeActiveDownload(Ljava/lang/String;)V
    .locals 4
    .parameter "voice"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/android/tts/TtsConfigImpl;->getActiveDownloads()Ljava/util/Map;

    move-result-object v0

    .line 168
    .local v0, active:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to remove non-existent download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "ACTIVE_DOWNLOADS"

    invoke-direct {p0, v0, v1}, Lcom/google/android/tts/TtsConfigImpl;->writeMapAsPrefString(Ljava/util/Map;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public setMetadataUpdateTime(J)V
    .locals 2
    .parameter "timeMs"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/google/android/tts/TtsConfigImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "METADATA_UPDATE_TIME_MS"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/tts/TtsConfigImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 186
    return-void
.end method
