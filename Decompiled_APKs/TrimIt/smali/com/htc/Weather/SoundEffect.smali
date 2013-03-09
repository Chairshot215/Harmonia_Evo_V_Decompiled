.class public Lcom/htc/Weather/SoundEffect;
.super Ljava/lang/Object;
.source "SoundEffect.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field private static final MSG_FADEOUT:I = 0x1

.field private static final MSG_RELEASE:I = 0x2

.field private static final MSG_START:I = 0x0

.field public static SETTING_KEY_SYNC_SOUND:Ljava/lang/String; = null

.field private static final STATE_FADEOUT:I = 0xc

.field private static final STATE_INIT:I = 0xa

.field private static final STATE_PLAYING:I = 0xb

.field private static final STATE_STOP:I = 0xd

.field public static final TAG:Ljava/lang/String; = "WeatherSound"

.field private static conditionId:I

.field private static isNeedStart:Z

.field private static final mMapToWeatherSound:[I

.field private static pathRaw:[I

.field private static state:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mbSoundOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 24
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/Weather/SoundEffect;->pathRaw:[I

    .line 27
    const/16 v0, 0x37

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/Weather/SoundEffect;->mMapToWeatherSound:[I

    .line 32
    const-string v0, "com.htc.Weather.SoundsMap"

    sput-object v0, Lcom/htc/Weather/SoundEffect;->SETTING_KEY_SYNC_SOUND:Ljava/lang/String;

    .line 43
    sput v2, Lcom/htc/Weather/SoundEffect;->state:I

    .line 44
    sput-boolean v1, Lcom/htc/Weather/SoundEffect;->isNeedStart:Z

    .line 45
    sput v1, Lcom/htc/Weather/SoundEffect;->conditionId:I

    return-void

    .line 24
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

    .line 27
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
    .locals 1
    .parameter "c"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/SoundEffect;->mbSoundOn:Z

    .line 157
    new-instance v0, Lcom/htc/Weather/SoundEffect$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/SoundEffect$1;-><init>(Lcom/htc/Weather/SoundEffect;)V

    iput-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/htc/Weather/SoundEffect;->state:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput p0, Lcom/htc/Weather/SoundEffect;->state:I

    return p0
.end method

.method static synthetic access$100(Lcom/htc/Weather/SoundEffect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/Weather/SoundEffect;->start()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/Weather/SoundEffect;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/Weather/SoundEffect;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/Weather/SoundEffect;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/Weather/SoundEffect;->setVolume(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/Weather/SoundEffect;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/Weather/SoundEffect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/Weather/SoundEffect;->checkNeedRestart()V

    return-void
.end method

.method private checkNeedRestart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->isNeedStart:Z

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "WeatherSound"

    const-string v1, "isNeedStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    sput-boolean v2, Lcom/htc/Weather/SoundEffect;->isNeedStart:Z

    .line 220
    :cond_0
    return-void
.end method

.method private setVolume(F)V
    .locals 1
    .parameter "vol"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 211
    :cond_0
    return-void
.end method

.method private start()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    .line 72
    const-string v3, "WeatherSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/Weather/SoundEffect;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-boolean v3, p0, Lcom/htc/Weather/SoundEffect;->mbSoundOn:Z

    if-nez v3, :cond_0

    .line 75
    sput v6, Lcom/htc/Weather/SoundEffect;->state:I

    .line 126
    :goto_0
    return-void

    .line 79
    :cond_0
    sget v3, Lcom/htc/Weather/SoundEffect;->conditionId:I

    const/16 v4, 0x37

    if-ge v3, v4, :cond_5

    sget v3, Lcom/htc/Weather/SoundEffect;->conditionId:I

    if-lez v3, :cond_5

    .line 81
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    .line 84
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    const-string v3, "WeatherSound"

    const-string v4, "mAudioManager.isSpeakerphoneOn()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sput v6, Lcom/htc/Weather/SoundEffect;->state:I

    goto :goto_0

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const-string v3, "WeatherSound"

    const-string v4, "mAudioManager.isMusicActive()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sput v6, Lcom/htc/Weather/SoundEffect;->state:I

    goto :goto_0

    .line 96
    :cond_2
    sget-object v3, Lcom/htc/Weather/SoundEffect;->mMapToWeatherSound:[I

    sget v4, Lcom/htc/Weather/SoundEffect;->conditionId:I

    aget v1, v3, v4

    .line 97
    .local v1, map:I
    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    .line 98
    const-string v3, "WeatherSound"

    const-string v4, "map == 9"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sput v6, Lcom/htc/Weather/SoundEffect;->state:I

    goto :goto_0

    .line 103
    :cond_3
    sget-object v3, Lcom/htc/Weather/SoundEffect;->pathRaw:[I

    aget v2, v3, v1

    .line 105
    .local v2, rawPath:I
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 106
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x28

    if-ne v3, v4, :cond_4

    .line 107
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 112
    :goto_1
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/htc/Weather/SoundEffect;->createPlayerbyRes(Landroid/content/Context;I)V

    .line 113
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 114
    const-string v3, "WeatherSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMediaPlayer.start();"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/Weather/SoundEffect;->conditionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :try_start_0
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/IllegalStateException;
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

    .line 119
    sput v6, Lcom/htc/Weather/SoundEffect;->state:I

    goto/16 :goto_0

    .line 109
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_4
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_1

    .line 122
    .end local v1           #map:I
    .end local v2           #rawPath:I
    :cond_5
    sput v6, Lcom/htc/Weather/SoundEffect;->state:I

    .line 123
    const-string v3, "WeatherSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal conditionId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/Weather/SoundEffect;->conditionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/Weather/SoundEffect;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public createPlayerbyRes(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "resid"

    .prologue
    .line 129
    const-string v0, "WeatherSound"

    const-string v1, "create in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 132
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_0

    .line 155
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-void

    .line 136
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 137
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 138
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 139
    const-string v0, "WeatherSound"

    const-string v1, "create out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 153
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_1
    const-string v0, "WeatherSound"

    const-string v1, "create out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :catch_0
    move-exception v7

    .line 141
    .local v7, ex:Ljava/io/IOException;
    const-string v0, "WeatherSound"

    const-string v1, "create failed:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 143
    .end local v7           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 144
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "WeatherSound"

    const-string v1, "create failed:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 146
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 147
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v0, "WeatherSound"

    const-string v1, "create failed:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 149
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v7

    .line 150
    .local v7, ex:Ljava/lang/IllegalStateException;
    const-string v0, "WeatherSound"

    const-string v1, "IllegalStateException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 232
    const-string v0, "WeatherSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/Weather/SoundEffect;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/16 v0, 0xa

    sput v0, Lcom/htc/Weather/SoundEffect;->state:I

    .line 234
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "WeatherSound"

    const-string v1, "mMediaPlayer onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/htc/Weather/SoundEffect;->checkNeedRestart()V

    .line 237
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 240
    :cond_0
    return-void
.end method

.method public releaseMediaPalyer()V
    .locals 3

    .prologue
    .line 223
    const-string v0, "WeatherSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseMediaPalyer(): state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/Weather/SoundEffect;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "WeatherSound"

    const-string v1, "mMediaPlayer releaseMediaPalyer()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    :cond_0
    return-void
.end method

.method public setSoundOn(Z)V
    .locals 0
    .parameter "sound"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/htc/Weather/SoundEffect;->mbSoundOn:Z

    .line 53
    return-void
.end method

.method public startMediaPlayer(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 57
    sput p1, Lcom/htc/Weather/SoundEffect;->conditionId:I

    .line 58
    const-string v0, "WeatherSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMediaPlayer: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/Weather/SoundEffect;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget v0, Lcom/htc/Weather/SoundEffect;->state:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    sget v0, Lcom/htc/Weather/SoundEffect;->state:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/Weather/SoundEffect;->isNeedStart:Z

    .line 62
    const-string v0, "WeatherSound"

    const-string v1, "startMediaPlayer: FADEOUT/RELEASE NEED TO BE DONE FIRST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
