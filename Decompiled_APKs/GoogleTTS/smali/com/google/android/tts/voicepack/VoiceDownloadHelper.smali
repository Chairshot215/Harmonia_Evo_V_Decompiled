.class public Lcom/google/android/tts/voicepack/VoiceDownloadHelper;
.super Ljava/lang/Object;
.source "VoiceDownloadHelper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;
    }
.end annotation


# instance fields
.field private mActiveDownloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mConfig:Lcom/google/android/tts/TtsConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDatasetObservable:Landroid/database/DataSetObservable;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private mDownloadManager:Landroid/app/DownloadManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/tts/TtsConfig;)V
    .locals 1
    .parameter "ctx"
    .parameter "config"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mConfig:Lcom/google/android/tts/TtsConfig;

    .line 68
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mConfig:Lcom/google/android/tts/TtsConfig;

    invoke-interface {v0, p0}, Lcom/google/android/tts/TtsConfig;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 69
    invoke-interface {p2}, Lcom/google/android/tts/TtsConfig;->getActiveDownloads()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mActiveDownloads:Ljava/util/Map;

    .line 70
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mDatasetObservable:Landroid/database/DataSetObservable;

    .line 71
    return-void
.end method

.method private buildDownloadRequest(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Landroid/app/DownloadManager$Request;
    .locals 7
    .parameter "voice"

    .prologue
    const/4 v6, 0x0

    .line 207
    :try_start_0
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .local v1, request:Landroid/app/DownloadManager$Request;
    invoke-virtual {v1, v6}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 219
    invoke-virtual {v1, v6}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 221
    iget-object v2, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f060011

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/tts/voicepack/MetadataManager;->getDisplayString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 223
    iget-object v2, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 224
    iget-object v2, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mContext:Landroid/content/Context;

    const-string v3, "download_cache"

    invoke-static {p1}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->formatDownloadFilename(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 227
    .end local v1           #request:Landroid/app/DownloadManager$Request;
    :goto_0
    return-object v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    const-string v2, "TTS.VoiceDownloadHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid download URI in metadata: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cancelDownload(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;Z)V
    .locals 7
    .parameter "data"
    .parameter "updateActiveSet"
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->ensureDownloadManager()V

    .line 178
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->getActiveDownloadsMap()Ljava/util/Map;

    move-result-object v0

    .line 180
    .local v0, active:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v3, v1, [J

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    .line 185
    if-eqz p2, :cond_0

    .line 186
    iget-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mActiveDownloads:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mConfig:Lcom/google/android/tts/TtsConfig;

    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/tts/TtsConfig;->removeActiveDownload(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ensureDownloadManager()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mDownloadManager:Landroid/app/DownloadManager;

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mDownloadManager:Landroid/app/DownloadManager;

    .line 235
    :cond_0
    return-void
.end method

.method private static formatDownloadFilename(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Ljava/lang/String;
    .locals 2
    .parameter "voice"

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getRevision()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getActiveDownloadsMap()Ljava/util/Map;
    .locals 1
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
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mActiveDownloads:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLocaleForActiveDownload(J)Ljava/lang/String;
    .locals 6
    .parameter "downloadId"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->getActiveDownloadsMap()Ljava/util/Map;

    move-result-object v0

    .line 194
    .local v0, active:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, locale:Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    .end local v2           #locale:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 200
    :cond_1
    const-string v3, "TTS.VoiceDownloadHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download ID not found in active set :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancelDownload(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 122
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->cancelDownload(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enqueueDownload(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;Z)V
    .locals 7
    .parameter "data"
    .parameter "cancelExisting"

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->ensureDownloadManager()V

    .line 91
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->getActiveDownloadsMap()Ljava/util/Map;

    move-result-object v0

    .line 98
    .local v0, active:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v3, 0x1

    .line 99
    .local v3, shouldUpdateSharedPrefs:Z
    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    if-eqz p2, :cond_1

    .line 101
    const-string v4, "TTS.VoiceDownloadHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download already active, will be removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->cancelDownload(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;Z)V

    .line 104
    const/4 v3, 0x0

    .line 113
    :cond_0
    iget-object v4, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-direct {p0, p1}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->buildDownloadRequest(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v1

    .line 114
    .local v1, downloadId:J
    iget-object v4, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mActiveDownloads:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    if-eqz v3, :cond_1

    .line 117
    iget-object v4, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mConfig:Lcom/google/android/tts/TtsConfig;

    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1, v2}, Lcom/google/android/tts/TtsConfig;->addActiveDownload(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v1           #downloadId:J
    :cond_1
    monitor-exit p0

    return-void

    .line 89
    .end local v0           #active:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3           #shouldUpdateSharedPrefs:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDownloadInfo(J)Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;
    .locals 7
    .parameter "downloadId"

    .prologue
    const/4 v6, 0x1

    .line 132
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->ensureDownloadManager()V

    .line 134
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 135
    .local v3, query:Landroid/app/DownloadManager$Query;
    new-array v4, v6, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 139
    .local v1, info:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;
    :try_start_0
    iget-object v4, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v4, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 142
    const-string v4, "TTS.VoiceDownloadHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Querying download manager failed for ID :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    const/4 v2, 0x0

    .line 161
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_0
    :goto_0
    return-object v2

    .line 146
    :cond_1
    :try_start_1
    new-instance v2, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;

    invoke-direct {v2}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v1           #info:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;
    .local v2, info:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;
    :try_start_2
    iput-wide p1, v2, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mDownloadId:J

    .line 148
    const-string v4, "status"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mStatus:I

    .line 150
    const-string v4, "local_filename"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mFileName:Ljava/lang/String;

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->getLocaleForActiveDownload(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mDownloadLocale:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v1, v2

    .line 164
    .end local v2           #info:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;
    .restart local v1       #info:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;
    goto :goto_0

    .line 161
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4

    .end local v1           #info:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;
    .restart local v2       #info:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #info:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;
    .restart local v1       #info:Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;
    goto :goto_1
.end method

.method public isActiveDownload(Ljava/lang/String;)Z
    .locals 1
    .parameter "locale"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->getActiveDownloadsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized markCompleted(Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mActiveDownloads:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mDownloadLocale:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mConfig:Lcom/google/android/tts/TtsConfig;

    iget-object v1, p1, Lcom/google/android/tts/voicepack/VoiceDownloadHelper$DownloadInfo;->mDownloadLocale:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/tts/TtsConfig;->removeActiveDownload(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mConfig:Lcom/google/android/tts/TtsConfig;

    invoke-interface {v0, p0}, Lcom/google/android/tts/TtsConfig;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mDatasetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->unregisterAll()V

    .line 76
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 248
    const-string v0, "ACTIVE_DOWNLOADS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mDatasetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 256
    return-void
.end method

.method public registerDownloadSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mDatasetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public unregisterDownloadSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->mDatasetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 173
    return-void
.end method
