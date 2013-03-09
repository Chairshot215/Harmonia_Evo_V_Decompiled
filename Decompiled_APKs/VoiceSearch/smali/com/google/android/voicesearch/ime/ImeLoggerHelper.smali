.class public Lcom/google/android/voicesearch/ime/ImeLoggerHelper;
.super Ljava/lang/Object;
.source "ImeLoggerHelper.java"


# instance fields
.field private mActive:Z

.field private mDoneTimestamp:J

.field private mFirstImeRun:Z

.field private mStartTimestamp:J

.field private final mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private mWaitingForResult:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 45
    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->imeDone()V

    .line 74
    invoke-static {}, Lcom/google/android/voicesearch/VoiceSearchClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mDoneTimestamp:J

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mActive:Z

    .line 76
    return-void
.end method

.method public onEndSession()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 123
    iget-wide v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mStartTimestamp:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-static {}, Lcom/google/android/voicesearch/VoiceSearchClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mStartTimestamp:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->imeSession(J)V

    .line 125
    iput-wide v5, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mStartTimestamp:J

    .line 127
    :cond_0
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->imeError()V

    .line 85
    return-void
.end method

.method public onFinishInput()V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mActive:Z

    if-eqz v0, :cond_0

    .line 148
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->imeInterruptedWhileWaitingForResults()V

    .line 154
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mActive:Z

    .line 155
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->imeInterrupted()V

    goto :goto_0
.end method

.method public onHideWindow()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->onEndSession()V

    .line 116
    return-void
.end method

.method public onResults()V
    .locals 5

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mDoneTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-static {}, Lcom/google/android/voicesearch/VoiceSearchClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mDoneTimestamp:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->imeLatencyAfterDone(J)V

    .line 98
    :cond_0
    return-void
.end method

.method public onShowWindow()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mFirstImeRun:Z

    .line 107
    return-void
.end method

.method public onStartInputView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mFirstImeRun:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/google/android/voicesearch/VoiceSearchClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mStartTimestamp:J

    .line 56
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->imeStart()V

    .line 60
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mActive:Z

    .line 61
    iput-boolean v2, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mFirstImeRun:Z

    .line 62
    iput-boolean v2, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mWaitingForResult:Z

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mDoneTimestamp:J

    .line 64
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mVoiceSearchLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->imeStartJump()V

    goto :goto_0
.end method

.method public setWaitingForResult(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->mWaitingForResult:Z

    .line 162
    return-void
.end method
