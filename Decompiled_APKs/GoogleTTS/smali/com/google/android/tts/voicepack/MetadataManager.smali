.class public Lcom/google/android/tts/voicepack/MetadataManager;
.super Ljava/lang/Object;
.source "MetadataManager.java"


# instance fields
.field private final mConfig:Lcom/google/android/tts/TtsConfig;

.field private final mContext:Landroid/content/Context;

.field private final mFetchUrl:Ljava/lang/String;

.field private mMetadataList:Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mUpdateRunning:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mUrlRewriter:Lcom/google/android/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/tts/TtsConfig;Lcom/google/android/common/base/Function;)V
    .locals 6
    .parameter "ctx"
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/tts/TtsConfig;",
            "Lcom/google/android/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, urlRewriter:Lcom/google/android/common/base/Function;,"Lcom/google/android/common/base/Function<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mConfig:Lcom/google/android/tts/TtsConfig;

    .line 55
    const v0, 0x7f060001

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mFetchUrl:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mUrlRewriter:Lcom/google/android/common/base/Function;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mMetadataList:Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mUpdateRunning:Z

    .line 61
    new-instance v0, Lcom/google/android/tts/voicepack/MetadataFetchTask;

    iget-object v1, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mFetchUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mConfig:Lcom/google/android/tts/TtsConfig;

    iget-object v5, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mUrlRewriter:Lcom/google/android/common/base/Function;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/tts/voicepack/MetadataFetchTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/tts/voicepack/MetadataManager;Lcom/google/android/tts/TtsConfig;Lcom/google/android/common/base/Function;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/tts/voicepack/MetadataFetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method

.method static emptyMetadataList()Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    invoke-direct {v0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;-><init>()V

    .line 223
    .local v0, list:Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->setRevision(I)Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    .line 224
    invoke-virtual {v0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->clearData()Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    .line 225
    return-object v0
.end method

.method private static formatMetadataLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "language"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "country"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDisplayString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "localeStr"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 201
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, localeComponents:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 204
    .local v0, locale:Ljava/util/Locale;
    array-length v2, v1

    if-ne v2, v5, :cond_1

    .line 205
    new-instance v0, Ljava/util/Locale;

    .end local v0           #locale:Ljava/util/Locale;
    aget-object v2, v1, v4

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v0       #locale:Ljava/util/Locale;
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 214
    const-string v2, "TTS.MetadataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local p0
    :goto_1
    return-object p0

    .line 206
    .restart local p0
    :cond_1
    array-length v2, v1

    if-ne v2, v6, :cond_2

    .line 207
    new-instance v0, Ljava/util/Locale;

    .end local v0           #locale:Ljava/util/Locale;
    aget-object v2, v1, v4

    aget-object v3, v1, v5

    invoke-direct {v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #locale:Ljava/util/Locale;
    goto :goto_0

    .line 208
    :cond_2
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 209
    new-instance v0, Ljava/util/Locale;

    .end local v0           #locale:Ljava/util/Locale;
    aget-object v2, v1, v4

    aget-object v3, v1, v5

    aget-object v4, v1, v6

    invoke-direct {v0, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #locale:Ljava/util/Locale;
    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method private declared-synchronized getMetadataList()Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 111
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mMetadataList:Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 119
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "TTS.MetadataManager"

    const-string v2, "Interrupted waiting for metadata list fetch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 111
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 125
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mMetadataList:Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method


# virtual methods
.method public declared-synchronized forceEvictionAndUpdate()V
    .locals 6

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mUpdateRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mUpdateRunning:Z

    .line 80
    new-instance v0, Lcom/google/android/tts/voicepack/MetadataFetchTask;

    iget-object v1, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mFetchUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mConfig:Lcom/google/android/tts/TtsConfig;

    iget-object v5, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mUrlRewriter:Lcom/google/android/common/base/Function;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/tts/voicepack/MetadataFetchTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/tts/voicepack/MetadataManager;Lcom/google/android/tts/TtsConfig;Lcom/google/android/common/base/Function;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/tts/voicepack/MetadataFetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDownloadableLocales()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/MetadataManager;->getMetadataList()Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    move-result-object v1

    .line 85
    .local v1, list:Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 86
    .local v2, serverLocales:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->getDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    .line 87
    .local v3, voice:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    invoke-virtual {v3}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v3           #voice:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    :cond_0
    return-object v2
.end method

.method public getMetadataFor(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    .locals 5
    .parameter "language"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "country"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/MetadataManager;->getMetadataList()Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    move-result-object v2

    .line 99
    .local v2, list:Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    invoke-static {p1, p2}, Lcom/google/android/tts/voicepack/MetadataManager;->formatMetadataLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, locale:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->getDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    .line 102
    .local v0, data:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    invoke-virtual {v0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    .end local v0           #data:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/MetadataManager;->getMetadataList()Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->getDataList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized markUpdateComplete()V
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mUpdateRunning:Z

    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkState(Z)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mUpdateRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method readCachedMetadata()Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    .locals 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 146
    .local v1, fileBytes:[B
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "metadata.proto"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 155
    :goto_0
    if-nez v1, :cond_0

    .line 157
    :try_start_1
    iget-object v3, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "metadata.proto"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 167
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 169
    :try_start_2
    invoke-static {v1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->parseFrom([B)Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;
    :try_end_2
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 176
    :goto_2
    return-object v3

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, ioe:Ljava/io/IOException;
    const-string v3, "TTS.MetadataManager"

    const-string v4, "Error reading bundled metadata."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 170
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v3, "TTS.MetadataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing cached metadata: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v0           #e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_1
    invoke-static {}, Lcom/google/android/tts/voicepack/MetadataManager;->emptyMetadataList()Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    move-result-object v3

    goto :goto_2

    .line 149
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method declared-synchronized setMetadataList(Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mMetadataList:Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;

    .line 130
    iget-boolean v0, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mUpdateRunning:Z

    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkState(Z)V

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method writeCachedMetadata(Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;)Z
    .locals 5
    .parameter "metadata"

    .prologue
    .line 180
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/tts/voicepack/MetadataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "metadata.proto"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    .local v1, metaDataCache:Ljava/io/File;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$MetadataList;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/common/io/Files;->write([BLjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TTS.MetadataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error updating cached metadata : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v2, 0x0

    goto :goto_0
.end method
