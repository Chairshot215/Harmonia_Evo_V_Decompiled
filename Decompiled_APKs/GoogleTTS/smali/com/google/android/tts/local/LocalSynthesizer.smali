.class public Lcom/google/android/tts/local/LocalSynthesizer;
.super Ljava/lang/Object;
.source "LocalSynthesizer.java"

# interfaces
.implements Lcom/google/android/tts/Synthesizer;


# instance fields
.field private final mCurrentSynthLock:Ljava/lang/Object;

.field private mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

.field private final mFlintSynthesizer:Lcom/google/android/tts/Synthesizer;

.field private volatile mIsSynthesizing:Z

.field private final mPicoSynthesizer:Lcom/google/android/tts/Synthesizer;


# direct methods
.method public constructor <init>(Lcom/google/android/tts/Synthesizer;Lcom/google/android/tts/Synthesizer;)V
    .locals 1
    .parameter "pico"
    .parameter "flint"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthLock:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mPicoSynthesizer:Lcom/google/android/tts/Synthesizer;

    .line 27
    iput-object p2, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mFlintSynthesizer:Lcom/google/android/tts/Synthesizer;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mIsSynthesizing:Z

    .line 29
    return-void
.end method

.method private canFlintServe(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "language"
    .parameter "country"

    .prologue
    const/4 v1, 0x1

    .line 119
    iget-object v2, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mFlintSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v2, p1, p2}, Lcom/google/android/tts/Synthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, returnVal:I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private switchSynthesizer(Lcom/google/android/tts/Synthesizer;)V
    .locals 2
    .parameter "synth"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    if-eq p1, v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->onClose()V

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    .line 135
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->onInit()V

    .line 140
    :cond_1
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getLanguage()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->getLanguage()[Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "language"
    .parameter "country"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/tts/local/LocalSynthesizer;->canFlintServe(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mFlintSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/tts/Synthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mPicoSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/tts/Synthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->onClose()V

    .line 56
    :cond_0
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized onInit()V
    .locals 0

    .prologue
    .line 36
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "language"
    .parameter "country"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/tts/local/LocalSynthesizer;->canFlintServe(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mFlintSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-direct {p0, v1}, Lcom/google/android/tts/local/LocalSynthesizer;->switchSynthesizer(Lcom/google/android/tts/Synthesizer;)V

    .line 68
    iget-object v1, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v1, p1, p2}, Lcom/google/android/tts/Synthesizer;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 80
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 71
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mPicoSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v1, p1, p2}, Lcom/google/android/tts/Synthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, availableOnPico:I
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mPicoSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-direct {p0, v1}, Lcom/google/android/tts/local/LocalSynthesizer;->switchSynthesizer(Lcom/google/android/tts/Synthesizer;)V

    .line 76
    iget-object v1, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v1, p1, p2}, Lcom/google/android/tts/Synthesizer;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 63
    .end local v0           #availableOnPico:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mIsSynthesizing:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->onStop()V

    .line 89
    :cond_0
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V
    .locals 3
    .parameter "ttsRequest"
    .parameter "callback"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/tts/local/LocalSynthesizer;->canFlintServe(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mFlintSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-direct {p0, v0}, Lcom/google/android/tts/local/LocalSynthesizer;->switchSynthesizer(Lcom/google/android/tts/Synthesizer;)V

    .line 107
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mIsSynthesizing:Z

    .line 109
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mCurrentSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/tts/Synthesizer;->onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mIsSynthesizing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/tts/local/LocalSynthesizer;->mPicoSynthesizer:Lcom/google/android/tts/Synthesizer;

    invoke-direct {p0, v0}, Lcom/google/android/tts/local/LocalSynthesizer;->switchSynthesizer(Lcom/google/android/tts/Synthesizer;)V

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
