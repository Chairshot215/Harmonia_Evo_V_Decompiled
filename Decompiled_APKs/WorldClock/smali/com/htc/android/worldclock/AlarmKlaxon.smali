.class Lcom/htc/android/worldclock/AlarmKlaxon;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Lcom/htc/android/worldclock/Alarms$AlarmSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;,
        Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;
    }
.end annotation


# static fields
.field static final ALARM_TIMEOUT_SECONDS:I = 0x258

.field static final ICICLE_ALARMID:Ljava/lang/String; = "IcicleAlarmId"

.field static final ICICLE_PLAYING:Ljava/lang/String; = "IciclePlaying"

.field private static sInstance:Lcom/htc/android/worldclock/AlarmKlaxon;

.field private static sVibratePattern:[J


# instance fields
.field private mAlarmId:I

.field private mAlert:Ljava/lang/String;

.field private mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

.field private mEnableStopCallback:Z

.field private mKillerCallback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlaying:Z

.field private mStopCallback:Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;

.field private mTimeout:Ljava/lang/Thread;

.field private mVibrate:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/worldclock/AlarmKlaxon;->sVibratePattern:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mEnableStopCallback:Z

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mPlaying:Z

    .line 82
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 83
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/AlarmKlaxon;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mTimeout:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/AlarmKlaxon;)Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mKillerCallback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

    return-object v0
.end method

.method private disableKiller()V
    .locals 2

    .prologue
    .line 287
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mTimeout:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 290
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mTimeout:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 291
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mTimeout:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mKillerCallback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

    .line 293
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mTimeout:Ljava/lang/Thread;

    .line 296
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    return-void

    .line 293
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 296
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private enableKiller()V
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlarmKlaxon$3;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmKlaxon$3;-><init>(Lcom/htc/android/worldclock/AlarmKlaxon;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mTimeout:Ljava/lang/Thread;

    .line 282
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mTimeout:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 283
    monitor-exit p0

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDefaultAlarm(Landroid/content/Context;)Landroid/net/Uri;
    .locals 5
    .parameter "context"

    .prologue
    .line 300
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 302
    const/4 v2, 0x0

    .line 304
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/htc/android/worldclock/Global;->getAlarmSoundFromDB()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, alarm_sound:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/htc/android/worldclock/Global;->getAlarmAlertFromDB()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, alarm_alert:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 307
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 312
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-static {p1, v2}, Lcom/htc/android/worldclock/AlertUtils;->getRingToneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 313
    :cond_1
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 316
    :cond_2
    return-object v2

    .line 308
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method static declared-synchronized getInstance()Lcom/htc/android/worldclock/AlarmKlaxon;
    .locals 2

    .prologue
    .line 74
    const-class v1, Lcom/htc/android/worldclock/AlarmKlaxon;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 75
    sget-object v0, Lcom/htc/android/worldclock/AlarmKlaxon;->sInstance:Lcom/htc/android/worldclock/AlarmKlaxon;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/htc/android/worldclock/AlarmKlaxon;

    invoke-direct {v0}, Lcom/htc/android/worldclock/AlarmKlaxon;-><init>()V

    sput-object v0, Lcom/htc/android/worldclock/AlarmKlaxon;->sInstance:Lcom/htc/android/worldclock/AlarmKlaxon;

    .line 78
    :cond_0
    sget-object v0, Lcom/htc/android/worldclock/AlarmKlaxon;->sInstance:Lcom/htc/android/worldclock/AlarmKlaxon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method declared-synchronized mute(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmKlaxon.mute() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mAlarmId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 223
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mPlaying:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmKlaxon;->releasePlayer()V

    .line 226
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized play(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "alarmId"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 100
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 103
    .local v1, contentResolver:Landroid/content/ContentResolver;
    iget-boolean v8, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mPlaying:Z

    if-eqz v8, :cond_0

    .line 104
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mEnableStopCallback:Z

    .line 105
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8}, Lcom/htc/android/worldclock/AlarmKlaxon;->stop(Landroid/content/Context;Z)V

    .line 106
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mEnableStopCallback:Z

    .line 109
    :cond_0
    iput p2, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mAlarmId:I

    .line 112
    iget v8, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mAlarmId:I

    invoke-static {v1, p0, v8}, Lcom/htc/android/worldclock/Alarms;->getAlarm(Landroid/content/ContentResolver;Lcom/htc/android/worldclock/Alarms$AlarmSettings;I)V

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AlarmKlaxon.play() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mAlarmId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " alert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mAlert:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "mode_ringer_streams_affected"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 118
    .local v5, ringerModeStreamTypes:I
    and-int/lit8 v8, v5, 0x10

    if-nez v8, :cond_4

    .line 119
    .local v4, isAlarmInSilentMode:Z
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAlarmInSilentMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/worldclock/htclog/HtcLog;->i(Ljava/lang/String;)V

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alarm volume = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "volume_alarm"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/worldclock/htclog/HtcLog;->i(Ljava/lang/String;)V

    .line 123
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mAlert:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 124
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/AlarmKlaxon;->getDefaultAlarm(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    .local v0, alert:Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mAlert:Ljava/lang/String;

    .line 131
    .end local v0           #alert:Landroid/net/Uri;
    :cond_1
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 132
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mAlert:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 133
    :cond_2
    const-string v7, "Unable to instantiate MediaPlayer"

    invoke-static {v7}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 166
    :goto_1
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    .line 167
    .local v6, state:I
    if-eqz v6, :cond_3

    .line 168
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/htc/android/worldclock/AlarmKlaxon$2;

    invoke-direct {v8, p0}, Lcom/htc/android/worldclock/AlarmKlaxon$2;-><init>(Lcom/htc/android/worldclock/AlarmKlaxon;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 176
    :cond_3
    iget-boolean v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mVibrate:Z

    if-eqz v7, :cond_6

    if-nez v6, :cond_6

    .line 177
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    sget-object v8, Lcom/htc/android/worldclock/AlarmKlaxon;->sVibratePattern:[J

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 182
    :goto_2
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmKlaxon;->enableKiller()V

    .line 183
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .end local v4           #isAlarmInSilentMode:Z
    .end local v6           #state:I
    :cond_4
    move v4, v7

    .line 118
    goto/16 :goto_0

    .line 135
    .restart local v4       #isAlarmInSilentMode:Z
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v8, Lcom/htc/android/worldclock/AlarmKlaxon$1;

    invoke-direct {v8, p0}, Lcom/htc/android/worldclock/AlarmKlaxon$1;-><init>(Lcom/htc/android/worldclock/AlarmKlaxon;)V

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mAlert:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 146
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 147
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 148
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    .line 149
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    .line 150
    const-string v7, "AlarmKlaxon.play()  mMediaPlayer.start() done"

    invoke-static {v7}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 151
    :catch_0
    move-exception v2

    .line 152
    .local v2, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v7, "Reltry to play default alarm"

    invoke-static {v7}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    :try_start_4
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/AlarmKlaxon;->getDefaultAlarm(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 155
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 156
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 157
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    .line 158
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    .line 159
    const-string v7, "AlarmKlaxon.play()  mMediaPlayer.start() done"

    invoke-static {v7}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 160
    :catch_1
    move-exception v3

    .line 161
    .local v3, ex2:Ljava/lang/Exception;
    :try_start_5
    const-string v7, "Error playing alarm"

    invoke-static {v7}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 100
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #ex2:Ljava/lang/Exception;
    .end local v4           #isAlarmInSilentMode:Z
    .end local v5           #ringerModeStreamTypes:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 179
    .restart local v1       #contentResolver:Landroid/content/ContentResolver;
    .restart local v4       #isAlarmInSilentMode:Z
    .restart local v5       #ringerModeStreamTypes:I
    .restart local v6       #state:I
    :cond_6
    :try_start_6
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v7}, Landroid/os/Vibrator;->cancel()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method declared-synchronized releasePlayer()V
    .locals 1

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 233
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 235
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 236
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 239
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :cond_0
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 237
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reportAlarm(IZIIJLcom/htc/android/worldclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "idx"
    .parameter "enabled"
    .parameter "hour"
    .parameter "minutes"
    .parameter "alarmtime"
    .parameter "daysOfWeek"
    .parameter "vibrate"
    .parameter "message"
    .parameter "alert"
    .parameter "snoozed"

    .prologue
    .line 91
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmKlaxon.reportAlarm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 94
    iput-object p10, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mAlert:Ljava/lang/String;

    .line 95
    iput-object p7, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    .line 96
    iput-boolean p8, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mVibrate:Z

    .line 97
    return-void
.end method

.method setKillerCallback(Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;)V
    .locals 0
    .parameter "killerCallback"

    .prologue
    .line 248
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 249
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mKillerCallback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

    .line 250
    return-void
.end method

.method setStopCallback(Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;)V
    .locals 0
    .parameter "stopCallback"

    .prologue
    .line 253
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 254
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mStopCallback:Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;

    .line 255
    return-void
.end method

.method declared-synchronized stop(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "snoozed"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmKlaxon.stop() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mAlarmId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 194
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mPlaying:Z

    if-eqz v0, :cond_2

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mPlaying:Z

    .line 197
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmKlaxon;->releasePlayer()V

    .line 198
    const-string v0, "AlarmKlaxon.stop(), mMediaPlayer done "

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 203
    const-string v0, "AlarmKlaxon.stop(), mVibrator done "

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 205
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/Alarms$DaysOfWeek;->isRepeatSet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    iget v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mAlarmId:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/htc/android/worldclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 208
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    .line 209
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mEnableStopCallback:Z

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mStopCallback:Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mStopCallback:Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;

    invoke-interface {v0}, Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;->onStopped()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmKlaxon;->mStopCallback:Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmKlaxon;->disableKiller()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
