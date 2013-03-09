.class public Lcom/android/CSDFunctionG/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/CSDFunctionG/AudioRecorder$OnStateChangedListener;
    }
.end annotation


# static fields
.field public static final IDLE_STATE:I = 0x0

.field public static final INTERNAL_ERROR:I = 0x2

.field public static final NO_ERROR:I = 0x0

.field public static final PLAYING_STATE:I = 0x2

.field public static final RECORDING_STATE:I = 0x1

.field static final SAMPLE_EXTENSION:Ljava/lang/String; = ".3gpp"

.field static final SAMPLE_LENGTH_KEY:Ljava/lang/String; = "sample_length"

.field static final SAMPLE_PATH_KEY:Ljava/lang/String; = "sample_path"

.field static final SAMPLE_PREFIX:Ljava/lang/String; = "recording"

.field public static final SDCARD_ACCESS_ERROR:I = 0x1


# instance fields
.field TAG:Ljava/lang/String;

.field fd:Ljava/io/FileDescriptor;

.field mOnStateChangedListener:Lcom/android/CSDFunctionG/AudioRecorder$OnStateChangedListener;

.field mPlayer:Landroid/media/MediaPlayer;

.field mRecorder:Landroid/media/MediaRecorder;

.field mSampleFile:Ljava/io/File;

.field mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "GSD-AudioRecorder"

    iput-object v0, p0, Lcom/android/CSDFunctionG/AudioRecorder;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mState:I

    .line 36
    iput-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mOnStateChangedListener:Lcom/android/CSDFunctionG/AudioRecorder$OnStateChangedListener;

    .line 40
    iput-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mSampleFile:Ljava/io/File;

    .line 48
    return-void
.end method

.method private setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 293
    iget v0, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mState:I

    if-ne p1, v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 296
    :cond_0
    iget v0, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 303
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 305
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    const v1, 0x7f020027

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/AudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iput p1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mState:I

    .line 312
    iget v0, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mState:I

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/AudioRecorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method private signalStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mOnStateChangedListener:Lcom/android/CSDFunctionG/AudioRecorder$OnStateChangedListener;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mOnStateChangedListener:Lcom/android/CSDFunctionG/AudioRecorder$OnStateChangedListener;

    invoke-interface {v1, p1}, Lcom/android/CSDFunctionG/AudioRecorder$OnStateChangedListener;->onStateChanged(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 324
    .local v0, t:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio ... signalStateChanged exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/AudioRecorder;->stop()V

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mSampleFile:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 65
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/Intrecodering.3gpp"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, sampleDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0           #sampleDir:Ljava/io/File;
    :goto_0
    iput-object v5, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mSampleFile:Ljava/io/File;

    .line 76
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/CSDFunctionG/AudioRecorder;->signalStateChanged(I)V

    .line 78
    iget-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_1

    .line 81
    iput-object v5, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 86
    iput-object v5, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 88
    :cond_2
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 70
    .local v1, t:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio ... delete exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/AudioRecorder;->stop()V

    .line 289
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/CSDFunctionG/AudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "AudioRecorder - onError()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/AudioRecorder;->stop()V

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public setOnStateChangedListener(Lcom/android/CSDFunctionG/AudioRecorder$OnStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mOnStateChangedListener:Lcom/android/CSDFunctionG/AudioRecorder$OnStateChangedListener;

    .line 54
    return-void
.end method

.method public startPlayback()V
    .locals 5

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/AudioRecorder;->stop()V

    .line 213
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 217
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v2, "/data/Intrecodering.3gpp"

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, ins:Ljava/io/FileInputStream;
    iget-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 220
    iget-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 221
    iget-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 222
    iget-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    const/high16 v3, 0x4316

    const/high16 v4, 0x4316

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 223
    iget-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 224
    iget-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/CSDFunctionG/AudioRecorder;->setState(I)V

    .line 236
    .end local v0           #ins:Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v1

    .line 228
    .local v1, t:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPlayback .... SDCARD_ACCESS_ERROR - IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public startRecording()V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/AudioRecorder;->stop()V

    .line 120
    :try_start_0
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 121
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 122
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 123
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 124
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const-string v2, "/data/Intrecodering.3gpp"

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 126
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 129
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/CSDFunctionG/AudioRecorder;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, t:Ljava/lang/Throwable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 134
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio ... startRecording(MediaRecorder) exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRecordingheadset()V
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/AudioRecorder;->stop()V

    .line 163
    :try_start_0
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 164
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 165
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 166
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 167
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const-string v2, "/data/Intrecodering.3gpp"

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 169
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 171
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/CSDFunctionG/AudioRecorder;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, t:Ljava/lang/Throwable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 176
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio ... startRecording(MediaRecorder) exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/AudioRecorder;->stopRecording()V

    .line 93
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/AudioRecorder;->stopPlayback()V

    .line 94
    return-void
.end method

.method public stopPlayback()V
    .locals 4

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->TAG:Ljava/lang/String;

    const-string v2, "AudioRecorder - stopPlayback ... mPlayer == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void

    .line 248
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 249
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 250
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 251
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/CSDFunctionG/AudioRecorder;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 255
    .local v0, t:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio ... stopPlayback exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->TAG:Ljava/lang/String;

    const-string v2, "AudioRecorder - stopRecording ... mRecorder == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 191
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 192
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 196
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/CSDFunctionG/AudioRecorder;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 201
    .local v0, t:Ljava/lang/Throwable;
    iput-object v2, p0, Lcom/android/CSDFunctionG/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 202
    iget-object v1, p0, Lcom/android/CSDFunctionG/AudioRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio ... stopRecording exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
