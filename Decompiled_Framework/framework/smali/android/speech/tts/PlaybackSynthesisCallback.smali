.class Landroid/speech/tts/PlaybackSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "PlaybackSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "PlaybackSynthesisRequest"


# instance fields
.field private final mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final mCallingApp:Ljava/lang/String;

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private volatile mDone:Z

.field private final mLogger:Landroid/speech/tts/EventLogger;

.field private final mPan:F

.field private final mStateLock:Ljava/lang/Object;

.field private mStopped:Z

.field private final mStreamType:I

.field private mToken:Landroid/speech/tts/SynthesisMessageParams;

.field private final mVolume:F


# direct methods
.method constructor <init>(IFFLandroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/String;Landroid/speech/tts/EventLogger;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    iput p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStreamType:I

    iput p2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mVolume:F

    iput p3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mPan:F

    iput-object p4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    iput-object p5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iput-object p6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallingApp:Ljava/lang/String;

    iput-object p7, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    return-void
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->getMaxBufferSize()I

    move-result v3

    if-gt p3, v3, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buffer is too large or of zero length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    if-eqz v4, :cond_3

    :cond_2
    const/4 v2, -0x1

    monitor-exit v3

    :goto_0
    return v2

    :cond_3
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1, v0}, Landroid/speech/tts/SynthesisMessageParams;->addBuffer([B)V

    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v3, v1}, Landroid/speech/tts/AudioPlaybackHandler;->enqueueSynthesisDataAvailable(Landroid/speech/tts/SynthesisMessageParams;)V

    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v3}, Landroid/speech/tts/EventLogger;->onEngineDataReceived()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public done()I
    .locals 5

    const/4 v1, -0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    if-eqz v3, :cond_0

    const-string v3, "PlaybackSynthesisRequest"

    const-string v4, "Duplicate call to done()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    if-nez v3, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v1, v0}, Landroid/speech/tts/AudioPlaybackHandler;->enqueueSynthesisDone(Landroid/speech/tts/SynthesisMessageParams;)V

    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v1}, Landroid/speech/tts/EventLogger;->onEngineComplete()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public error()V
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v0}, Landroid/speech/tts/EventLogger;->onError()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/speech/tts/PlaybackSynthesisCallback;->stopImpl(Z)V

    return-void
.end method

.method public getMaxBufferSize()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method isDone()Z
    .locals 1

    iget-boolean v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    return v0
.end method

.method public start(III)I
    .locals 12

    const/4 v1, -0x1

    invoke-static {p3}, Landroid/speech/tts/AudioPlaybackHandler;->getChannelConfig(I)I

    move-result v10

    if-nez v10, :cond_0

    const-string v2, "PlaybackSynthesisRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported number of channels :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v11, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    if-eqz v2, :cond_1

    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    new-instance v0, Landroid/speech/tts/SynthesisMessageParams;

    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStreamType:I

    iget v5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mVolume:F

    iget v6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mPan:F

    iget-object v7, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget-object v8, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallingApp:Ljava/lang/String;

    iget-object v9, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v9}, Landroid/speech/tts/SynthesisMessageParams;-><init>(IIIIFFLandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/String;Landroid/speech/tts/EventLogger;)V

    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v1, v0}, Landroid/speech/tts/AudioPlaybackHandler;->enqueueSynthesisStart(Landroid/speech/tts/SynthesisMessageParams;)V

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/speech/tts/PlaybackSynthesisCallback;->stopImpl(Z)V

    return-void
.end method

.method stopImpl(Z)V
    .locals 4

    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v1}, Landroid/speech/tts/EventLogger;->onStopped()V

    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    if-eqz v1, :cond_1

    const-string v1, "PlaybackSynthesisRequest"

    const-string/jumbo v3, "stop() called twice"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mToken:Landroid/speech/tts/SynthesisMessageParams;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/speech/tts/SynthesisMessageParams;->setIsError(Z)V

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisMessageParams;->clearBuffers()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v1, v0}, Landroid/speech/tts/AudioPlaybackHandler;->enqueueSynthesisDone(Landroid/speech/tts/SynthesisMessageParams;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v1}, Landroid/speech/tts/EventLogger;->onWriteData()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    goto :goto_0
.end method
