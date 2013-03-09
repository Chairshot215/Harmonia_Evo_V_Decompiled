.class Landroid/speech/tts/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"


# instance fields
.field private final mCallingApp:Ljava/lang/String;

.field private volatile mEngineCompleteTime:J

.field private volatile mEngineStartTime:J

.field private volatile mError:Z

.field private mLogWritten:Z

.field private mPlaybackStartTime:J

.field private final mReceivedTime:J

.field private final mRequest:Landroid/speech/tts/SynthesisRequest;

.field private volatile mRequestProcessingStartTime:J

.field private final mServiceApp:Ljava/lang/String;

.field private volatile mStopped:Z


# direct methods
.method constructor <init>(Landroid/speech/tts/SynthesisRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mRequestProcessingStartTime:J

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineStartTime:J

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineCompleteTime:J

    iput-boolean v2, p0, Landroid/speech/tts/EventLogger;->mError:Z

    iput-boolean v2, p0, Landroid/speech/tts/EventLogger;->mStopped:Z

    iput-boolean v2, p0, Landroid/speech/tts/EventLogger;->mLogWritten:Z

    iput-object p1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    iput-object p2, p0, Landroid/speech/tts/EventLogger;->mCallingApp:Ljava/lang/String;

    iput-object p3, p0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mReceivedTime:J

    return-void
.end method

.method private getLocaleString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2d

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUtteranceLength()I
    .locals 2

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onEngineComplete()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineCompleteTime:J

    return-void
.end method

.method public onEngineDataReceived()V
    .locals 4

    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineStartTime:J

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/EventLogger;->mError:Z

    return-void
.end method

.method public onPlaybackStart()V
    .locals 4

    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    :cond_0
    return-void
.end method

.method public onRequestProcessingStart()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mRequestProcessingStartTime:J

    return-void
.end method

.method public onStopped()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/EventLogger;->mStopped:Z

    return-void
.end method

.method public onWriteData()V
    .locals 14

    const-wide/16 v2, -0x1

    iget-boolean v0, p0, Landroid/speech/tts/EventLogger;->mLogWritten:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/EventLogger;->mLogWritten:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-boolean v0, p0, Landroid/speech/tts/EventLogger;->mError:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineCompleteTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mCallingApp:Ljava/lang/String;

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    move-result v2

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v4}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v4

    iget-object v5, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v5}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v5

    invoke-static/range {v0 .. v5}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakFailure(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroid/speech/tts/EventLogger;->mStopped:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    iget-wide v2, p0, Landroid/speech/tts/EventLogger;->mReceivedTime:J

    sub-long v10, v0, v2

    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineStartTime:J

    iget-wide v2, p0, Landroid/speech/tts/EventLogger;->mRequestProcessingStartTime:J

    sub-long v6, v0, v2

    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineCompleteTime:J

    iget-wide v2, p0, Landroid/speech/tts/EventLogger;->mRequestProcessingStartTime:J

    sub-long v8, v0, v2

    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mCallingApp:Ljava/lang/String;

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    move-result v2

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v4}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v4

    iget-object v5, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v5}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v5

    invoke-static/range {v0 .. v11}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakSuccess(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJJ)V

    goto :goto_0
.end method
