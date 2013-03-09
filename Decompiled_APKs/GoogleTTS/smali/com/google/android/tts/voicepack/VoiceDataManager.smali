.class public Lcom/google/android/tts/voicepack/VoiceDataManager;
.super Ljava/lang/Object;
.source "VoiceDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;
    }
.end annotation


# static fields
.field private static final PICO_DATA_FILE_MAP:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailablePicoLangs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHasDownloadedLocales:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mPicoDataDir:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 35
    .local v0, mapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v1, "deu-deu"

    const-string v2, "de-DE_gl0_sg.bin"

    const-string v3, "de-DE_ta.bin"

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 38
    const-string v1, "spa-esp"

    const-string v2, "es-ES_ta.bin"

    const-string v3, "es-ES_zl0_sg.bin"

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 41
    const-string v1, "fra-fra"

    const-string v2, "fr-FR_nk0_sg.bin"

    const-string v3, "fr-FR_ta.bin"

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 44
    const-string v1, "ita-ita"

    const-string v2, "it-IT_cm0_sg.bin"

    const-string v3, "it-IT_ta.bin"

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 47
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    sput-object v1, Lcom/google/android/tts/voicepack/VoiceDataManager;->PICO_DATA_FILE_MAP:Lcom/google/common/collect/ImmutableMap;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mContext:Landroid/content/Context;

    const-string v1, "lang_pico"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mPicoDataDir:Ljava/io/File;

    .line 68
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/tts/lang_pico"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mSystemDir:Ljava/io/File;

    .line 69
    iput-boolean v2, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mHasDownloadedLocales:Z

    .line 70
    return-void
.end method

.method private addPicoLangs([Ljava/io/File;Z)V
    .locals 16
    .parameter "files"
    .parameter "isSystemDir"

    .prologue
    .line 144
    if-nez p1, :cond_1

    .line 178
    :cond_0
    return-void

    .line 148
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v11, validFiles:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;>;"
    move-object/from16 v1, p1

    .local v1, arr$:[Ljava/io/File;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v3, v1, v5

    .line 152
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    move/from16 v0, p2

    invoke-direct {v13, v0, v14, v15}, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;-><init>(ZJ)V

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 158
    .end local v3           #file:Ljava/io/File;
    :cond_3
    sget-object v12, Lcom/google/android/tts/voicepack/VoiceDataManager;->PICO_DATA_FILE_MAP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 159
    .local v7, locale:Ljava/lang/String;
    sget-object v12, Lcom/google/android/tts/voicepack/VoiceDataManager;->PICO_DATA_FILE_MAP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v12, v7}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 160
    .local v2, dataFiles:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 165
    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;

    .line 166
    .local v4, first:Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;
    iget-object v12, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;

    .line 167
    .local v8, second:Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;
    iget-wide v12, v4, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;->mSize:J

    iget-wide v14, v8, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;->mSize:J

    add-long v9, v12, v14

    .line 169
    .local v9, totalSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mAvailablePicoLangs:Ljava/util/Map;

    new-instance v13, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;

    move/from16 v0, p2

    invoke-direct {v13, v0, v9, v10}, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;-><init>(ZJ)V

    invoke-interface {v12, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    if-nez p2, :cond_4

    .line 174
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mHasDownloadedLocales:Z

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized deleteVoiceData(Ljava/lang/String;)V
    .locals 4
    .parameter "locale"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mAvailablePicoLangs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mAvailablePicoLangs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    sget-object v1, Lcom/google/android/tts/voicepack/VoiceDataManager;->PICO_DATA_FILE_MAP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 132
    .local v0, files:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 133
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mPicoDataDir:Ljava/io/File;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    const-string v2, "TTS.VoiceDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error deleting language data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mPicoDataDir:Ljava/io/File;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 137
    const-string v2, "TTS.VoiceDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error deleting language data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_2
    monitor-exit p0

    return-void

    .line 127
    .end local v0           #files:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAvailablePicoLocales()Ljava/util/Set;
    .locals 2
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
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mAvailablePicoLangs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call updateAvailableLangs atleast once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mAvailablePicoLangs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getInstalledSize(Ljava/lang/String;)J
    .locals 2
    .parameter "locale"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mAvailablePicoLangs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mAvailablePicoLangs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;

    iget-wide v0, v0, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;->mSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPicoDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mPicoDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasDownloadedLocales()Z
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mHasDownloadedLocales:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSystemLocale(Ljava/lang/String;)Z
    .locals 1
    .parameter "locale"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mAvailablePicoLangs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mAvailablePicoLangs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;

    iget-boolean v0, v0, Lcom/google/android/tts/voicepack/VoiceDataManager$FileInfo;->mIsSystem:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateAvailableLangs()V
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mAvailablePicoLangs:Ljava/util/Map;

    .line 83
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mPicoDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mPicoDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mPicoDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/tts/voicepack/VoiceDataManager;->addPicoLangs([Ljava/io/File;Z)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataManager;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/tts/voicepack/VoiceDataManager;->addPicoLangs([Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
