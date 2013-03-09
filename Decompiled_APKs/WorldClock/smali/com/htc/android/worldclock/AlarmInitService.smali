.class public Lcom/htc/android/worldclock/AlarmInitService;
.super Landroid/app/Service;
.source "AlarmInitService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_ALARM_TIME:Ljava/lang/String; = "com.htc.intent.action.alarm_time"

.field public static final ACTION_ALARM_TIMEOUT:Ljava/lang/String; = "com.htc.intent.action.alarm_timeout"

.field private static final ACTION_LOCKSCREEN:Ljava/lang/String; = "com.htc.intent.lockscreen.StopAlarmRinging"

.field private static final ALARM_DISMISS:Ljava/lang/String; = "dismiss"

.field public static final ALARM_INIT_SERVICE_STATUS:I = 0x12

.field private static final ALARM_NOTIFICATION_ID:I = 0x5

.field private static final ALARM_SNOOZE:Ljava/lang/String; = "snooze"

.field private static final DEFAULT_SNOOZE:Ljava/lang/String; = "10"

.field private static final LOCKSCREEN_ACTION:Ljava/lang/String; = "alarm_action"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mBootCompleted:Z

.field private mDescription:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mIntent:Landroid/content/Intent;

.field protected mIntentReceiver:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

.field private mKillerCalback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

.field private mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

.field mOffAlarm:Z

.field private mRecvAction:Ljava/lang/String;

.field private mRecvIntent:Landroid/content/Intent;

.field private mRecvSnoozeMinutes:I

.field private mStopCallback:Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mDescription:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmInitService;->mBootCompleted:Z

    .line 33
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmInitService;->mOffAlarm:Z

    .line 35
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    .line 37
    new-instance v0, Lcom/htc/android/worldclock/AlarmInitService$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmInitService$1;-><init>(Lcom/htc/android/worldclock/AlarmInitService;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mHandler:Landroid/os/Handler;

    .line 264
    new-instance v0, Lcom/htc/android/worldclock/AlarmInitService$6;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmInitService$6;-><init>(Lcom/htc/android/worldclock/AlarmInitService;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mKillerCalback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

    .line 287
    new-instance v0, Lcom/htc/android/worldclock/AlarmInitService$7;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmInitService$7;-><init>(Lcom/htc/android/worldclock/AlarmInitService;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mStopCallback:Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;

    .line 324
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/AlarmInitService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/htc/android/worldclock/AlarmInitService;->updateAlarms(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/AlarmInitService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/AlarmInitService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mId:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/AlarmInitService;)Lcom/htc/android/worldclock/AlarmKlaxon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/android/worldclock/AlarmInitService;Lcom/htc/android/worldclock/AlarmKlaxon;)Lcom/htc/android/worldclock/AlarmKlaxon;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/AlarmInitService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mRecvIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/android/worldclock/AlarmInitService;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitService;->mRecvIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/android/worldclock/AlarmInitService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mRecvAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/android/worldclock/AlarmInitService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitService;->mRecvAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/android/worldclock/AlarmInitService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mRecvSnoozeMinutes:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/android/worldclock/AlarmInitService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/htc/android/worldclock/AlarmInitService;->mRecvSnoozeMinutes:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/android/worldclock/AlarmInitService;Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/android/worldclock/AlarmInitService;->snooze(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/worldclock/AlarmInitService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/AlarmInitService;->dismiss(Landroid/content/Context;)V

    return-void
.end method

.method private dismiss(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 372
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 373
    const-string v1, "dismiss"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/htc/android/worldclock/AlarmKlaxon;->getInstance()Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    .line 375
    .local v0, klaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/android/worldclock/AlarmKlaxon;->stop(Landroid/content/Context;Z)V

    .line 376
    const/4 v0, 0x0

    .line 378
    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/htc/android/worldclock/AlertUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 379
    return-void
.end method

.method private doAlarmInitService()V
    .locals 6

    .prologue
    .line 89
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 90
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmInitService;->mIntent:Landroid/content/Intent;

    const-string v4, "Action"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, str:Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/htc/android/worldclock/AlarmInitService;->mBootCompleted:Z

    .line 94
    iget-boolean v3, p0, Lcom/htc/android/worldclock/AlarmInitService;->mBootCompleted:Z

    if-eqz v3, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmInitService;->resetStopwatch()V

    .line 96
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmInitService;->resetTimer()V

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmInitService;->getOffAlarm()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/worldclock/AlarmInitService;->mOffAlarm:Z

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBootCompleted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/android/worldclock/AlarmInitService;->mBootCompleted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOffAlarm ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/android/worldclock/AlarmInitService;->mOffAlarm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 102
    iget-boolean v3, p0, Lcom/htc/android/worldclock/AlarmInitService;->mBootCompleted:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/htc/android/worldclock/AlarmInitService;->mOffAlarm:Z

    if-eqz v3, :cond_4

    .line 103
    const-string v3, "[ATS][com.htc.android.worldclock][alarm_sound][start]"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 104
    const/16 v3, 0x12

    invoke-static {p0, v3}, Lcom/htc/android/worldclock/ResUtils;->startForeground(Landroid/app/Service;I)V

    .line 105
    invoke-static {p0}, Lcom/htc/android/worldclock/AlarmInitWakeLock;->acquire(Landroid/content/Context;)V

    .line 106
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/AlarmInitService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 107
    .local v0, km:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 109
    .local v1, lockscreen:Z
    if-eqz v1, :cond_3

    .line 110
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmInitService;->registerLockScreenReceiver()V

    .line 111
    iget v3, p0, Lcom/htc/android/worldclock/AlarmInitService;->mId:I

    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmInitService;->mDescription:Ljava/lang/String;

    invoke-virtual {p0, p0, v3, v4}, Lcom/htc/android/worldclock/AlarmInitService;->alarmLockScreen(Landroid/content/Context;ILjava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmInitService;->showOffAlarmList()V

    .line 128
    .end local v0           #km:Landroid/app/KeyguardManager;
    .end local v1           #lockscreen:Z
    :goto_1
    return-void

    .line 91
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 114
    .restart local v0       #km:Landroid/app/KeyguardManager;
    .restart local v1       #lockscreen:Z
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmInitService;->showOffAlarmList()V

    .line 115
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmInitService;->playAlarm()V

    .line 116
    const/4 v3, 0x5

    invoke-static {p0, v3}, Lcom/htc/android/worldclock/AlertUtils;->createNotification(Landroid/content/Context;I)V

    .line 117
    iget v3, p0, Lcom/htc/android/worldclock/AlarmInitService;->mId:I

    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmInitService;->mDescription:Ljava/lang/String;

    const/16 v5, 0x10

    invoke-static {p0, v3, v4, v1, v5}, Lcom/htc/android/worldclock/AlertUtils;->alarmAlert(Landroid/content/Context;ILjava/lang/String;ZI)V

    goto :goto_1

    .line 120
    .end local v0           #km:Landroid/app/KeyguardManager;
    .end local v1           #lockscreen:Z
    :cond_4
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/worldclock/AlarmInitService$2;

    invoke-direct {v4, p0}, Lcom/htc/android/worldclock/AlarmInitService$2;-><init>(Lcom/htc/android/worldclock/AlarmInitService;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private getOffAlarm()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 187
    sget-boolean v4, Lcom/htc/android/worldclock/Global;->OFF_ALARM_ALERT:Z

    if-nez v4, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 191
    :cond_1
    sget-boolean v4, Lcom/htc/android/worldclock/Global;->OFF_ALARM_ALERT_USE_SYS_PROPERTY:Z

    if-eqz v4, :cond_2

    .line 192
    const-string v4, "dev.bootreason"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, bootReason:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bootReason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 194
    const-string v4, "rtc_alarm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getNextAlarmId(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/android/worldclock/AlarmInitService;->mId:I

    .line 196
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getNextAlarmDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService;->mDescription:Ljava/lang/String;

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "off alarm, id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/android/worldclock/AlarmInitService;->mId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mDescription = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmInitService;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    move v2, v3

    .line 199
    goto :goto_0

    .line 202
    .end local v0           #bootReason:Ljava/lang/String;
    :cond_2
    const-string v4, "/proc/cmdline"

    const-string v5, "AlarmInitService"

    invoke-static {v4, v5}, Lcom/htc/android/worldclock/AlertUtils;->readTextFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, cmdline:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " readTextFromFile, cmdline = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 205
    if-eqz v1, :cond_0

    .line 209
    const-string v4, "rtc_alarm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getNextAlarmId(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/android/worldclock/AlarmInitService;->mId:I

    .line 211
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getNextAlarmDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService;->mDescription:Ljava/lang/String;

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "off alarm, id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/android/worldclock/AlarmInitService;->mId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mDescription = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmInitService;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    move v2, v3

    .line 214
    goto/16 :goto_0
.end method

.method private playAlarm()V
    .locals 4

    .prologue
    .line 243
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 244
    sget-boolean v0, Lcom/htc/android/worldclock/Global;->AUDIO_FOCUS_FUNC:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 251
    :cond_0
    invoke-static {p0}, Lcom/htc/android/worldclock/AlertUtils;->stopRecord(Landroid/content/Context;)V

    .line 252
    invoke-static {}, Lcom/htc/android/worldclock/AlarmKlaxon;->getInstance()Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    .line 253
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService;->mStopCallback:Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/AlarmKlaxon;->setStopCallback(Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;)V

    .line 254
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService;->mKillerCalback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/AlarmKlaxon;->setKillerCallback(Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;)V

    .line 256
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlarmInitService$5;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmInitService$5;-><init>(Lcom/htc/android/worldclock/AlarmInitService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    return-void
.end method

.method private registerLockScreenReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 307
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    if-nez v1, :cond_0

    .line 308
    new-instance v1, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;-><init>(Lcom/htc/android/worldclock/AlarmInitService;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    .line 309
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.lockscreen.StopAlarmRinging"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/htc/android/worldclock/AlarmInitService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 314
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private resetStopwatch()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 131
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 132
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/android/worldclock/PreferencesUtil;->setState(Landroid/content/Context;I)V

    .line 133
    invoke-static {p0, v1, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setStartTime(Landroid/content/Context;J)V

    .line 134
    invoke-static {p0, v1, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setLapStartTime(Landroid/content/Context;J)V

    .line 135
    invoke-static {p0, v1, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setPauseTime(Landroid/content/Context;J)V

    .line 136
    invoke-static {p0, v1, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setLapPauseTime(Landroid/content/Context;J)V

    .line 137
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/android/worldclock/PreferencesUtil;->setLapCount(Landroid/content/Context;I)V

    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlarmInitService$3;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmInitService$3;-><init>(Lcom/htc/android/worldclock/AlarmInitService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 145
    return-void
.end method

.method private resetTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 148
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 149
    invoke-static {p0, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerState(Landroid/content/Context;I)V

    .line 150
    invoke-static {p0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerHour(Landroid/content/Context;I)V

    .line 151
    invoke-static {p0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerMinute(Landroid/content/Context;I)V

    .line 152
    invoke-static {p0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerSecond(Landroid/content/Context;I)V

    .line 153
    new-instance v0, Lcom/htc/android/worldclock/Timers$TimerData;

    invoke-direct {v0}, Lcom/htc/android/worldclock/Timers$TimerData;-><init>()V

    .line 154
    .local v0, data:Lcom/htc/android/worldclock/Timers$TimerData;
    iput v2, v0, Lcom/htc/android/worldclock/Timers$TimerData;->state:I

    .line 155
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getExpiredTime(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/android/worldclock/Timers$TimerData;->timeExpired:J

    .line 156
    invoke-static {p0, v0}, Lcom/htc/android/worldclock/Timers;->setTimerData(Landroid/content/Context;Lcom/htc/android/worldclock/Timers$TimerData;)V

    .line 157
    return-void
.end method

.method private showOffAlarmList()V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/android/worldclock/OffAlarmAlert;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v0, offAlarm:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/AlarmInitService;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method private snooze(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "description"
    .parameter "snoozeMinutes"

    .prologue
    .line 358
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snooze, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", description="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,snoozeMinutes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/htc/android/worldclock/AlarmKlaxon;->getInstance()Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    .line 361
    .local v0, klaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Lcom/htc/android/worldclock/AlarmKlaxon;->stop(Landroid/content/Context;Z)V

    .line 362
    const/4 v0, 0x0

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const v5, 0xea60

    mul-int/2addr v5, p4

    int-to-long v5, v5

    add-long v1, v3, v5

    .line 365
    .local v1, snoozeTarget:J
    invoke-static {p1, p2, p3, v1, v2}, Lcom/htc/android/worldclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;ILjava/lang/String;J)V

    .line 366
    invoke-static {p1}, Lcom/htc/android/worldclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 367
    invoke-static {p1, p2, v1, v2}, Lcom/htc/android/worldclock/AlertUtils;->snoozeNotification(Landroid/content/Context;IJ)V

    .line 368
    const/4 v3, 0x5

    invoke-static {p1, v3}, Lcom/htc/android/worldclock/AlertUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 369
    return-void
.end method

.method private updateAlarms(ZZ)V
    .locals 1
    .parameter "bootCompleted"
    .parameter "offAlarm"

    .prologue
    .line 169
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 170
    if-eqz p1, :cond_0

    .line 172
    :try_start_0
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->disableExpiredAlarms(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    .line 179
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->setNextAlert(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    :cond_2
    :goto_1
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0

    .line 180
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public alarmLockScreen(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "description"

    .prologue
    .line 222
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 224
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmInitService;->playAlarm()V

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v0, alarmIntent:Landroid/content/Intent;
    const-string v1, "alarm_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v1, "alarm_description"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "com.htc.intent.action.alarm_time"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 231
    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/htc/android/worldclock/AlertUtils;->createNotification(Landroid/content/Context;I)V

    .line 234
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/worldclock/AlarmInitService$4;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/AlarmInitService$4;-><init>(Lcom/htc/android/worldclock/AlarmInitService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 240
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 84
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 72
    sget-boolean v0, Lcom/htc/android/worldclock/Global;->AUDIO_FOCUS_FUNC:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 79
    :cond_0
    invoke-static {}, Lcom/htc/android/worldclock/AlarmInitWakeLock;->release()V

    .line 80
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 49
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 50
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 51
    if-nez p1, :cond_0

    .line 52
    const-string v0, "get intent data fail"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-boolean v0, Lcom/htc/android/worldclock/Global;->AUDIO_FOCUS_FUNC:Z

    if-eqz v0, :cond_1

    .line 58
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/AlarmInitService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService;->mAudioManager:Landroid/media/AudioManager;

    .line 61
    :cond_1
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitService;->mIntent:Landroid/content/Intent;

    .line 63
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmInitService;->doAlarmInitService()V

    goto :goto_0
.end method
