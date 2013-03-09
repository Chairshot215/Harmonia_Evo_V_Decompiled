.class public final Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mStarted:Z


# direct methods
.method public constructor <init>(II)V
    .locals 10
    .parameter "sampleRate"
    .parameter "minBufferSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    const/4 v4, 0x2

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mStarted:Z

    .line 48
    const/4 v7, 0x6

    .line 49
    .local v7, audioSource:I
    const/16 v8, 0x10

    .line 50
    .local v8, channelConfig:I
    const/4 v6, 0x2

    .line 52
    .local v6, audioFormat:I
    invoke-static {p1, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    .line 54
    .local v9, minHardwareBufferSize:I
    invoke-static {v9, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 56
    .local v5, bufferSize:I
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    .line 59
    const-string v0, "MicrophoneInputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    .line 64
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    return-void
.end method

.method private ensureStarted()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-boolean v1, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mStarted:Z

    if-eqz v1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Ljava/io/IOException;

    const-string v2, "not open"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 79
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    .line 80
    .local v0, recordingState:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 81
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t start recording, state is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mStarted:Z

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    const-string v0, "MicrophoneInputStream"

    const-string v1, "#close - audio release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    iput-object v3, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    .line 131
    :cond_0
    return-void

    .line 127
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    throw v0

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    :try_start_2
    const-string v1, "MicrophoneInputStream"

    const-string v2, "#close - audio release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    iput-object v3, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    throw v0

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MicrophoneInputStream leaked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    return-void
.end method

.method public read()I
    .locals 2

    .prologue
    .line 89
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
    .line 94
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->ensureStarted()V

    .line 101
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 103
    .local v0, rtn:I
    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 104
    new-instance v1, Ljava/io/IOException;

    const-string v2, "not open"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 108
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bad offset/length arguments for buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_1
    return v0
.end method
