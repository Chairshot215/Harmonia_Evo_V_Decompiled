.class public Lcom/htc/Weather/SoundEffect;
.super Ljava/lang/Object;
.source "SoundEffect.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field public static final LOG_FLAG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "WeatherSound"

.field private static final MSG_FADEOUT:I = 0x1

.field private static final MSG_RELEASE:I = 0x2

.field private static final MSG_START:I = 0x0

.field public static SETTING_KEY_SYNC_SOUND:Ljava/lang/String; = null

.field private static final STATE_FADEOUT:I = 0xc

.field private static final STATE_INIT:I = 0xa

.field private static final STATE_PLAYING:I = 0xb

.field private static final STATE_STOP:I = 0xd

.field private static final mMapToWeatherSound:[I

.field private static pathRaw:[I


# instance fields
.field private conditionId:I

.field private isNeedStart:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mbSoundOn:Z

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/Weather/SoundEffect;->pathRaw:[I

    const/16 v0, 0x37

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/Weather/SoundEffect;->mMapToWeatherSound:[I

    const-string v0, "com.htc.Weather.SoundsMap"

    sput-object v0, Lcom/htc/Weather/SoundEffect;->SETTING_KEY_SYNC_SOUND:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x23t 0x0t 0x6t 0x2t
        0x24t 0x0t 0x6t 0x2t
        0x25t 0x0t 0x6t 0x2t
        0x26t 0x0t 0x6t 0x2t
        0x27t 0x0t 0x6t 0x2t
        0x28t 0x0t 0x6t 0x2t
        0x29t 0x0t 0x6t 0x2t
        0x2at 0x0t 0x6t 0x2t
        0x26t 0x0t 0x6t 0x2t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/SoundEffect;->mbSoundOn:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/Weather/SoundEffect;->state:I

    iput-boolean v1, p0, Lcom/htc/Weather/SoundEffect;->isNeedStart:Z

    iput v1, p0, Lcom/htc/Weather/SoundEffect;->conditionId:I

    new-instance v0, Lcom/htc/Weather/SoundEffect$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/SoundEffect$1;-><init>(Lcom/htc/Weather/SoundEffect;)V

    iput-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/htc/Weather/SoundEffect;I)I
    .locals 0

    iput p1, p0, Lcom/htc/Weather/SoundEffect;->state:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/Weather/SoundEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/Weather/SoundEffect;->start()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/Weather/SoundEffect;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/Weather/SoundEffect;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/Weather/SoundEffect;->setVolume(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/Weather/SoundEffect;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/Weather/SoundEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/Weather/SoundEffect;->forceReleaseMediaPlayer()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/Weather/SoundEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/Weather/SoundEffect;->checkNeedRestart()V

    return-void
.end method

.method private checkNeedRestart()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/Weather/SoundEffect;->isNeedStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v1, p0, Lcom/htc/Weather/SoundEffect;->isNeedStart:Z

    :cond_0
    return-void
.end method

.method private forceReleaseMediaPlayer()V
    .locals 5

    const/4 v4, 0x0

    const/16 v1, 0xd

    iput v1, p0, Lcom/htc/Weather/SoundEffect;->state:I

    iget-object v1, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    iget-object v1, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v4, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "WeatherSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceReleaseMediaPlayer() - Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    iget-object v1, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v4, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    iget-object v2, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    iput-object v4, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    throw v1
.end method

.method private setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method private start()V
    .locals 7

    const/16 v6, 0xd

    iget-boolean v3, p0, Lcom/htc/Weather/SoundEffect;->mbSoundOn:Z

    if-nez v3, :cond_0

    iput v6, p0, Lcom/htc/Weather/SoundEffect;->state:I

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/htc/Weather/SoundEffect;->conditionId:I

    const/16 v4, 0x37

    if-ge v3, v4, :cond_5

    iget v3, p0, Lcom/htc/Weather/SoundEffect;->conditionId:I

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    if-eqz v3, :cond_1

    iput v6, p0, Lcom/htc/Weather/SoundEffect;->state:I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_2

    iput v6, p0, Lcom/htc/Weather/SoundEffect;->state:I

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/htc/Weather/SoundEffect;->mMapToWeatherSound:[I

    iget v4, p0, Lcom/htc/Weather/SoundEffect;->conditionId:I

    aget v1, v3, v4

    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    iput v6, p0, Lcom/htc/Weather/SoundEffect;->state:I

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/htc/Weather/SoundEffect;->pathRaw:[I

    aget v2, v3, v1

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x28

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :goto_1
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/htc/Weather/SoundEffect;->createPlayerbyRes(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :try_start_0
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "WeatherSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t start media: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    iput v6, p0, Lcom/htc/Weather/SoundEffect;->state:I

    invoke-direct {p0}, Lcom/htc/Weather/SoundEffect;->forceReleaseMediaPlayer()V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_1

    :cond_5
    iput v6, p0, Lcom/htc/Weather/SoundEffect;->state:I

    goto/16 :goto_0
.end method


# virtual methods
.method public createPlayerbyRes(Landroid/content/Context;I)V
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "WeatherSound"

    const-string v1, "create failed:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v7

    const-string v0, "WeatherSound"

    const-string v1, "create failed:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v7

    const-string v0, "WeatherSound"

    const-string v1, "create failed:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v7

    const-string v0, "WeatherSound"

    const-string v1, "IllegalStateException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/Weather/SoundEffect;->state:I

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Lcom/htc/Weather/SoundEffect;->checkNeedRestart()V

    :cond_0
    return-void
.end method

.method public releaseMediaPalyer()V
    .locals 2

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setSoundOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/Weather/SoundEffect;->mbSoundOn:Z

    return-void
.end method

.method public startMediaPlayer(I)V
    .locals 2

    iput p1, p0, Lcom/htc/Weather/SoundEffect;->conditionId:I

    iget v0, p0, Lcom/htc/Weather/SoundEffect;->state:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/Weather/SoundEffect;->state:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/SoundEffect;->isNeedStart:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
