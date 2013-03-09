.class public Lcom/google/android/talk/videochat/NotificationRingtonePlayer;
.super Ljava/lang/Object;
.source "NotificationRingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;,
        Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field volatile mContinueVibrating:Z

.field mCustomRingtoneUri:Landroid/net/Uri;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field private mLowVolume:Z

.field private mRingHandler:Landroid/os/Handler;

.field private mRingThread:Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;

.field mRingtone:Landroid/media/Ringtone;

.field private mStreamType:I

.field mVibrateWhen:Ljava/lang/String;

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "talk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-wide/16 v0, -0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingEventTime:J

    .line 59
    iput-wide v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingStartTime:J

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mStreamType:I

    .line 64
    iput-object p1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 66
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mVibrator:Landroid/os/Vibrator;

    .line 67
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mStreamType:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mLowVolume:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->resetVolume(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method private isRingtonePlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 385
    sget-object v0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method private makeLooper()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingThread:Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;-><init>(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingThread:Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;

    .line 283
    new-instance v0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;

    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingThread:Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;-><init>(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingHandler:Landroid/os/Handler;

    .line 357
    :cond_0
    return-void
.end method

.method private resetVolume(III)V
    .locals 5
    .parameter "origVolume"
    .parameter "newVolume"
    .parameter "streamType"

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->isRingtonePlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$2;-><init>(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;III)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    :goto_0
    return-void

    .line 377
    :cond_0
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p3, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->stopRing()V

    goto :goto_0
.end method


# virtual methods
.method public ring()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x3

    .line 106
    const-string v0, "talk"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "ring()..."

    invoke-static {v0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->log(Ljava/lang/String;)V

    .line 110
    :cond_0
    monitor-enter p0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->shouldVibrate()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mVibratorThread:Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;

    if-nez v0, :cond_2

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mContinueVibrating:Z

    .line 113
    new-instance v0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;-><init>(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mVibratorThread:Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;

    .line 114
    const-string v0, "talk"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "- starting vibrator..."

    invoke-static {v0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->log(Ljava/lang/String;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mVibratorThread:Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;->start()V

    .line 120
    :cond_2
    iget v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 121
    const-string v0, "talk"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    const-string v0, "skipping ring because volume is zero"

    invoke-static {v0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->log(Ljava/lang/String;)V

    .line 124
    :cond_3
    monitor-exit p0

    .line 151
    :goto_0
    return-void

    .line 127
    :cond_4
    invoke-direct {p0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->makeLooper()V

    .line 128
    iget-wide v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingEventTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingEventTime:J

    .line 130
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 135
    :cond_5
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingStartTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 138
    const-string v0, "talk"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delaying ring by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingStartTime:J

    iget-wide v3, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingEventTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->log(Ljava/lang/String;)V

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingStartTime:J

    iget-wide v4, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingEventTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 147
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingEventTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setCustomRingtoneUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    iput-object p1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 278
    :cond_0
    return-void
.end method

.method public setLowVolume(Z)V
    .locals 0
    .parameter "lowVolume"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mLowVolume:Z

    .line 159
    return-void
.end method

.method public setStreamType(I)V
    .locals 2
    .parameter "streamType"

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting stream type to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->log(Ljava/lang/String;)V

    .line 167
    iput p1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mStreamType:I

    .line 168
    return-void
.end method

.method public setVibrateWhen(Ljava/lang/String;)V
    .locals 0
    .parameter "vibrateWhen"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mVibrateWhen:Ljava/lang/String;

    .line 155
    return-void
.end method

.method shouldVibrate()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 171
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mVibrateWhen:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v4

    .line 175
    :cond_1
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mVibrateWhen:Ljava/lang/String;

    const-string v6, "always"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 176
    .local v1, vibrateAlways:Z
    if-nez v1, :cond_3

    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mVibrateWhen:Ljava/lang/String;

    const-string v6, "silent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 179
    .local v2, vibrateSilent:Z
    :goto_1
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v3, :cond_4

    move v0, v3

    .line 183
    .local v0, nowSilent:Z
    :goto_2
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    :cond_2
    move v4, v3

    goto :goto_0

    .end local v0           #nowSilent:Z
    .end local v2           #vibrateSilent:Z
    :cond_3
    move v2, v4

    .line 176
    goto :goto_1

    .restart local v2       #vibrateSilent:Z
    :cond_4
    move v0, v4

    .line 179
    goto :goto_2
.end method

.method public stopRing()V
    .locals 3

    .prologue
    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    const-string v1, "talk"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "stopRing()..."

    invoke-static {v1}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->log(Ljava/lang/String;)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 197
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 198
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 199
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingThread:Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;

    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingHandler:Landroid/os/Handler;

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    .line 204
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingEventTime:J

    .line 205
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingStartTime:J

    .line 210
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mVibratorThread:Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;

    if-eqz v1, :cond_2

    .line 211
    const-string v1, "talk"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    const-string v1, "- stopRing: cleaning up vibrator thread..."

    invoke-static {v1}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->log(Ljava/lang/String;)V

    .line 214
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mContinueVibrating:Z

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mVibratorThread:Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 220
    monitor-exit p0

    .line 221
    return-void

    .line 207
    :cond_3
    const-string v1, "- stopRing: null mRingHandler!"

    invoke-static {v1}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
