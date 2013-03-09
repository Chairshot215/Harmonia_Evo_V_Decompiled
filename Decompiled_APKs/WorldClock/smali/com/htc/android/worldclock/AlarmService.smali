.class public Lcom/htc/android/worldclock/AlarmService;
.super Landroid/app/Service;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/AlarmService$IntentReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_ALARM_TIME:Ljava/lang/String; = "com.htc.intent.action.alarm_time"

.field private static final ACTION_LOCKSCREEN:Ljava/lang/String; = "com.htc.intent.lockscreen.StopAlarmRinging"

.field private static final ALARM_DISMISS:Ljava/lang/String; = "dismiss"

.field private static final ALARM_NOTIFICATION_ID:I = 0x5

.field public static final ALARM_SERVICE_STATUS:I = 0x10

.field private static final ALARM_SNOOZE:Ljava/lang/String; = "snooze"

.field private static final DEFAULT_SNOOZE:Ljava/lang/String; = "10"

.field private static final LOCKSCREEN_ACTION:Ljava/lang/String; = "alarm_action"

.field private static final STALE_WINDOW:I = 0x1d4c0

.field private static mAlarmAlertStartActivity:Z


# instance fields
.field private final RESHOW_ALARM:I

.field private final STOP_SERVICE:I

.field private mAction:Ljava/lang/String;

.field private mAlarmType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

.field private mDescription:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field protected mIntentReceiver:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

.field private mKillerCalback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

.field private mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

.field private mLockScreen:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRecvSnoozeMinutes:I

.field mSettings:Lcom/htc/android/worldclock/Alarms$AlarmSettings;

.field private mStopCallback:Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/worldclock/AlarmService;->mAlarmAlertStartActivity:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    .line 43
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/android/worldclock/AlarmService;->mAlarmType:I

    .line 45
    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    .line 48
    const/16 v0, 0x1000

    iput v0, p0, Lcom/htc/android/worldclock/AlarmService;->STOP_SERVICE:I

    .line 49
    const/16 v0, 0x1001

    iput v0, p0, Lcom/htc/android/worldclock/AlarmService;->RESHOW_ALARM:I

    .line 51
    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    .line 54
    new-instance v0, Lcom/htc/android/worldclock/AlarmService$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmService$1;-><init>(Lcom/htc/android/worldclock/AlarmService;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mSettings:Lcom/htc/android/worldclock/Alarms$AlarmSettings;

    .line 65
    new-instance v0, Lcom/htc/android/worldclock/AlarmService$2;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmService$2;-><init>(Lcom/htc/android/worldclock/AlarmService;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mHandler:Landroid/os/Handler;

    .line 340
    new-instance v0, Lcom/htc/android/worldclock/AlarmService$7;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmService$7;-><init>(Lcom/htc/android/worldclock/AlarmService;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mKillerCalback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

    .line 363
    new-instance v0, Lcom/htc/android/worldclock/AlarmService$8;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmService$8;-><init>(Lcom/htc/android/worldclock/AlarmService;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mStopCallback:Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;

    .line 452
    new-instance v0, Lcom/htc/android/worldclock/AlarmService$9;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmService$9;-><init>(Lcom/htc/android/worldclock/AlarmService;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private AutoSnooze()V
    .locals 2

    .prologue
    .line 482
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 483
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->makeSnoozeToast()V

    .line 484
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlarmService$10;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmService$10;-><init>(Lcom/htc/android/worldclock/AlarmService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 490
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/AlarmService;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/android/worldclock/AlarmService;Lcom/htc/android/worldclock/Alarms$DaysOfWeek;)Lcom/htc/android/worldclock/Alarms$DaysOfWeek;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService;->mDaysOfWeek:Lcom/htc/android/worldclock/Alarms$DaysOfWeek;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/htc/android/worldclock/AlarmService;->mAlarmAlertStartActivity:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/android/worldclock/AlarmService;Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/android/worldclock/AlarmService;->snooze(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/android/worldclock/AlarmService;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/htc/android/worldclock/AlarmService;->dismiss(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/android/worldclock/AlarmService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->AutoSnooze()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/AlarmService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/android/worldclock/AlarmService;->mId:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/AlarmService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/AlarmService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmService;->mLockScreen:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/worldclock/AlarmService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/android/worldclock/AlarmService;->mAlarmType:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/android/worldclock/AlarmService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/worldclock/AlarmService;)Lcom/htc/android/worldclock/AlarmKlaxon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/android/worldclock/AlarmService;Lcom/htc/android/worldclock/AlarmKlaxon;)Lcom/htc/android/worldclock/AlarmKlaxon;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/android/worldclock/AlarmService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/worldclock/AlarmService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/android/worldclock/AlarmService;->mRecvSnoozeMinutes:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/android/worldclock/AlarmService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/htc/android/worldclock/AlarmService;->mRecvSnoozeMinutes:I

    return p1
.end method

.method private alarmLockScreen(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "description"

    .prologue
    .line 272
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 274
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->playAlarm()V

    .line 276
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v0, alarmIntent:Landroid/content/Intent;
    const-string v1, "alarm_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    const-string v1, "alarm_description"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v1, "com.htc.intent.action.alarm_time"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 281
    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/htc/android/worldclock/AlertUtils;->createNotification(Landroid/content/Context;I)V

    .line 284
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/worldclock/AlarmService$5;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/AlarmService$5;-><init>(Lcom/htc/android/worldclock/AlarmService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 290
    return-void
.end method

.method private backgroundPlay()V
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 196
    invoke-static {}, Lcom/htc/android/worldclock/AlarmKlaxon;->getInstance()Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    .line 197
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/htc/android/worldclock/ResUtils;->startForeground(Landroid/app/Service;I)V

    .line 198
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mStopCallback:Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/AlarmKlaxon;->setStopCallback(Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;)V

    .line 199
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/AlarmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 200
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->registerLockScreenReceiver()V

    .line 202
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->playAlarm()V

    .line 204
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/htc/android/worldclock/AlertUtils;->createNotification(Landroid/content/Context;I)V

    .line 206
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlarmService$4;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmService$4;-><init>(Lcom/htc/android/worldclock/AlarmService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 212
    return-void
.end method

.method private cancelSnooze()V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 161
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlarmService$3;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmService$3;-><init>(Lcom/htc/android/worldclock/AlarmService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 175
    return-void
.end method

.method private dismiss(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 441
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 442
    const-string v1, "[ATS][com.htc.android.worldclock][alarm_sound][stop]"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 443
    const-string v1, "dismiss"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/htc/android/worldclock/AlarmKlaxon;->getInstance()Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    .line 445
    .local v0, klaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/android/worldclock/AlarmKlaxon;->stop(Landroid/content/Context;Z)V

    .line 446
    const/4 v0, 0x0

    .line 447
    invoke-static {p1, p2}, Lcom/htc/android/worldclock/AlertUtils;->dismissNotification(Landroid/content/Context;I)V

    .line 448
    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/htc/android/worldclock/AlertUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 449
    invoke-static {p1}, Lcom/htc/android/worldclock/AlertUtils;->sendCancelIntent(Landroid/content/Context;)V

    .line 450
    return-void
.end method

.method private doAlarmService()V
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 185
    const-string v0, "[ATS][com.htc.android.worldclock][alarm_sound][start]"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->getStreamLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->backgroundPlay()V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->showAlarmAlert()V

    goto :goto_0
.end method

.method private getLockScreenMode()Z
    .locals 3

    .prologue
    .line 250
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 251
    const/4 v1, 0x0

    .line 253
    .local v1, lockscreen:Z
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/AlarmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 254
    .local v0, km:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 255
    return v1
.end method

.method private getStreamLock()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 315
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 316
    sget-boolean v3, Lcom/htc/android/worldclock/Global;->CHS_SKU:Z

    if-nez v3, :cond_0

    move v3, v4

    .line 337
    :goto_0
    return v3

    .line 320
    :cond_0
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/AlarmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 321
    .local v1, myActivityManager:Landroid/app/ActivityManager;
    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 326
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 327
    const/4 v2, 0x0

    .line 328
    .local v2, topActivity:Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 329
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "topActivity="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 332
    const-string v3, "com.htc.streamplayer.VideoPlayerActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 333
    goto :goto_0

    .end local v2           #topActivity:Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 337
    goto :goto_0
.end method

.method private makeSnoozeToast()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 463
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 464
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "snooze_duration"

    const-string v4, "10"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, snooze:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/android/worldclock/AlarmService;->mRecvSnoozeMinutes:I

    .line 468
    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, inEcm:Ljava/lang/String;
    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    const v2, 0x7f08004a

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/android/worldclock/AlarmService;->mRecvSnoozeMinutes:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/worldclock/AlarmService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 474
    :cond_0
    return-void
.end method

.method private playAlarm()V
    .locals 4

    .prologue
    .line 293
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 294
    sget-boolean v0, Lcom/htc/android/worldclock/Global;->AUDIO_FOCUS_FUNC:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 301
    :cond_0
    invoke-static {p0}, Lcom/htc/android/worldclock/AlertUtils;->stopRecord(Landroid/content/Context;)V

    .line 302
    invoke-static {}, Lcom/htc/android/worldclock/AlarmKlaxon;->getInstance()Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    .line 303
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mKillerCalback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/AlarmKlaxon;->setKillerCallback(Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;)V

    .line 305
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlarmService$6;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmService$6;-><init>(Lcom/htc/android/worldclock/AlarmService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 311
    return-void
.end method

.method private registerLockScreenReceiver()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 261
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;-><init>(Lcom/htc/android/worldclock/AlarmService;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    .line 263
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 264
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.lockscreen.StopAlarmRinging"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/htc/android/worldclock/AlarmService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 268
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 269
    return-void
.end method

.method public static setAlarmAlertStartActivity(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 477
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 478
    sput-boolean p0, Lcom/htc/android/worldclock/AlarmService;->mAlarmAlertStartActivity:Z

    .line 479
    return-void
.end method

.method private showAlarmAlert()V
    .locals 4

    .prologue
    .line 215
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 216
    invoke-static {}, Lcom/htc/android/worldclock/AlarmKlaxon;->getInstance()Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    .line 217
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/htc/android/worldclock/ResUtils;->startForeground(Landroid/app/Service;I)V

    .line 218
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mStopCallback:Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/AlarmKlaxon;->setStopCallback(Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;)V

    .line 219
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/AlarmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 220
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->getLockScreenMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/AlarmService;->mLockScreen:Z

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAlarmType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/worldclock/AlarmService;->mAlarmType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,mLockScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/android/worldclock/AlarmService;->mLockScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 224
    iget v0, p0, Lcom/htc/android/worldclock/AlarmService;->mAlarmType:I

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 226
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->registerLockScreenReceiver()V

    .line 227
    iget v0, p0, Lcom/htc/android/worldclock/AlarmService;->mId:I

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mDescription:Ljava/lang/String;

    invoke-direct {p0, p0, v0, v1}, Lcom/htc/android/worldclock/AlarmService;->alarmLockScreen(Landroid/content/Context;ILjava/lang/String;)V

    .line 228
    iget v0, p0, Lcom/htc/android/worldclock/AlarmService;->mId:I

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mDescription:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/htc/android/worldclock/AlarmService;->mLockScreen:Z

    iget v3, p0, Lcom/htc/android/worldclock/AlarmService;->mAlarmType:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/htc/android/worldclock/AlertUtils;->alarmAlert(Landroid/content/Context;ILjava/lang/String;ZI)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmService;->mLockScreen:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->registerLockScreenReceiver()V

    .line 233
    iget v0, p0, Lcom/htc/android/worldclock/AlarmService;->mId:I

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mDescription:Ljava/lang/String;

    invoke-direct {p0, p0, v0, v1}, Lcom/htc/android/worldclock/AlarmService;->alarmLockScreen(Landroid/content/Context;ILjava/lang/String;)V

    .line 235
    iget v0, p0, Lcom/htc/android/worldclock/AlarmService;->mId:I

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mDescription:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/android/worldclock/AlarmService;->mAlarmType:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/htc/android/worldclock/AlertUtils;->alarmAlert(Landroid/content/Context;ILjava/lang/String;ZI)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->playAlarm()V

    .line 239
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/htc/android/worldclock/AlertUtils;->createNotification(Landroid/content/Context;I)V

    .line 240
    iget v0, p0, Lcom/htc/android/worldclock/AlarmService;->mId:I

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService;->mDescription:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/htc/android/worldclock/AlarmService;->mLockScreen:Z

    iget v3, p0, Lcom/htc/android/worldclock/AlarmService;->mAlarmType:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/htc/android/worldclock/AlertUtils;->alarmAlert(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 243
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1001

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private snooze(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "description"
    .parameter "snoozeMinutes"

    .prologue
    .line 425
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 426
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

    .line 427
    invoke-static {}, Lcom/htc/android/worldclock/AlarmKlaxon;->getInstance()Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    .line 428
    .local v0, klaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Lcom/htc/android/worldclock/AlarmKlaxon;->stop(Landroid/content/Context;Z)V

    .line 429
    const/4 v0, 0x0

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const v5, 0xea60

    mul-int/2addr v5, p4

    int-to-long v5, v5

    add-long v1, v3, v5

    .line 432
    .local v1, snoozeTarget:J
    invoke-static {p1, p2, p3, v1, v2}, Lcom/htc/android/worldclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;ILjava/lang/String;J)V

    .line 433
    invoke-static {p1}, Lcom/htc/android/worldclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 434
    invoke-static {p1, p2, v1, v2}, Lcom/htc/android/worldclock/AlertUtils;->snoozeNotification(Landroid/content/Context;IJ)V

    .line 435
    const/4 v3, 0x5

    invoke-static {p1, v3}, Lcom/htc/android/worldclock/AlertUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 437
    invoke-static {p1}, Lcom/htc/android/worldclock/AlertUtils;->sendCancelIntent(Landroid/content/Context;)V

    .line 438
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 179
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 146
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 148
    sget-boolean v0, Lcom/htc/android/worldclock/Global;->AUDIO_FOCUS_FUNC:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 155
    :cond_0
    invoke-static {}, Lcom/htc/android/worldclock/AlarmAlertWakeLock;->release()V

    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/worldclock/AlarmService;->mAlarmAlertStartActivity:Z

    .line 157
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 10
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/16 v9, 0x1000

    const/4 v8, 0x0

    .line 90
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 91
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 92
    sput-boolean v8, Lcom/htc/android/worldclock/AlarmService;->mAlarmAlertStartActivity:Z

    .line 94
    if-nez p1, :cond_0

    .line 95
    const-string v6, "get intent data fail"

    invoke-static {v6}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 96
    iget-object v6, p0, Lcom/htc/android/worldclock/AlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-boolean v6, Lcom/htc/android/worldclock/Global;->AUDIO_FOCUS_FUNC:Z

    if-eqz v6, :cond_1

    .line 101
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/AlarmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/htc/android/worldclock/AlarmService;->mAudioManager:Landroid/media/AudioManager;

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/AlarmService;->mAction:Ljava/lang/String;

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAction = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmService;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 106
    const-string v6, "alarm_id"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/android/worldclock/AlarmService;->mId:I

    .line 107
    const-string v6, "alarm_time"

    const-wide/16 v7, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 108
    .local v4, setFor:J
    const-string v6, "alarm_type"

    const/16 v7, 0x10

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/android/worldclock/AlarmService;->mAlarmType:I

    .line 109
    const-string v6, "alarm_description"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/AlarmService;->mDescription:Ljava/lang/String;

    .line 111
    iget-object v6, p0, Lcom/htc/android/worldclock/AlarmService;->mAction:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 112
    iget-object v6, p0, Lcom/htc/android/worldclock/AlarmService;->mAction:Ljava/lang/String;

    const-string v7, "cancel_snooze"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->cancelSnooze()V

    goto :goto_0

    .line 119
    :cond_2
    const-string v6, "dev.bootreason"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, bootReason:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bootReason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    .local v2, now:J
    const-wide/32 v6, 0x1d4c0

    add-long/2addr v6, v4

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AlarmService ignoring stale alarm intent id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/worldclock/AlarmService;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " setFor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 127
    iget-object v6, p0, Lcom/htc/android/worldclock/AlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 132
    :cond_3
    const-string v6, "ril.cdma.inecmmode"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, inEcm:Ljava/lang/String;
    const-string v6, "true"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 134
    const-string v6, "Emergency Call, auto snooze alarm"

    invoke-static {v6}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->AutoSnooze()V

    goto/16 :goto_0

    .line 139
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmService;->doAlarmService()V

    goto/16 :goto_0
.end method
