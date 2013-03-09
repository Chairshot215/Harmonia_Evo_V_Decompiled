.class public Lcom/google/android/talk/videochat/IncomingCallRinger;
.super Ljava/lang/Object;
.source "IncomingCallRinger.java"

# interfaces
.implements Lcom/google/android/talk/videochat/CallRinger;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRingCount:I

.field private mRingDelayRunnable:Ljava/lang/Runnable;

.field private final mRinger:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

.field private mRinging:Z

.field private mVibrateWhen:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;J)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "accountId"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v2, Lcom/google/android/talk/videochat/IncomingCallRinger$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/videochat/IncomingCallRinger$1;-><init>(Lcom/google/android/talk/videochat/IncomingCallRinger;)V

    iput-object v2, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRingDelayRunnable:Ljava/lang/Runnable;

    .line 38
    new-instance v2, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    invoke-direct {v2, p1}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinger:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    .line 39
    iput-object p2, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v0

    .line 52
    .local v0, settingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoVibrateWhen()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mVibrateWhen:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinger:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iget-object v3, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mVibrateWhen:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->setVibrateWhen(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinger:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoRingtoneURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 59
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 60
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-nez v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinger:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->setStreamType(I)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinger:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->setStreamType(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/IncomingCallRinger;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/talk/videochat/IncomingCallRinger;->ringAndRepeat()V

    return-void
.end method

.method private ringAndRepeat()V
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinger:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinging:Z

    if-nez v0, :cond_0

    .line 91
    monitor-exit v1

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    iget v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRingCount:I

    .line 94
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinger:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->ring()V

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ringAndRepeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/IncomingCallRinger;->log(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRingDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 110
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IncomingCallRinger] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public startRing()V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRingCount:I

    .line 70
    iget-object v1, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinger:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    monitor-enter v1

    .line 71
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinging:Z

    .line 72
    invoke-direct {p0}, Lcom/google/android/talk/videochat/IncomingCallRinger;->ringAndRepeat()V

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopRing()V
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinger:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    monitor-enter v1

    .line 79
    :try_start_0
    const-string v0, "stopRing"

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/IncomingCallRinger;->log(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinger:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->stopRing()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinging:Z

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRingDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    return-void

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
