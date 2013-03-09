.class public Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;
.super Ljava/io/InputStream;
.source "EndpointerInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;,
        Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;,
        Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;
    }
.end annotation


# instance fields
.field private mAudioState:I

.field private mBuf:[B

.field private mBufIn:I

.field private mBufOut:I

.field private mEndpointerEnabled:Z

.field private final mEndpointerStatus:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;

.field private mEnvironmentEstimationFramesRemaining:I

.field private mInputStream:Ljava/io/InputStream;

.field private mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

.field private mNativeHandle:I

.field private mNoiseJudgingBuffer:[B

.field private mNoiseJudgingBufferConsumed:I

.field private mNoiseJudgingBufferDenoised:[B

.field private final mPendingRequest:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;

.field private mRms:[F

.field private mUseDenoiser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    :try_start_0
    const-string v1, "voicesearch"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 127
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 129
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "speech"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 10
    .parameter "inputStream"

    .prologue
    const-wide/16 v3, -0x1

    .line 134
    const/4 v2, 0x2

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v5, v3

    move-wide v7, v3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;-><init>(Ljava/io/InputStream;IJJJZ)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IJJJ)V
    .locals 10
    .parameter "inputStream"
    .parameter "denoiserMode"
    .parameter "speechInputMinimumLength"
    .parameter "speechInputCompleteSilenceLength"
    .parameter "speechInputPossiblyCompleteSilenceLength"

    .prologue
    .line 140
    const/4 v2, 0x2

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;-><init>(Ljava/io/InputStream;IJJJZ)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IJJJZ)V
    .locals 9
    .parameter "inputStream"
    .parameter "denoiserMode"
    .parameter "speechInputMinimumLength"
    .parameter "speechInputCompleteSilenceLength"
    .parameter "speechInputPossiblyCompleteSilenceLength"
    .parameter "endpointerEnabled"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    .line 84
    const/16 v1, 0x140

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    .line 93
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferConsumed:I

    .line 97
    const/4 v1, 0x1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mRms:[F

    .line 154
    invoke-direct {p0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->createDummyListener()Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    .line 155
    new-instance v1, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;-><init>(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$1;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndpointerStatus:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;

    .line 156
    new-instance v1, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;-><init>(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$1;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mPendingRequest:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;

    .line 157
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndpointerEnabled:Z

    .line 158
    iput-object p1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mInputStream:Ljava/io/InputStream;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    move-wide/from16 v6, p7

    .line 159
    invoke-direct/range {v1 .. v7}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->endpointerNew(JJJ)I

    move-result v1

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    .line 164
    packed-switch p2, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 166
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mUseDenoiser:Z

    .line 167
    const/4 v1, -0x2

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    .line 170
    const/16 v1, 0xa

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    goto :goto_0

    .line 175
    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mUseDenoiser:Z

    .line 176
    const/4 v1, -0x2

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    .line 180
    const/16 v1, 0x32

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    goto :goto_0

    .line 186
    :pswitch_2
    const/16 v8, 0xc80

    .line 187
    .local v8, size:I
    const/16 v1, 0xc80

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    .line 188
    const/16 v1, 0xc80

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferDenoised:[B

    .line 189
    const/4 v1, -0x6

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    .line 194
    const/16 v1, 0x28

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    goto :goto_0

    .line 200
    .end local v8           #size:I
    :pswitch_3
    const/16 v8, 0xc80

    .line 201
    .restart local v8       #size:I
    const/16 v1, 0xc80

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    .line 202
    const/4 v1, -0x7

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    .line 205
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$600(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;)Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    return-object v0
.end method

.method private createDummyListener()Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$1;-><init>(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;)V

    return-object v0
.end method

.method private native endpointerDelete(I)V
.end method

.method private native endpointerNew(JJJ)I
.end method

.method private native getNoiseLevel(I)F
.end method

.method private judgeNoise([BII)I
    .locals 18
    .parameter "outBuf"
    .parameter "outBufOffset"
    .parameter "outBufLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    array-length v15, v3

    .line 434
    .local v15, noiseJudgingBufferLength:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    const/4 v4, -0x6

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    const/4 v4, -0x7

    if-ne v3, v4, :cond_1

    .line 436
    :cond_0
    new-instance v3, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 438
    const/4 v3, 0x1

    new-array v6, v3, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v6, v3

    .line 441
    .local v6, snr:[F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->processAudio(I[B[FZZ)I

    .line 447
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->getNoiseLevel(I)F

    move-result v16

    .line 448
    .local v16, noiseLevel:F
    const/high16 v3, 0x4316

    cmpl-float v3, v16, v3

    if-lez v3, :cond_4

    const/16 v17, 0x1

    .line 450
    .local v17, useDenoiser:Z
    :goto_0
    if-eqz v17, :cond_6

    .line 451
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    const/4 v4, -0x6

    if-ne v3, v4, :cond_5

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferDenoised:[B

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferDenoised:[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->processAudio(I[B[FZZ)I

    .line 459
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mUseDenoiser:Z

    .line 460
    const/4 v3, -0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    .line 474
    .end local v6           #snr:[F
    .end local v16           #noiseLevel:F
    .end local v17           #useDenoiser:Z
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    const/4 v4, -0x5

    if-ne v3, v4, :cond_7

    .line 475
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferDenoised:[B

    .line 483
    .local v13, noiseJudgingBuffer:[B
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferConsumed:I

    .line 484
    .local v14, noiseJudgingBufferConsumed:I
    sub-int v3, v15, v14

    move/from16 v0, p3

    if-le v0, v3, :cond_2

    .line 485
    sub-int p3, v15, v14

    .line 487
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v13, v14, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferConsumed:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferConsumed:I

    .line 492
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBufferConsumed:I

    if-ne v3, v15, :cond_3

    .line 493
    const/4 v3, -0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    .line 496
    :cond_3
    return p3

    .line 448
    .end local v13           #noiseJudgingBuffer:[B
    .end local v14           #noiseJudgingBufferConsumed:I
    .restart local v6       #snr:[F
    .restart local v16       #noiseLevel:F
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 463
    .restart local v17       #useDenoiser:Z
    :cond_5
    const/4 v3, -0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    goto :goto_1

    .line 466
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mUseDenoiser:Z

    .line 467
    const/4 v3, -0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    .line 468
    const/4 v3, 0x0

    aget v3, v6, v3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->promptForSpeech(FF)V

    goto :goto_1

    .line 476
    .end local v6           #snr:[F
    .end local v16           #noiseLevel:F
    .end local v17           #useDenoiser:Z
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    const/4 v4, -0x4

    if-ne v3, v4, :cond_8

    .line 477
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNoiseJudgingBuffer:[B

    .restart local v13       #noiseJudgingBuffer:[B
    goto :goto_2

    .line 479
    .end local v13           #noiseJudgingBuffer:[B
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private native processAudio(I[B[FZZ)I
.end method

.method private promptForSpeech(FF)V
    .locals 1
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 428
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->startUserInput(I)V

    .line 429
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;->onReadyForSpeech(FF)V

    .line 430
    return-void
.end method

.method private native restart(I)V
.end method

.method private native startUserInput(I)V
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 502
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndpointerStatus:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->setState(I)V

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    if-eqz v1, :cond_0

    .line 509
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->endpointerDelete(I)V

    .line 510
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    .line 512
    :cond_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Ljava/io/IOException;
    const-string v1, "EndpointerInputStream"

    const-string v2, "close() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 516
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "someone forgot to close EndpointerInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_0
    return-void
.end method

.method public read()I
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Single-byte read not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 12
    .parameter "outBuf"
    .parameter "outBufOffset"
    .parameter "outBufLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 284
    :cond_0
    const-string v0, "EndpointerInputStream"

    const-string v1, "Reading from a closed EndpointerInputStream"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "The EndpointerInputStream is already closed."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    const/4 v1, -0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    const/4 v1, -0x7

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    const/4 v1, -0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_3

    .line 292
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->judgeNoise([BII)I

    move-result v0

    .line 379
    :goto_0
    return v0

    .line 295
    :cond_3
    const/4 v10, 0x0

    .line 298
    .local v10, restartHandler:Z
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    if-lt v0, v1, :cond_b

    .line 300
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    array-length v6, v0

    .line 301
    .local v6, bufLength:I
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    .line 302
    iput v6, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    .line 305
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v6, :cond_7

    .line 306
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    sub-int v2, v6, v7

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 308
    .local v9, n:I
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndpointerStatus:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;

    #calls: Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->isPaused()Z
    invoke-static {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->access$300(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    .line 311
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :cond_4
    const/4 v0, -0x1

    if-eq v9, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mPendingRequest:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;

    #calls: Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;->isEndListening()Z
    invoke-static {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;->access$400(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    :cond_5
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndpointerStatus:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->setState(I)V

    .line 317
    const/4 v0, -0x1

    goto :goto_0

    .line 319
    :cond_6
    add-int/2addr v7, v9

    .line 320
    goto :goto_1

    .line 322
    .end local v9           #n:I
    :cond_7
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    if-nez v0, :cond_c

    .line 324
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    iget-object v2, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    iget-object v3, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mRms:[F

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mUseDenoiser:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->processAudio(I[B[FZZ)I

    move-result v11

    .line 330
    .local v11, state:I
    iget-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndpointerEnabled:Z

    if-eqz v0, :cond_a

    .line 331
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    if-eq v11, v0, :cond_a

    .line 335
    const/4 v0, -0x1

    if-ne v11, v0, :cond_8

    .line 336
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndpointerStatus:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->setState(I)V

    .line 339
    const/4 v0, -0x1

    goto :goto_0

    .line 340
    :cond_8
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndpointerStatus:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;

    #calls: Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->isSpeaking()Z
    invoke-static {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->access$500(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xc

    if-ne v11, v0, :cond_9

    .line 342
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndpointerStatus:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->setState(I)V

    .line 344
    :cond_9
    iput v11, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mAudioState:I

    .line 348
    :cond_a
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;->onBufferReceived([B)V

    .line 349
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mRms:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;->onRmsChanged(F)V

    .line 363
    .end local v6           #bufLength:I
    .end local v7           #i:I
    .end local v11           #state:I
    :cond_b
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEndpointerStatus:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;

    #calls: Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->isPaused()Z
    invoke-static {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->access$300(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 365
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    .line 366
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 352
    .restart local v6       #bufLength:I
    .restart local v7       #i:I
    :cond_c
    const/4 v0, 0x1

    new-array v3, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 353
    .local v3, snr:[F
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    iget-object v2, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mUseDenoiser:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->processAudio(I[B[FZZ)I

    .line 354
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mEnvironmentEstimationFramesRemaining:I

    if-nez v0, :cond_e

    const/4 v8, 0x1

    .line 355
    .local v8, lastFrame:Z
    :goto_2
    if-eqz v8, :cond_d

    .line 356
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->getNoiseLevel(I)F

    move-result v0

    const/4 v1, 0x0

    aget v1, v3, v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->promptForSpeech(FF)V

    .line 359
    :cond_d
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    .line 360
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 354
    .end local v8           #lastFrame:Z
    :cond_e
    const/4 v8, 0x0

    goto :goto_2

    .line 369
    .end local v3           #snr:[F
    .end local v6           #bufLength:I
    .end local v7           #i:I
    :cond_f
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_10

    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufIn:I

    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    sub-int p3, v0, v1

    .line 370
    :cond_10
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBuf:[B

    iget v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mBufOut:I

    .line 373
    if-eqz v10, :cond_11

    .line 376
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->restart(I)V

    :cond_11
    move v0, p3

    .line 379
    goto/16 :goto_0
.end method

.method public setListener(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    .line 250
    return-void
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mPendingRequest:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;

    #calls: Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;->requestEndListening()V
    invoke-static {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;->access$200(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;)V

    .line 246
    return-void
.end method
