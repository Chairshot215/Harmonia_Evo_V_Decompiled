.class public Lcom/htc/android/worldclock/TimerService;
.super Landroid/app/Service;
.source "TimerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/TimerService$IntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKSCREEN:Ljava/lang/String; = "com.htc.intent.lockscreen.StopAlarmRinging"

.field public static final ACTION_TIMER_TIME:Ljava/lang/String; = "com.htc.intent.action.timer_time"

.field private static final LOCKSCREEN_ACTION:Ljava/lang/String; = "alarm_action"

.field private static final STALE_WINDOW:I = 0x708

.field private static final TIMER_NOTIFICATION_ID:I = 0x6

.field public static final TIMER_SERVICE_STATUS:I = 0x11

.field private static final TIMER_TIMES_UP:Ljava/lang/String; = "times_up"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field protected mIntentReceiver:Lcom/htc/android/worldclock/TimerService$IntentReceiver;

.field private mKillerCalback:Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;

.field private mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mStopCallback:Lcom/htc/android/worldclock/TimerKlaxon$StopCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;

    .line 54
    iput-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mIntentReceiver:Lcom/htc/android/worldclock/TimerService$IntentReceiver;

    .line 56
    new-instance v0, Lcom/htc/android/worldclock/TimerService$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/TimerService$1;-><init>(Lcom/htc/android/worldclock/TimerService;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mHandler:Landroid/os/Handler;

    .line 220
    new-instance v0, Lcom/htc/android/worldclock/TimerService$4;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/TimerService$4;-><init>(Lcom/htc/android/worldclock/TimerService;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mKillerCalback:Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;

    .line 244
    new-instance v0, Lcom/htc/android/worldclock/TimerService$5;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/TimerService$5;-><init>(Lcom/htc/android/worldclock/TimerService;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mStopCallback:Lcom/htc/android/worldclock/TimerKlaxon$StopCallback;

    .line 293
    new-instance v0, Lcom/htc/android/worldclock/TimerService$6;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/TimerService$6;-><init>(Lcom/htc/android/worldclock/TimerService;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/TimerService;)Lcom/htc/android/worldclock/TimerKlaxon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/android/worldclock/TimerService;Lcom/htc/android/worldclock/TimerKlaxon;)Lcom/htc/android/worldclock/TimerKlaxon;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerService;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/TimerService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/TimerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/TimerService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/TimerService;->timesUp(Landroid/content/Context;)V

    return-void
.end method

.method private doTimerService()V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x6

    .line 112
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 113
    invoke-static {}, Lcom/htc/android/worldclock/TimerKlaxon;->getInstance()Lcom/htc/android/worldclock/TimerKlaxon;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/TimerService;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;

    .line 114
    const/16 v2, 0x11

    invoke-static {p0, v2}, Lcom/htc/android/worldclock/ResUtils;->startForeground(Landroid/app/Service;I)V

    .line 115
    iget-object v2, p0, Lcom/htc/android/worldclock/TimerService;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;

    iget-object v3, p0, Lcom/htc/android/worldclock/TimerService;->mStopCallback:Lcom/htc/android/worldclock/TimerKlaxon$StopCallback;

    invoke-virtual {v2, v3}, Lcom/htc/android/worldclock/TimerKlaxon;->setStopCallback(Lcom/htc/android/worldclock/TimerKlaxon$StopCallback;)V

    .line 116
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/TimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/htc/android/worldclock/TimerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 117
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerService;->getLockScreenMode()Z

    move-result v0

    .line 119
    .local v0, isLockScreenExist:Z
    invoke-direct {p0, p0}, Lcom/htc/android/worldclock/TimerService;->resetTime(Landroid/content/Context;)V

    .line 121
    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerService;->registerLockScreenReceiver()V

    .line 124
    const-string v2, "sendBroadcast(timerIntent)"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 126
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v1, timerIntent:Landroid/content/Intent;
    const-string v2, "com.htc.intent.action.timer_time"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/TimerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    const-string v2, "createNotification, TIMER_NOTIFICATION_ID"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 131
    invoke-static {p0, v4}, Lcom/htc/android/worldclock/AlertUtils;->createNotification(Landroid/content/Context;I)V

    .line 133
    const-string v2, "resetTime"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 135
    const-string v2, "playAlarm"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerService;->playAlarm()V

    .line 139
    const/4 v2, 0x0

    invoke-static {p0, v2, v5}, Lcom/htc/android/worldclock/AlertUtils;->timerAlert(Landroid/content/Context;ZI)V

    .line 146
    .end local v1           #timerIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerService;->playAlarm()V

    .line 142
    invoke-static {p0, v4}, Lcom/htc/android/worldclock/AlertUtils;->createNotification(Landroid/content/Context;I)V

    .line 144
    invoke-static {p0, v0, v5}, Lcom/htc/android/worldclock/AlertUtils;->timerAlert(Landroid/content/Context;ZI)V

    goto :goto_0
.end method

.method private getLockScreenMode()Z
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, lockscreen:Z
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/TimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 153
    .local v0, km:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 154
    return v1
.end method

.method private playAlarm()V
    .locals 4

    .prologue
    .line 177
    sget-boolean v0, Lcom/htc/android/worldclock/Global;->AUDIO_FOCUS_FUNC:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 184
    :cond_0
    invoke-static {p0}, Lcom/htc/android/worldclock/AlertUtils;->stopRecord(Landroid/content/Context;)V

    .line 186
    invoke-static {}, Lcom/htc/android/worldclock/TimerKlaxon;->getInstance()Lcom/htc/android/worldclock/TimerKlaxon;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;

    .line 187
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;

    iget-object v1, p0, Lcom/htc/android/worldclock/TimerService;->mKillerCalback:Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/TimerKlaxon;->setKillerCallback(Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;)V

    .line 189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/TimerService$2;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/TimerService$2;-><init>(Lcom/htc/android/worldclock/TimerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 195
    return-void
.end method

.method private registerLockScreenReceiver()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 160
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerService;->mIntentReceiver:Lcom/htc/android/worldclock/TimerService$IntentReceiver;

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Lcom/htc/android/worldclock/TimerService$IntentReceiver;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/TimerService$IntentReceiver;-><init>(Lcom/htc/android/worldclock/TimerService;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/TimerService;->mIntentReceiver:Lcom/htc/android/worldclock/TimerService$IntentReceiver;

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.lockscreen.StopAlarmRinging"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerService;->mIntentReceiver:Lcom/htc/android/worldclock/TimerService$IntentReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/htc/android/worldclock/TimerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 167
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/htc/android/worldclock/TimerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 168
    return-void
.end method

.method private resetTime(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 199
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerState(Landroid/content/Context;I)V

    .line 200
    invoke-static {p1, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerHour(Landroid/content/Context;I)V

    .line 201
    invoke-static {p1, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerMinute(Landroid/content/Context;I)V

    .line 202
    invoke-static {p1, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerSecond(Landroid/content/Context;I)V

    .line 203
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerService;->updateTimerProvider()V

    .line 204
    return-void
.end method

.method private timesUp(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 284
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 285
    const-string v1, "timesUp"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 286
    const/4 v1, 0x6

    invoke-static {p1, v1}, Lcom/htc/android/worldclock/AlertUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 287
    invoke-static {}, Lcom/htc/android/worldclock/TimerKlaxon;->getInstance()Lcom/htc/android/worldclock/TimerKlaxon;

    move-result-object v0

    .line 288
    .local v0, klaxon:Lcom/htc/android/worldclock/TimerKlaxon;
    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/TimerKlaxon;->stop(Landroid/content/Context;)V

    .line 289
    const/4 v0, 0x0

    .line 290
    invoke-static {p1}, Lcom/htc/android/worldclock/AlertUtils;->sendCancelIntent(Landroid/content/Context;)V

    .line 291
    return-void
.end method

.method private updateTimerProvider()V
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 208
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/TimerService$3;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/TimerService$3;-><init>(Lcom/htc/android/worldclock/TimerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 217
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 218
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 172
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 99
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 101
    sget-boolean v0, Lcom/htc/android/worldclock/Global;->AUDIO_FOCUS_FUNC:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 108
    :cond_0
    invoke-static {}, Lcom/htc/android/worldclock/TimerAlertWakeLock;->release()V

    .line 109
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 8
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v7, 0x0

    .line 70
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 71
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 72
    const-string v4, "onStart"

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 73
    if-nez p1, :cond_0

    .line 74
    const-string v4, "get intent data fail"

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 75
    iget-object v4, p0, Lcom/htc/android/worldclock/TimerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 93
    :goto_0
    return-void

    .line 79
    :cond_0
    sget-boolean v4, Lcom/htc/android/worldclock/Global;->AUDIO_FOCUS_FUNC:Z

    if-eqz v4, :cond_1

    .line 80
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/TimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/htc/android/worldclock/TimerService;->mAudioManager:Landroid/media/AudioManager;

    .line 83
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 84
    .local v0, now:J
    const-string v4, "alarm_time"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 86
    .local v2, setFor:J
    const-wide/32 v4, 0x1b7740

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimerService ignoring stale alarm intent setFor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/htc/android/worldclock/TimerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 92
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerService;->doTimerService()V

    goto :goto_0
.end method
