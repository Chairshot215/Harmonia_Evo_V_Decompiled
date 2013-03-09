.class Lcom/htc/android/worldclock/TimerKlaxon;
.super Ljava/lang/Object;
.source "TimerKlaxon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/TimerKlaxon$StopCallback;,
        Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;
    }
.end annotation


# static fields
.field static final ICICLE_PLAYING:Ljava/lang/String; = "IciclePlaying"

.field static final TIMER_TIMEOUT_SECONDS:I = 0x3c

.field private static sInstance:Lcom/htc/android/worldclock/TimerKlaxon;


# instance fields
.field private mAlert:Ljava/lang/String;

.field private mEnableStopCallback:Z

.field private mKillerCallback:Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlaying:Z

.field private mStopCallback:Lcom/htc/android/worldclock/TimerKlaxon$StopCallback;

.field private mTimeout:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mEnableStopCallback:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mPlaying:Z

    .line 69
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/TimerKlaxon;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/android/worldclock/TimerKlaxon;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/TimerKlaxon;)Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mKillerCallback:Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;

    return-object v0
.end method

.method private disableKiller()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 208
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mTimeout:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mTimeout:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 210
    iput-object v1, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mTimeout:Ljava/lang/Thread;

    .line 211
    iput-object v1, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mKillerCallback:Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;

    .line 213
    :cond_0
    return-void
.end method

.method private enableKiller()V
    .locals 2

    .prologue
    .line 189
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 190
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/TimerKlaxon$3;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/TimerKlaxon$3;-><init>(Lcom/htc/android/worldclock/TimerKlaxon;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mTimeout:Ljava/lang/Thread;

    .line 203
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mTimeout:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/htc/android/worldclock/TimerKlaxon;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/htc/android/worldclock/TimerKlaxon;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 62
    sget-object v0, Lcom/htc/android/worldclock/TimerKlaxon;->sInstance:Lcom/htc/android/worldclock/TimerKlaxon;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/htc/android/worldclock/TimerKlaxon;

    invoke-direct {v0}, Lcom/htc/android/worldclock/TimerKlaxon;-><init>()V

    sput-object v0, Lcom/htc/android/worldclock/TimerKlaxon;->sInstance:Lcom/htc/android/worldclock/TimerKlaxon;

    .line 65
    :cond_0
    sget-object v0, Lcom/htc/android/worldclock/TimerKlaxon;->sInstance:Lcom/htc/android/worldclock/TimerKlaxon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method declared-synchronized play(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 74
    iget-boolean v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mPlaying:Z

    if-eqz v3, :cond_0

    .line 75
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mEnableStopCallback:Z

    .line 76
    invoke-virtual {p0, p1}, Lcom/htc/android/worldclock/TimerKlaxon;->stop(Landroid/content/Context;)V

    .line 77
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mEnableStopCallback:Z

    .line 80
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimerKlaxon.play()  alert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mAlert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getAlertSoundUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mAlert:Ljava/lang/String;

    .line 84
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mAlert:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 85
    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getDefaultAlertSoundUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mAlert:Ljava/lang/String;

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mAlert:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 88
    const-string v3, "Unable to play alarm: no audio file available"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 130
    :goto_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 131
    .local v2, state:I
    if-eqz v2, :cond_2

    .line 132
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/worldclock/TimerKlaxon$2;

    invoke-direct {v4, p0}, Lcom/htc/android/worldclock/TimerKlaxon$2;-><init>(Lcom/htc/android/worldclock/TimerKlaxon;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerKlaxon;->enableKiller()V

    .line 141
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 92
    .end local v2           #state:I
    :cond_3
    :try_start_1
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 93
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_4

    .line 94
    const-string v3, "Unable to instantiate MediaPlayer"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 96
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/htc/android/worldclock/TimerKlaxon$1;

    invoke-direct {v4, p0}, Lcom/htc/android/worldclock/TimerKlaxon$1;-><init>(Lcom/htc/android/worldclock/TimerKlaxon;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mAlert:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 109
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 110
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 111
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 112
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 113
    const-string v3, "TimerKlaxon.play()  mMediaPlayer.start() done"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "Reltry to play default alarm"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    :try_start_5
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {p1}, Lcom/htc/android/worldclock/PreferencesUtil;->getDefaultAlertSoundUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 118
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 119
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 120
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 121
    iget-object v3, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 122
    const-string v3, "TimerKlaxon.play()  mMediaPlayer.start() done"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 123
    :catch_1
    move-exception v1

    .line 124
    .local v1, ex2:Ljava/lang/Exception;
    :try_start_6
    const-string v3, "Error playing alarm"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method setKillerCallback(Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;)V
    .locals 0
    .parameter "killerCallback"

    .prologue
    .line 172
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 173
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mKillerCallback:Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;

    .line 174
    return-void
.end method

.method setStopCallback(Lcom/htc/android/worldclock/TimerKlaxon$StopCallback;)V
    .locals 0
    .parameter "stopCallback"

    .prologue
    .line 177
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 178
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mStopCallback:Lcom/htc/android/worldclock/TimerKlaxon$StopCallback;

    .line 179
    return-void
.end method

.method declared-synchronized stop(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 149
    const-string v0, "TimerKlaxon.stop()"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 150
    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mPlaying:Z

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mPlaying:Z

    .line 154
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 156
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 159
    :cond_0
    const-string v0, "TimerKlaxon.stop(), mMediaPlayer done"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mEnableStopCallback:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mStopCallback:Lcom/htc/android/worldclock/TimerKlaxon$StopCallback;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mStopCallback:Lcom/htc/android/worldclock/TimerKlaxon$StopCallback;

    invoke-interface {v0}, Lcom/htc/android/worldclock/TimerKlaxon$StopCallback;->onStopped()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerKlaxon;->mStopCallback:Lcom/htc/android/worldclock/TimerKlaxon$StopCallback;

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerKlaxon;->disableKiller()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
