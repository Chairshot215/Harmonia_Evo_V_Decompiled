.class Landroid/speech/tts/AudioPlaybackHandler;
.super Ljava/lang/Object;
.source "AudioPlaybackHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/AudioPlaybackHandler$1;,
        Landroid/speech/tts/AudioPlaybackHandler$ListEntry;,
        Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_THREADING:Z = false

.field private static final DEFAULT_PRIORITY:I = 0x1

.field private static final HIGH_PRIORITY:I = 0x0

.field private static final MAX_PROGRESS_WAIT_MS:J = 0x9c4L

.field private static final MAX_SLEEP_TIME_MS:J = 0x9c4L

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final MIN_SLEEP_TIME_MS:J = 0x14L

.field private static final PLAY_AUDIO:I = 0x5

.field private static final PLAY_SILENCE:I = 0x6

.field private static final SHUTDOWN:I = -0x1

.field private static final SYNTHESIS_DATA_AVAILABLE:I = 0x2

.field private static final SYNTHESIS_DONE:I = 0x3

.field private static final SYNTHESIS_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TTS.AudioPlaybackHandler"


# instance fields
.field private volatile mCurrentParams:Landroid/speech/tts/MessageParams;

.field private final mHandlerThread:Ljava/lang/Thread;

.field private volatile mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

.field private final mQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Landroid/speech/tts/AudioPlaybackHandler$ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSequenceIdCtr:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object v3, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentParams:Landroid/speech/tts/MessageParams;

    iput-object v3, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mSequenceIdCtr:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;

    invoke-direct {v1, p0, v3}, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;-><init>(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    const-string v2, "TTS.AudioPlaybackThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mHandlerThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$300(Landroid/speech/tts/AudioPlaybackHandler;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method static synthetic access$400(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/MessageParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler;->setCurrentParams(Landroid/speech/tts/MessageParams;)V

    return-void
.end method

.method static synthetic access$500(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/AudioPlaybackHandler$ListEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler;->handleMessage(Landroid/speech/tts/AudioPlaybackHandler$ListEntry;)V

    return-void
.end method

.method static synthetic access$600(Landroid/speech/tts/AudioPlaybackHandler;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mSequenceIdCtr:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private static blockUntilCompletion(Landroid/speech/tts/SynthesisMessageParams;)V
    .locals 15

    const-wide/16 v4, 0x9c4

    iget-object v6, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioTrack:Landroid/media/AudioTrack;

    iget v2, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    iget v3, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesPerFrame:I

    div-int v11, v2, v3

    const/4 v12, -0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    :goto_0
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v9

    if-ge v9, v11, :cond_0

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    sub-int v2, v11, v9

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v3

    div-int/2addr v2, v3

    int-to-long v0, v2

    const-wide/16 v2, 0x14

    invoke-static/range {v0 .. v5}, Landroid/speech/tts/AudioPlaybackHandler;->clip(JJJ)J

    move-result-wide v13

    if-ne v9, v12, :cond_1

    add-long/2addr v7, v13

    cmp-long v2, v7, v4

    if-lez v2, :cond_2

    const-string v2, "TTS.AudioPlaybackHandler"

    const-string v3, "Waited unsuccessfully for 2500ms for AudioTrack to make progress, Aborting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-wide/16 v7, 0x0

    :cond_2
    move v12, v9

    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method private static blockUntilDone(Landroid/speech/tts/SynthesisMessageParams;)V
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mIsShortUtterance:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/speech/tts/AudioPlaybackHandler;->blockUntilEstimatedCompletion(Landroid/speech/tts/SynthesisMessageParams;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroid/speech/tts/AudioPlaybackHandler;->blockUntilCompletion(Landroid/speech/tts/SynthesisMessageParams;)V

    goto :goto_0
.end method

.method private static blockUntilEstimatedCompletion(Landroid/speech/tts/SynthesisMessageParams;)V
    .locals 5

    iget v3, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    iget v4, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesPerFrame:I

    div-int v2, v3, v4

    mul-int/lit16 v3, v2, 0x3e8

    iget v4, p0, Landroid/speech/tts/SynthesisMessageParams;->mSampleRateInHz:I

    div-int/2addr v3, v4

    int-to-long v0, v3

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static clip(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    goto :goto_0
.end method

.method private static final clip(JJJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    cmp-long v0, p0, p4

    if-lez v0, :cond_1

    move-wide p2, p4

    goto :goto_0

    :cond_1
    move-wide p2, p0

    goto :goto_0
.end method

.method private static createStreamingAudioTrack(Landroid/speech/tts/SynthesisMessageParams;)Landroid/media/AudioTrack;
    .locals 8

    const/4 v6, 0x1

    iget v1, p0, Landroid/speech/tts/SynthesisMessageParams;->mChannelCount:I

    invoke-static {v1}, Landroid/speech/tts/AudioPlaybackHandler;->getChannelConfig(I)I

    move-result v3

    iget v2, p0, Landroid/speech/tts/SynthesisMessageParams;->mSampleRateInHz:I

    iget v4, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioFormat:I

    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    const/16 v1, 0x2000

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Landroid/speech/tts/SynthesisMessageParams;->mStreamType:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-eq v1, v6, :cond_0

    const-string v1, "TTS.AudioPlaybackHandler"

    const-string v6, "Unable to create audio track."

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iput v5, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioBufferSize:I

    iget v1, p0, Landroid/speech/tts/SynthesisMessageParams;->mVolume:F

    iget v6, p0, Landroid/speech/tts/SynthesisMessageParams;->mPan:F

    invoke-static {v0, v1, v6}, Landroid/speech/tts/AudioPlaybackHandler;->setupVolume(Landroid/media/AudioTrack;FF)V

    goto :goto_0
.end method

.method static getChannelConfig(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentParams()Landroid/speech/tts/MessageParams;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentParams:Landroid/speech/tts/MessageParams;

    return-object v0
.end method

.method private handleAudio(Landroid/speech/tts/MessageParams;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/speech/tts/AudioMessageParams;

    invoke-virtual {v0}, Landroid/speech/tts/AudioMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    invoke-virtual {v0}, Landroid/speech/tts/AudioMessageParams;->getPlayer()Landroid/speech/tts/BlockingMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/BlockingMediaPlayer;->startAndWait()Z

    invoke-virtual {v0}, Landroid/speech/tts/AudioMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnDone()V

    return-void
.end method

.method private handleMessage(Landroid/speech/tts/AudioPlaybackHandler$ListEntry;)V
    .locals 3

    iget-object v0, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mMessage:Landroid/speech/tts/MessageParams;

    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleSynthesisStart(Landroid/speech/tts/MessageParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleSynthesisDataAvailable(Landroid/speech/tts/MessageParams;)V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleSynthesisDone(Landroid/speech/tts/MessageParams;)V

    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleAudio(Landroid/speech/tts/MessageParams;)V

    goto :goto_0

    :cond_4
    iget v1, p1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->handleSilence(Landroid/speech/tts/MessageParams;)V

    goto :goto_0
.end method

.method private handleSilence(Landroid/speech/tts/MessageParams;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Landroid/speech/tts/SilenceMessageParams;

    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getSilenceDurationMs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getConditionVariable()Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getSilenceDurationMs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    :cond_0
    invoke-virtual {v0}, Landroid/speech/tts/SilenceMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnDone()V

    return-void
.end method

.method private handleSynthesisDataAvailable(Landroid/speech/tts/MessageParams;)V
    .locals 9

    move-object v3, p1

    check-cast v3, Landroid/speech/tts/SynthesisMessageParams;

    invoke-virtual {v3}, Landroid/speech/tts/SynthesisMessageParams;->getAudioTrack()Landroid/media/AudioTrack;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, "TTS.AudioPlaybackHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error : null audio track in handleDataAvailable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    if-eq v3, v6, :cond_1

    const-string v6, "TTS.AudioPlaybackHandler"

    const-string v7, "Call to dataAvailable without done() / start()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/speech/tts/SynthesisMessageParams;->getAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v3}, Landroid/speech/tts/SynthesisMessageParams;->getNextBuffer()Landroid/speech/tts/SynthesisMessageParams$ListEntry;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v6, "TTS.AudioPlaybackHandler"

    const-string v7, "No buffers available to play."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget-object v6, v1, Landroid/speech/tts/SynthesisMessageParams$ListEntry;->mBytes:[B

    array-length v6, v6

    if-ge v2, v6, :cond_4

    iget-object v6, v1, Landroid/speech/tts/SynthesisMessageParams$ListEntry;->mBytes:[B

    iget-object v7, v1, Landroid/speech/tts/SynthesisMessageParams$ListEntry;->mBytes:[B

    array-length v7, v7

    invoke-virtual {v0, v6, v2, v7}, Landroid/media/AudioTrack;->write([BII)I

    move-result v5

    if-gtz v5, :cond_5

    :cond_4
    iget v6, v3, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    add-int/2addr v6, v2

    iput v6, v3, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    iget-object v6, v3, Landroid/speech/tts/SynthesisMessageParams;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v6}, Landroid/speech/tts/EventLogger;->onPlaybackStart()V

    goto :goto_0

    :cond_5
    add-int/2addr v2, v5

    goto :goto_1
.end method

.method private handleSynthesisDone(Landroid/speech/tts/MessageParams;)V
    .locals 5

    const/4 v4, 0x0

    move-object v1, p1

    check-cast v1, Landroid/speech/tts/SynthesisMessageParams;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisMessageParams;->getAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, v1, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    iget v3, v1, Landroid/speech/tts/SynthesisMessageParams;->mAudioBufferSize:I

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/speech/tts/SynthesisMessageParams;->mIsShortUtterance:Z

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_1
    invoke-static {v1}, Landroid/speech/tts/AudioPlaybackHandler;->blockUntilDone(Landroid/speech/tts/SynthesisMessageParams;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/speech/tts/SynthesisMessageParams;->setAudioTrack(Landroid/media/AudioTrack;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisMessageParams;->isError()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v2

    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    :goto_1
    iput-object v4, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    iget-object v2, v1, Landroid/speech/tts/SynthesisMessageParams;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v2}, Landroid/speech/tts/EventLogger;->onWriteData()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisMessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v2

    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnDone()V

    goto :goto_1
.end method

.method private handleSynthesisStart(Landroid/speech/tts/MessageParams;)V
    .locals 5

    move-object v1, p1

    check-cast v1, Landroid/speech/tts/SynthesisMessageParams;

    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    if-eqz v2, :cond_0

    const-string v2, "TTS.AudioPlaybackHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : Missing call to done() for request : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    invoke-direct {p0, v2}, Landroid/speech/tts/AudioPlaybackHandler;->handleSynthesisDone(Landroid/speech/tts/MessageParams;)V

    :cond_0
    iput-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    invoke-static {v1}, Landroid/speech/tts/AudioPlaybackHandler;->createStreamingAudioTrack(Landroid/speech/tts/SynthesisMessageParams;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/speech/tts/SynthesisMessageParams;->setAudioTrack(Landroid/media/AudioTrack;)V

    invoke-virtual {p1}, Landroid/speech/tts/MessageParams;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v2

    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    return-void
.end method

.method private declared-synchronized removeAllMessages()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    iget-object v2, v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mMessage:Landroid/speech/tts/MessageParams;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mMessage:Landroid/speech/tts/MessageParams;

    invoke-virtual {v2}, Landroid/speech/tts/MessageParams;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    monitor-exit p0

    return-void
.end method

.method private setCurrentParams(Landroid/speech/tts/MessageParams;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentParams:Landroid/speech/tts/MessageParams;

    return-void
.end method

.method private static setupVolume(Landroid/media/AudioTrack;FF)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    invoke-static {p1, v6, v5}, Landroid/speech/tts/AudioPlaybackHandler;->clip(FFF)F

    move-result v1

    const/high16 v4, -0x4080

    invoke-static {p2, v4, v5}, Landroid/speech/tts/AudioPlaybackHandler;->clip(FFF)F

    move-result v0

    move v2, v1

    move v3, v1

    cmpl-float v4, v0, v6

    if-lez v4, :cond_2

    sub-float v4, v5, v0

    mul-float/2addr v2, v4

    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v3}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "TTS.AudioPlaybackHandler"

    const-string v5, "Failed to set volume"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    cmpg-float v4, v0, v6

    if-gez v4, :cond_0

    add-float v4, v5, v0

    mul-float/2addr v3, v4

    goto :goto_0
.end method

.method private stop(Landroid/speech/tts/MessageParams;)V
    .locals 8

    const/4 v2, 0x3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/speech/tts/MessageParams;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/speech/tts/SynthesisMessageParams;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisMessageParams;->getAudioTrack()Landroid/media/AudioTrack;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/media/AudioTrack;->stop()V

    :cond_2
    iget-object v7, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;ILandroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/speech/tts/MessageParams;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    check-cast p1, Landroid/speech/tts/AudioMessageParams;

    invoke-virtual {p1}, Landroid/speech/tts/AudioMessageParams;->getPlayer()Landroid/speech/tts/BlockingMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/BlockingMediaPlayer;->stop()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/speech/tts/MessageParams;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    check-cast p1, Landroid/speech/tts/SilenceMessageParams;

    invoke-virtual {p1}, Landroid/speech/tts/SilenceMessageParams;->getConditionVariable()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized enqueueAudio(Landroid/speech/tts/AudioMessageParams;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueSilence(Landroid/speech/tts/SilenceMessageParams;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueSynthesisDataAvailable(Landroid/speech/tts/SynthesisMessageParams;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueSynthesisDone(Landroid/speech/tts/SynthesisMessageParams;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueSynthesisStart(Landroid/speech/tts/SynthesisMessageParams;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;Landroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSpeaking()Z
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mCurrentParams:Landroid/speech/tts/MessageParams;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized quit()V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->removeAllMessages()V

    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->getCurrentParams()Landroid/speech/tts/MessageParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V

    iget-object v6, p0, Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;-><init>(Landroid/speech/tts/AudioPlaybackHandler;ILandroid/speech/tts/MessageParams;ILandroid/speech/tts/AudioPlaybackHandler$1;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllItems()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->removeAllMessages()V

    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->getCurrentParams()Landroid/speech/tts/MessageParams;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V

    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removePlaybackItems(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler;->removeMessages(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackHandler;->getCurrentParams()Landroid/speech/tts/MessageParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/MessageParams;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V

    :cond_0
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler;->mLastSynthesisRequest:Landroid/speech/tts/SynthesisMessageParams;

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    invoke-virtual {v1}, Landroid/speech/tts/MessageParams;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->stop(Landroid/speech/tts/MessageParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler;->mHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
