.class public Lcom/google/android/tts/local/FlintSynthesizer;
.super Ljava/lang/Object;
.source "FlintSynthesizer.java"

# interfaces
.implements Lcom/google/android/tts/Synthesizer;


# instance fields
.field private mBaseDir:Ljava/lang/String;

.field private final mConfig:Lcom/google/android/tts/TtsConfig;

.field private final mContext:Landroid/content/Context;

.field private final mProcessor:Lcom/google/android/tts/local/TextPreprocessor;

.field private volatile mStopRequested:Z

.field private final mSynth:Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;

.field private mSynthesisBuf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/tts/TtsConfig;)V
    .locals 2
    .parameter "ctx"
    .parameter "config"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/google/speech/synthesizer/flint/api/android/AndroidSpeechSynthesizer;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/speech/synthesizer/flint/api/android/AndroidSpeechSynthesizer;-><init>(Landroid/content/res/AssetManager;)V

    iput-object v0, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynth:Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;

    .line 47
    new-instance v0, Lcom/google/android/tts/local/TextPreprocessor;

    invoke-direct {v0}, Lcom/google/android/tts/local/TextPreprocessor;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mProcessor:Lcom/google/android/tts/local/TextPreprocessor;

    .line 48
    iput-object p1, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mConfig:Lcom/google/android/tts/TtsConfig;

    .line 50
    return-void
.end method

.method private static clip(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 282
    if-le p0, p2, :cond_0

    .line 290
    .end local p2
    :goto_0
    return p2

    .line 286
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 287
    goto :goto_0

    :cond_1
    move p2, p0

    .line 290
    goto :goto_0
.end method

.method private destroySynthesizer()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynth:Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynth:Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynth:Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->shutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const-string v0, "FlintSynthesizer"

    const-string v1, "Could not cleanly shut down Flint synthesizer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    return-void
.end method

.method private getBaseDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "language"
    .parameter "country"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 213
    const-string v0, "eng"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "gbr"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "eng-gbr/"

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "eng-usa/"

    goto :goto_0
.end method

.method private getLocaleFromBaseDir(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "baseDir"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 200
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "eng"

    aput-object v2, v0, v1

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    .line 201
    .local v0, returnVal:[Ljava/lang/String;
    const-string v1, "usa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const-string v1, "USA"

    aput-object v1, v0, v3

    .line 207
    :goto_0
    return-object v0

    .line 204
    :cond_0
    const-string v1, "GBR"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method private initializeSynthesizer(Ljava/lang/String;)V
    .locals 6
    .parameter "base"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 223
    iget-object v3, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynth:Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;

    invoke-virtual {v3}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynth:Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;

    invoke-virtual {v3}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->shutdown()Z

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 227
    .local v0, am:Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 232
    .local v2, init:Z
    :try_start_0
    iget-object v3, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynth:Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mConfig:Lcom/google/android/tts/TtsConfig;

    invoke-interface {v5}, Lcom/google/android/tts/TtsConfig;->getProjectFileVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->initialize(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 237
    :goto_0
    if-nez v2, :cond_1

    .line 238
    const-string v3, "FlintMessageHandler"

    const-string v4, "Failed to load synth data."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    return-void

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, e:Ljava/io/IOException;
    const-string v3, "FlintSynthesizer"

    const-string v4, "Unable to open project file."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static normalizePitch(I)F
    .locals 2
    .parameter "pitch"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    const/16 v1, 0x1f4

    invoke-static {p0, v0, v1}, Lcom/google/android/tts/local/FlintSynthesizer;->clip(III)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method static normalizeSpeechRate(I)F
    .locals 3
    .parameter "speechRate"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 263
    const/16 v1, 0x14

    const/16 v2, 0x12c

    invoke-static {p0, v1, v2}, Lcom/google/android/tts/local/FlintSynthesizer;->clip(III)I

    move-result v0

    .line 267
    .local v0, clipped:I
    rsub-int/lit8 v1, v0, 0x64

    int-to-float v2, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/high16 v1, 0x4348

    :goto_0
    div-float v1, v2, v1

    const/high16 v2, 0x40e0

    mul-float/2addr v1, v2

    return v1

    :cond_0
    const/high16 v1, 0x42a0

    goto :goto_0
.end method

.method private synthesizeSentence(Ljava/lang/String;Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;Landroid/speech/tts/SynthesisCallback;)Z
    .locals 5
    .parameter "sentenceText"
    .parameter "controls"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v3, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynth:Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;

    invoke-virtual {v3, p1, p2}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->initBufferedSynthesis(Ljava/lang/String;Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;)Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;

    move-result-object v0

    .line 145
    .local v0, handle:Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;
    if-nez v0, :cond_1

    .line 146
    invoke-interface {p3}, Landroid/speech/tts/SynthesisCallback;->error()V

    .line 158
    :cond_0
    :goto_0
    return v2

    .line 150
    :cond_1
    const/4 v1, 0x0

    .line 152
    .local v1, numBytes:I
    :cond_2
    iget-object v3, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynth:Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;

    iget-object v4, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynthesisBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0, v4}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->synthesizeToDirectBuffer(Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 153
    iget-object v3, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynthesisBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-interface {p3, v3, v2, v1}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I

    .line 154
    invoke-virtual {v0}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mStopRequested:Z

    if-eqz v3, :cond_2

    .line 156
    :cond_3
    invoke-virtual {v0}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->destroy()V

    .line 158
    iget-boolean v3, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mStopRequested:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private synthesizeSilence(JLandroid/speech/tts/SynthesisCallback;)Z
    .locals 7
    .parameter "durationMs"
    .parameter "callback"

    .prologue
    const-wide/16 v0, 0x2710

    .line 123
    cmp-long v5, p1, v0

    if-lez v5, :cond_1

    .line 125
    .local v0, clippedDuration:J
    :goto_0
    const/high16 v5, 0x447a

    iget-object v6, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynth:Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;

    invoke-virtual {v6}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->getSampleRate()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 126
    .local v2, msPerSample:F
    long-to-float v5, v0

    div-float/2addr v5, v2

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 130
    .local v3, numBytes:I
    if-lez v3, :cond_0

    .line 131
    new-array v4, v3, [B

    .line 132
    .local v4, silence:[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-interface {p3, v4, v5, v6}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I

    .line 135
    .end local v4           #silence:[B
    :cond_0
    const/4 v5, 0x1

    return v5

    .end local v0           #clippedDuration:J
    .end local v2           #msPerSample:F
    .end local v3           #numBytes:I
    :cond_1
    move-wide v0, p1

    .line 123
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getLanguage()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mBaseDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mBaseDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/tts/local/FlintSynthesizer;->getLocaleFromBaseDir(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 189
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "language"
    .parameter "country"

    .prologue
    .line 250
    const-string v0, "eng"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    const-string v0, "gbr"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "usa"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    .line 255
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :cond_2
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public declared-synchronized onClose()V
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/tts/local/FlintSynthesizer;->destroySynthesizer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInit()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/google/speech/synthesizer/flint/api/android/StaticJniLoader;->loadJni()Z

    .line 65
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynthesisBuf:Ljava/nio/ByteBuffer;

    .line 66
    return-void
.end method

.method public declared-synchronized onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "language"
    .parameter "country"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/tts/local/FlintSynthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 164
    .local v0, availability:I
    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 170
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/tts/local/FlintSynthesizer;->getBaseDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, baseDir:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mBaseDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynth:Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;

    invoke-virtual {v2}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/google/android/tts/local/FlintSynthesizer;->destroySynthesizer()V

    .line 178
    invoke-direct {p0, v1}, Lcom/google/android/tts/local/FlintSynthesizer;->initializeSynthesizer(Ljava/lang/String;)V

    .line 179
    iput-object v1, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mBaseDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    .end local v0           #availability:I
    .end local v1           #baseDir:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mStopRequested:Z

    .line 71
    return-void
.end method

.method public onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V
    .locals 1
    .parameter "ttsRequest"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "callback"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mStopRequested:Z

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/google/android/tts/local/FlintSynthesizer;->synthesizeBuffered(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V

    .line 80
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->setServed()V

    .line 81
    return-void
.end method

.method declared-synchronized synthesizeBuffered(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V
    .locals 10
    .parameter "request"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "callback"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 87
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/android/tts/local/FlintSynthesizer;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;

    invoke-direct {v0}, Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;-><init>()V

    .line 90
    .local v0, controls:Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getSpeechRate()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/tts/local/FlintSynthesizer;->normalizeSpeechRate(I)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;->setSpeakingRate(F)V

    .line 91
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getPitch()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/tts/local/FlintSynthesizer;->normalizePitch(I)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;->setPitchMultFactor(F)V

    .line 92
    iget-object v4, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mProcessor:Lcom/google/android/tts/local/TextPreprocessor;

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/tts/local/TextPreprocessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 95
    .local v3, utterances:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/tts/local/Utterance;>;"
    iget-object v4, p0, Lcom/google/android/tts/local/FlintSynthesizer;->mSynth:Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;

    invoke-virtual {v4}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->getSampleRate()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-interface {p2, v4, v5, v6}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    .line 96
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/tts/local/Utterance;

    .line 97
    .local v2, utterance:Lcom/google/android/tts/local/Utterance;
    iget v4, v2, Lcom/google/android/tts/local/Utterance;->mType:I

    if-ne v4, v8, :cond_2

    .line 98
    iget-object v4, v2, Lcom/google/android/tts/local/Utterance;->mText:Ljava/lang/String;

    invoke-direct {p0, v4, v0, p2}, Lcom/google/android/tts/local/FlintSynthesizer;->synthesizeSentence(Ljava/lang/String;Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;Landroid/speech/tts/SynthesisCallback;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    .end local v2           #utterance:Lcom/google/android/tts/local/Utterance;
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->done()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 101
    .restart local v2       #utterance:Lcom/google/android/tts/local/Utterance;
    :cond_2
    :try_start_1
    iget v4, v2, Lcom/google/android/tts/local/Utterance;->mType:I

    if-ne v4, v9, :cond_0

    .line 102
    iget-wide v4, v2, Lcom/google/android/tts/local/Utterance;->mDurationMs:J

    invoke-direct {p0, v4, v5, p2}, Lcom/google/android/tts/local/FlintSynthesizer;->synthesizeSilence(JLandroid/speech/tts/SynthesisCallback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 87
    .end local v0           #controls:Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #utterance:Lcom/google/android/tts/local/Utterance;
    .end local v3           #utterances:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/tts/local/Utterance;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlintSynthesizer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
