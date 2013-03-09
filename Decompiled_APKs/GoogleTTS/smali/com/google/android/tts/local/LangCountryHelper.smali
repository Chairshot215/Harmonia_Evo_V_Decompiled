.class public Lcom/google/android/tts/local/LangCountryHelper;
.super Ljava/lang/Object;
.source "LangCountryHelper.java"


# instance fields
.field private final mAvailableLangs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mAvailableLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mDownloadableLangs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mDownloadableLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

.field private final mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;


# direct methods
.method public constructor <init>(Lcom/google/android/tts/voicepack/VoiceDataManager;Lcom/google/android/tts/voicepack/MetadataManager;)V
    .locals 1
    .parameter "voiceMgr"
    .parameter "metadataMgr"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/local/LangCountryHelper;->mAvailableLangs:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/local/LangCountryHelper;->mAvailableLocales:Ljava/util/Set;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/local/LangCountryHelper;->mDownloadableLangs:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/local/LangCountryHelper;->mDownloadableLocales:Ljava/util/Set;

    .line 44
    iput-object p1, p0, Lcom/google/android/tts/local/LangCountryHelper;->mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;

    .line 45
    iput-object p2, p0, Lcom/google/android/tts/local/LangCountryHelper;->mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/tts/local/LangCountryHelper;->updateLocaleList()V

    .line 47
    return-void
.end method

.method private buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "language"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "country"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseLangFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "locale"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 110
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, components:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 112
    const-string v1, "TTS.LangCountryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid locale string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, 0x0

    .line 116
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getLanguages()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/tts/local/LangCountryHelper;->mAvailableLocales:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/tts/local/LangCountryHelper;->mAvailableLocales:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "language"
    .parameter "country"

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/google/android/tts/local/LangCountryHelper;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, localeKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/tts/local/LangCountryHelper;->mAvailableLangs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    if-eqz p2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/google/android/tts/local/LangCountryHelper;->mAvailableLocales:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    .line 101
    :goto_0
    monitor-exit p0

    return v1

    .line 93
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 96
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/tts/local/LangCountryHelper;->mDownloadableLangs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/tts/local/LangCountryHelper;->mDownloadableLocales:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 101
    :cond_3
    const/4 v1, -0x2

    goto :goto_0

    .line 83
    .end local v0           #localeKey:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateLocaleList()V
    .locals 7

    .prologue
    .line 50
    iget-object v6, p0, Lcom/google/android/tts/local/LangCountryHelper;->mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;

    invoke-virtual {v6}, Lcom/google/android/tts/voicepack/VoiceDataManager;->getAvailablePicoLocales()Ljava/util/Set;

    move-result-object v0

    .line 51
    .local v0, availablePicoLocales:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/google/android/tts/local/LangCountryHelper;->mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    invoke-virtual {v6}, Lcom/google/android/tts/voicepack/MetadataManager;->getDownloadableLocales()Ljava/util/Set;

    move-result-object v5

    .line 53
    .local v5, serverLocales:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v6, p0, Lcom/google/android/tts/local/LangCountryHelper;->mAvailableLangs:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 56
    iget-object v6, p0, Lcom/google/android/tts/local/LangCountryHelper;->mAvailableLocales:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 57
    iget-object v6, p0, Lcom/google/android/tts/local/LangCountryHelper;->mDownloadableLangs:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 58
    iget-object v6, p0, Lcom/google/android/tts/local/LangCountryHelper;->mDownloadableLocales:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 60
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 61
    .local v3, locale:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/google/android/tts/local/LangCountryHelper;->parseLangFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, lang:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 63
    iget-object v6, p0, Lcom/google/android/tts/local/LangCountryHelper;->mAvailableLocales:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v6, p0, Lcom/google/android/tts/local/LangCountryHelper;->mAvailableLangs:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lang:Ljava/lang/String;
    .end local v3           #locale:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 68
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69
    .local v4, serverLocale:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/google/android/tts/local/LangCountryHelper;->parseLangFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .restart local v2       #lang:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 71
    iget-object v6, p0, Lcom/google/android/tts/local/LangCountryHelper;->mAvailableLocales:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 72
    iget-object v6, p0, Lcom/google/android/tts/local/LangCountryHelper;->mDownloadableLangs:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_3
    iget-object v6, p0, Lcom/google/android/tts/local/LangCountryHelper;->mAvailableLocales:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 75
    iget-object v6, p0, Lcom/google/android/tts/local/LangCountryHelper;->mDownloadableLocales:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    .end local v2           #lang:Ljava/lang/String;
    .end local v4           #serverLocale:Ljava/lang/String;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    return-void
.end method
