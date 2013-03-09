.class public Lcom/android/CSDFunctionG/Playaudio;
.super Ljava/lang/Thread;
.source "Playaudio.java"


# static fields
.field static final TAG:Ljava/lang/String; = "GSD_Playaudio"

.field static bIsSDAudio:Z = false

.field static stopplay:Z = false

.field static final strRcvAudio:Ljava/lang/String; = "/sdcard/rcvtest.wav"

.field static final strWavAudio:Ljava/lang/String; = "/sdcard/wavetest.wav"


# instance fields
.field public context:Landroid/content/Context;

.field miCycle:I

.field miErrorCode:I

.field miLED:I

.field mstrLED:Ljava/lang/String;

.field nLedNums:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lcom/android/CSDFunctionG/Playaudio;->bIsSDAudio:Z

    .line 15
    sput-boolean v0, Lcom/android/CSDFunctionG/Playaudio;->stopplay:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 13
    const-string v0, "LED"

    iput-object v0, p0, Lcom/android/CSDFunctionG/Playaudio;->mstrLED:Ljava/lang/String;

    .line 17
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/CSDFunctionG/Playaudio;->nLedNums:I

    return-void
.end method

.method public static CheckWhichOneFileExist(Ljava/lang/String;)Z
    .locals 5
    .parameter "audiopath"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const-string v2, "GSD_Playaudio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "....WAV file is found("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sput-boolean v1, Lcom/android/CSDFunctionG/Playaudio;->bIsSDAudio:Z

    .line 128
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v1

    .line 133
    :cond_0
    const-string v1, "GSD_Playaudio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "....WAV file is not found("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sput-boolean v2, Lcom/android/CSDFunctionG/Playaudio;->bIsSDAudio:Z

    .line 135
    const/4 v0, 0x0

    move v1, v2

    .line 136
    goto :goto_0
.end method


# virtual methods
.method public End()Z
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x1

    .line 83
    .local v0, bRet:Z
    const-string v1, "GSD_Playaudio"

    const-string v2, "End.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v0
.end method

.method public Init()Z
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    .line 28
    .local v0, bRet:Z
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/CSDFunctionG/Playaudio;->miCycle:I

    .line 30
    const-string v1, "GSD_Playaudio"

    const-string v2, "Init.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return v0
.end method

.method public PlayWave()Z
    .locals 6

    .prologue
    .line 38
    const/4 v0, 0x1

    .line 40
    .local v0, bR:Z
    sget-boolean v3, Lcom/android/CSDFunctionG/Playaudio;->bIsSDAudio:Z

    if-eqz v3, :cond_0

    .line 43
    :try_start_0
    const-string v3, "GSD_Playaudio"

    const-string v4, "...Play SD WAV file"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 52
    .local v1, mPlayer:Landroid/media/MediaPlayer;
    const/high16 v3, 0x4316

    const/high16 v4, 0x4316

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 53
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 54
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    .end local v1           #mPlayer:Landroid/media/MediaPlayer;
    :cond_0
    :goto_1
    return v0

    .line 64
    :catch_0
    move-exception v2

    .line 66
    .local v2, t:Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 68
    const-string v3, "GSD_Playaudio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPlayback .... SDCARD_ACCESS_ERROR - IOException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 58
    .end local v2           #t:Ljava/lang/Throwable;
    .restart local v1       #mPlayer:Landroid/media/MediaPlayer;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Playaudio;->Init()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 95
    const-string v1, "GSD_Playaudio"

    const-string v2, "Run-Init-true.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Playaudio;->PlayWave()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    sget-boolean v1, Lcom/android/CSDFunctionG/audiotest;->stopplay:Z

    if-eqz v1, :cond_0

    .line 116
    :goto_1
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Playaudio;->End()Z

    .line 117
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "GSD_Playaudio"

    const-string v2, "RunTest(); ... exception was caught"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_1
    const-string v1, "GSD_Playaudio"

    const-string v2, "Run-Init-false.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
