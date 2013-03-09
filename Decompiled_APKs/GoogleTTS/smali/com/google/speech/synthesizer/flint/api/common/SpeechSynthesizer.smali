.class public abstract Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;
.super Ljava/lang/Object;
.source "SpeechSynthesizer.java"


# instance fields
.field private hProjectFile:J

.field private hProjectResourceHolder:J

.field private hSynthesizer:J

.field private hTextNormalizer:J

.field private numRequests:J

.field private textNormEnabled:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    .line 83
    iput-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hTextNormalizer:J

    .line 84
    iput-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectFile:J

    .line 85
    iput-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectResourceHolder:J

    .line 86
    iput-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->numRequests:J

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->textNormEnabled:Z

    .line 88
    return-void
.end method

.method private appendFileBytes(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    const/16 v2, 0x800

    new-array v1, v2, [B

    .line 464
    .local v1, readBuffer:[B
    const/4 v0, 0x0

    .line 465
    .local v0, bytesRead:I
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    .line 466
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 468
    :cond_0
    return-void
.end method

.method private prepareText(Ljava/lang/String;Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;)J
    .locals 11
    .parameter "text"
    .parameter "controls"

    .prologue
    const-wide/16 v9, 0x0

    .line 406
    const-wide/16 v7, 0x0

    .line 408
    .local v7, hOut:J
    :try_start_0
    iget-boolean v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->textNormEnabled:Z

    if-nez v0, :cond_0

    .line 409
    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    invoke-static {v0, v1, p1}, Lcom/google/speech/synthesizer/flint/engine/api/TextAnalysisApi;->wlStringToWordIds(JLjava/lang/String;)J

    move-result-wide v7

    cmp-long v0, v7, v9

    if-nez v0, :cond_1

    .line 411
    const-string v0, "Flint Speech Synthesizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert in-vocabulary (wl) words \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" to utterance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v9

    .line 428
    :goto_0
    return-wide v0

    .line 417
    :cond_0
    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    iget-wide v2, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hTextNormalizer:J

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/speech/synthesizer/flint/engine/api/TextAnalysisApi;->textStringToWordIds(JJLjava/lang/String;Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;)J

    move-result-wide v7

    .line 419
    cmp-long v0, v7, v9

    if-nez v0, :cond_1

    .line 420
    const-string v0, "Flint Speech Synthesizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to normalize \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v9

    .line 421
    goto :goto_0

    .line 424
    :catch_0
    move-exception v6

    .line 425
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "Flint Speech Synthesizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to prepare text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v9

    .line 426
    goto :goto_0

    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    move-wide v0, v7

    .line 428
    goto :goto_0
.end method

.method private varargs readFileListToByteArray([Ljava/io/InputStream;)[B
    .locals 6
    .parameter "streams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    array-length v5, p1

    if-nez v5, :cond_0

    .line 440
    const/4 v5, 0x0

    .line 451
    :goto_0
    return-object v5

    .line 443
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const v5, 0x8000

    invoke-direct {v3, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 445
    .local v3, output:Ljava/io/ByteArrayOutputStream;
    move-object v0, p1

    .local v0, arr$:[Ljava/io/InputStream;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 446
    .local v4, stream:Ljava/io/InputStream;
    invoke-direct {p0, v4, v3}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->appendFileBytes(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 451
    .end local v4           #stream:Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method protected abstract getAssetContext()Ljava/lang/Object;
.end method

.method public final getSampleRate()I
    .locals 2

    .prologue
    .line 372
    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    invoke-static {v0, v1}, Lcom/google/speech/synthesizer/flint/engine/api/HmmSynthesizerApi;->hmmGetVoiceSampleRate(J)I

    move-result v0

    return v0
.end method

.method public initBufferedSynthesis(Ljava/lang/String;Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;)Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;
    .locals 12
    .parameter "text"
    .parameter "controls"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    .line 220
    const/4 v5, 0x0

    .line 221
    .local v5, synth:Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;
    const-wide/16 v1, 0x0

    .local v1, hOut:J
    const-wide/16 v3, 0x0

    .line 224
    .local v3, hState:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->prepareText(Ljava/lang/String;Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;)J

    move-result-wide v1

    cmp-long v8, v1, v10

    if-nez v8, :cond_0

    .line 225
    const-string v8, "Flint Speech Synthesizer"

    const-string v9, "Failed to prepare text"

    invoke-virtual {p0, v8, v9}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 250
    :goto_0
    return-object v6

    .line 228
    :cond_0
    iget-wide v8, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    invoke-static {v8, v9, v1, v2}, Lcom/google/speech/synthesizer/flint/engine/api/HmmSynthesizerApi;->wordIdsToUnits(JJ)Z

    move-result v8

    if-nez v8, :cond_1

    .line 229
    const-string v8, "Flint Speech Synthesizer"

    const-string v9, "Failed to synthesize"

    invoke-virtual {p0, v8, v9}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 230
    goto :goto_0

    .line 232
    :cond_1
    iget-wide v8, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    invoke-static {v8, v9, v1, v2}, Lcom/google/speech/synthesizer/flint/engine/api/HmmSynthesizerApi;->hmmInitBuffered(JJ)J

    move-result-wide v3

    .line 233
    cmp-long v8, v3, v10

    if-nez v8, :cond_2

    .line 234
    const-string v8, "Flint Speech Synthesizer"

    const-string v9, "Failed to inialize buffered synthesizer"

    invoke-virtual {p0, v8, v9}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 235
    goto :goto_0

    .line 237
    :cond_2
    new-instance v6, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;

    iget-wide v8, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    invoke-direct {v6, v8, v9}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v5           #synth:Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;
    .local v6, synth:Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;
    :try_start_1
    iget-wide v8, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->numRequests:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->numRequests:J

    invoke-virtual {v6, v8, v9}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->setId(J)V

    .line 239
    invoke-virtual {v6, v1, v2}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->setOutputHandle(J)V

    .line 240
    invoke-virtual {v6, v3, v4}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->setStateHandle(J)V

    .line 241
    sget-object v8, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_INITIAL:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    invoke-virtual {v6, v8}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->setStatus(Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 242
    .end local v6           #synth:Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;
    .restart local v5       #synth:Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    if-eqz v5, :cond_3

    .line 245
    sget-object v8, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_FAILED:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    invoke-virtual {v5, v8}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->setStatus(Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;)V

    .line 247
    :cond_3
    invoke-virtual {v5}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->destroy()V

    .line 248
    const-string v8, "Flint Speech Synthesizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Buffered synthesis initialization failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 250
    goto :goto_0

    .line 243
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #synth:Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;
    .restart local v6       #synth:Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6           #synth:Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;
    .restart local v5       #synth:Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;
    goto :goto_1
.end method

.method public initialize(Ljava/io/InputStream;)Z
    .locals 11
    .parameter "projectFile"

    .prologue
    const/4 v4, 0x1

    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->loadJni()Z

    move-result v5

    if-nez v5, :cond_0

    .line 101
    const-string v4, "Flint Speech Synthesizer"

    const-string v5, "Failed to load JNI"

    invoke-virtual {p0, v4, v5}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return v3

    .line 106
    :cond_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/io/InputStream;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-direct {p0, v5}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->readFileListToByteArray([Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/speech/synthesizer/flint/engine/api/FileResourceApi;->memoryResourceFromBuffer([B)J

    move-result-wide v1

    .line 108
    .local v1, frProjectFile:J
    cmp-long v5, v1, v9

    if-nez v5, :cond_1

    .line 109
    const-string v4, "Flint Speech Synthesizer"

    const-string v5, "Failed to read project file to memory buffer"

    invoke-virtual {p0, v4, v5}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1           #frProjectFile:J
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Flint Speech Synthesizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #frProjectFile:J
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->getAssetContext()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/google/speech/synthesizer/flint/engine/api/ProjectFileApi;->newProjectFile(JLjava/lang/Object;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectFile:J

    .line 114
    invoke-static {v1, v2}, Lcom/google/speech/synthesizer/flint/engine/api/FileResourceApi;->deleteFileResource(J)V

    .line 115
    iget-wide v5, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectFile:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_2

    .line 116
    const-string v4, "Flint Speech Synthesizer"

    const-string v5, "Failed to initialize project file"

    invoke-virtual {p0, v4, v5}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {}, Lcom/google/speech/synthesizer/flint/engine/api/ProjectFileApi;->newProjectResourceHolder()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectResourceHolder:J

    .line 122
    iget-wide v5, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectFile:J

    iget-wide v7, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectResourceHolder:J

    invoke-static {v5, v6, v7, v8}, Lcom/google/speech/synthesizer/flint/engine/api/TextAnalysisApi;->createTextNormalizer(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hTextNormalizer:J

    .line 124
    iget-wide v5, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hTextNormalizer:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_3

    .line 125
    const-string v4, "Flint Speech Synthesizer"

    const-string v5, "Failed to load and initialize text normalizer"

    invoke-virtual {p0, v4, v5}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    iget-wide v5, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectFile:J

    iget-wide v7, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectResourceHolder:J

    invoke-static {v5, v6, v7, v8}, Lcom/google/speech/synthesizer/flint/engine/api/HmmSynthesizerApi;->hmmCreateSynthesizer(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    .line 130
    iget-wide v5, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_4

    .line 131
    const-string v4, "Flint Speech Synthesizer"

    const-string v5, "Failed to load and initialize synthesizer"

    invoke-virtual {p0, v4, v5}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 134
    goto/16 :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 164
    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hTextNormalizer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectResourceHolder:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectFile:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract loadJni()Z
.end method

.method protected abstract logError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public shutdown()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 345
    :try_start_0
    iget-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hTextNormalizer:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 346
    iget-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hTextNormalizer:J

    invoke-static {v1, v2}, Lcom/google/speech/synthesizer/flint/engine/api/TextAnalysisApi;->deleteTextNormalizer(J)V

    .line 347
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hTextNormalizer:J

    .line 349
    :cond_0
    iget-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 350
    iget-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    invoke-static {v1, v2}, Lcom/google/speech/synthesizer/flint/engine/api/HmmSynthesizerApi;->hmmDeleteSynthesizer(J)V

    .line 351
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    .line 353
    :cond_1
    iget-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectFile:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 354
    iget-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectFile:J

    invoke-static {v1, v2}, Lcom/google/speech/synthesizer/flint/engine/api/ProjectFileApi;->deleteProjectFile(J)V

    .line 355
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectFile:J

    .line 357
    :cond_2
    iget-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectResourceHolder:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 358
    iget-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectResourceHolder:J

    invoke-static {v1, v2}, Lcom/google/speech/synthesizer/flint/engine/api/ProjectFileApi;->deleteProjectResourceHolder(J)V

    .line 359
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hProjectResourceHolder:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_3
    const/4 v1, 0x1

    .line 364
    :goto_0
    return v1

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Flint Speech Synthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to shutdown synthesizer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public synthesizeToDirectBuffer(Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;Ljava/nio/ByteBuffer;)I
    .locals 11
    .parameter "synth"
    .parameter "audioBuf"

    .prologue
    const/4 v10, -0x1

    .line 306
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 307
    iget-wide v0, p0, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->hSynthesizer:J

    invoke-virtual {p1}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->getOutputHandle()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->getStateHandle()J

    move-result-wide v5

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/google/speech/synthesizer/flint/engine/api/HmmSynthesizerApi;->hmmWaveGenerationToByteBuffer(JJLjava/nio/ByteBuffer;J)I

    move-result v8

    .line 310
    .local v8, numSamplesReady:I
    invoke-virtual {p1}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->getStateHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/speech/synthesizer/flint/engine/api/CommonApi;->getSynthesisStatus(J)Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    move-result-object v9

    .line 312
    .local v9, status:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;
    sget-object v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_FAILED:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    if-ne v9, v0, :cond_0

    .line 313
    const-string v0, "Flint Speech Synthesizer"

    const-string v1, "Buffered synthesis failed"

    invoke-virtual {p0, v0, v1}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_FAILED:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    invoke-virtual {p1, v0}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->setStatus(Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;)V

    move v8, v10

    .line 334
    .end local v8           #numSamplesReady:I
    .end local v9           #status:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;
    :goto_0
    return v8

    .line 317
    .restart local v8       #numSamplesReady:I
    .restart local v9       #status:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;
    :cond_0
    if-gez v8, :cond_1

    .line 318
    const-string v0, "Flint Speech Synthesizer"

    const-string v1, "Buffered synthesis failed: invalid number of samples returned"

    invoke-virtual {p0, v0, v1}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_FAILED:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    invoke-virtual {p1, v0}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->setStatus(Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;)V

    move v8, v10

    .line 322
    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p1, v9}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->setStatus(Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;)V

    .line 327
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 328
    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    .end local v8           #numSamplesReady:I
    .end local v9           #status:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;
    :catch_0
    move-exception v7

    .line 331
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;->STATUS_FAILED:Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;

    invoke-virtual {p1, v0}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->setStatus(Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;)V

    .line 332
    invoke-virtual {p1}, Lcom/google/speech/synthesizer/flint/api/common/BufferedSynthesisHandle;->destroy()V

    .line 333
    const-string v0, "Flint Speech Synthesizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffered synthesis failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/speech/synthesizer/flint/api/common/SpeechSynthesizer;->logError(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v10

    .line 334
    goto :goto_0
.end method
