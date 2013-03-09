.class public Lcom/htc/dockmode/clock/ClockControl;
.super Ljava/lang/Object;
.source "ClockControl.java"

# interfaces
.implements Lcom/htc/dockmode/utils/ControlInterface;


# static fields
.field public static final TAB_ALARMCLOCK:Ljava/lang/String; = "2"

.field public static final TAB_WORLDCLOCK:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = null

.field public static final WORLDCLOCK_ACTION:Ljava/lang/String; = "worldclock_action"

.field private static final localLOGV:Z


# instance fields
.field private final ALARM_NOTIFY_DURATION:J

.field private m24HourMode:Z

.field private mActivity:Landroid/app/Activity;

.field private mAlarmEnabled:Z

.field private mAlarmIcon:Landroid/widget/ImageView;

.field private mAlarmTimeString:Ljava/lang/String;

.field private mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

.field private mClockClickListener:Landroid/view/View$OnClickListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDate:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/String;

.field private mFetchAlarmDataUpdate:Ljava/lang/Runnable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLayoutId:I

.field private mNextAlarm:Landroid/widget/TextView;

.field private mNextAlarmTime:J

.field private mNonUIHandler:Landroid/os/Handler;

.field private mOnAlarmUpdate:Ljava/lang/Runnable;

.field private mOnTimeUpdate:Ljava/lang/Runnable;

.field private mRefreshAlarm:Ljava/lang/Runnable;

.field private mRefreshTime:Ljava/lang/Runnable;

.field private mResId:Lcom/htc/dockmode/clock/ClockRes;

.field private mSnoozed:Z

.field private mStopped:Z

.field private mTime:Lcom/htc/dockmode/widget/FlipDigitalClock;

.field private mUIHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private mViewClick:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/htc/dockmode/clock/ClockControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/clock/ClockControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;I)V
    .locals 2
    .parameter "activity"
    .parameter "uiHander"
    .parameter "nonUIHandler"
    .parameter "layoutId"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mStopped:Z

    .line 50
    iput-boolean v0, p0, Lcom/htc/dockmode/clock/ClockControl;->m24HourMode:Z

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mNextAlarmTime:J

    .line 56
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/htc/dockmode/clock/ClockControl;->ALARM_NOTIFY_DURATION:J

    .line 181
    new-instance v0, Lcom/htc/dockmode/clock/ClockControl$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/clock/ClockControl$1;-><init>(Lcom/htc/dockmode/clock/ClockControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mOnTimeUpdate:Ljava/lang/Runnable;

    .line 190
    new-instance v0, Lcom/htc/dockmode/clock/ClockControl$2;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/clock/ClockControl$2;-><init>(Lcom/htc/dockmode/clock/ClockControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mRefreshTime:Ljava/lang/Runnable;

    .line 205
    new-instance v0, Lcom/htc/dockmode/clock/ClockControl$3;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/clock/ClockControl$3;-><init>(Lcom/htc/dockmode/clock/ClockControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    new-instance v0, Lcom/htc/dockmode/clock/ClockControl$4;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/clock/ClockControl$4;-><init>(Lcom/htc/dockmode/clock/ClockControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mFetchAlarmDataUpdate:Ljava/lang/Runnable;

    .line 296
    new-instance v0, Lcom/htc/dockmode/clock/ClockControl$5;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/clock/ClockControl$5;-><init>(Lcom/htc/dockmode/clock/ClockControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mViewClick:Landroid/view/View$OnClickListener;

    .line 314
    new-instance v0, Lcom/htc/dockmode/clock/ClockControl$6;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/clock/ClockControl$6;-><init>(Lcom/htc/dockmode/clock/ClockControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mClockClickListener:Landroid/view/View$OnClickListener;

    .line 360
    new-instance v0, Lcom/htc/dockmode/clock/ClockControl$7;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/clock/ClockControl$7;-><init>(Lcom/htc/dockmode/clock/ClockControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mOnAlarmUpdate:Ljava/lang/Runnable;

    .line 378
    new-instance v0, Lcom/htc/dockmode/clock/ClockControl$8;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/clock/ClockControl$8;-><init>(Lcom/htc/dockmode/clock/ClockControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mRefreshAlarm:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/htc/dockmode/clock/ClockControl;->mContext:Landroid/content/Context;

    .line 67
    iput-object p1, p0, Lcom/htc/dockmode/clock/ClockControl;->mActivity:Landroid/app/Activity;

    .line 68
    iput-object p2, p0, Lcom/htc/dockmode/clock/ClockControl;->mUIHandler:Landroid/os/Handler;

    .line 69
    iput-object p3, p0, Lcom/htc/dockmode/clock/ClockControl;->mNonUIHandler:Landroid/os/Handler;

    .line 70
    iput p4, p0, Lcom/htc/dockmode/clock/ClockControl;->mLayoutId:I

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/clock/ClockControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mStopped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/dockmode/clock/ClockControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->loadFormatAndScale()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/dockmode/clock/ClockControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->getAllDisplayAlarm()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/dockmode/clock/ClockControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->updateAlarmDisplay()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/dockmode/clock/ClockControl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mRefreshTime:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dockmode/clock/ClockControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/dockmode/clock/ClockControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->resumeTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/dockmode/clock/ClockControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->refreshDate()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/dockmode/clock/ClockControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->refreshAlarm()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/dockmode/clock/ClockControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->refreshTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/dockmode/clock/ClockControl;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/dockmode/clock/ClockControl;->scheduleAlarmDelayed(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/dockmode/clock/ClockControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->goToClock()V

    return-void
.end method

.method private getAlarmTimeString()V
    .locals 6

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, timeString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 101
    .local v0, enabled:Z
    iget-wide v2, p0, Lcom/htc/dockmode/clock/ClockControl;->mNextAlarmTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 102
    iget-wide v2, p0, Lcom/htc/dockmode/clock/ClockControl;->mNextAlarmTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/htc/dockmode/clock/ClockControl;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/htc/dockmode/clock/ClockControl;->mNextAlarmTime:J

    invoke-static {v2, v3, v4}, Lcom/htc/dockmode/clock/AlarmUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_0
    const/4 v0, 0x1

    .line 114
    :goto_1
    iput-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mAlarmTimeString:Ljava/lang/String;

    .line 115
    iput-boolean v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mAlarmEnabled:Z

    .line 116
    return-void

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/htc/dockmode/clock/ClockControl;->mResId:Lcom/htc/dockmode/clock/ClockRes;

    iget-object v1, v2, Lcom/htc/dockmode/clock/ClockRes;->alarmOn:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/htc/dockmode/clock/ClockControl;->mResId:Lcom/htc/dockmode/clock/ClockRes;

    iget-object v1, v2, Lcom/htc/dockmode/clock/ClockRes;->alarmOff:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getAllDisplayAlarm()V
    .locals 4

    .prologue
    .line 370
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/dockmode/clock/ClockPref;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 372
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-direct {p0, v0}, Lcom/htc/dockmode/clock/ClockControl;->getNextAlarm(Landroid/content/SharedPreferences;)V

    .line 373
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->getAlarmTimeString()V

    .line 375
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/dockmode/clock/ClockControl;->mRefreshAlarm:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    return-void
.end method

.method private getDateFormat(Z)Ljava/lang/String;
    .locals 3
    .parameter "longFormat"

    .prologue
    .line 265
    const-string v0, ""

    .line 267
    .local v0, dateFormat:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_1

    .line 268
    if-eqz p1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 272
    :cond_0
    const-string v0, "EE, MMM d, yyyy"

    .line 282
    :cond_1
    :goto_0
    return-object v0

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "date_format_short"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 278
    :cond_3
    const-string v0, "EE, MMM d"

    goto :goto_0
.end method

.method private getDateFormat(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 329
    const-string v0, "short_dateformat"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mDateFormat:Ljava/lang/String;

    .line 331
    const-string v0, "hour_mode"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/dockmode/clock/ClockControl;->m24HourMode:Z

    .line 333
    return-void
.end method

.method private getNextAlarm(Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/dockmode/clock/AlarmUtils;->getNextAlarm(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mNextAlarmTime:J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    const-string v0, "snooze"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mSnoozed:Z

    .line 342
    return-void

    .line 338
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private goToClock()V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    const-string v1, "worldclock_action"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v1, "com.htc.android.worldclock"

    const-string v2, "com.htc.android.worldclock.WorldClockTabControl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 312
    return-void
.end method

.method private initRegister()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "com.htc.intent.action.next_alarm"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/dockmode/clock/ClockControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    return-void
.end method

.method private initRestoreUI()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->updateTime()V

    .line 348
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mResId:Lcom/htc/dockmode/clock/ClockRes;

    iget v1, v1, Lcom/htc/dockmode/clock/ClockRes;->date:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mDate:Landroid/widget/TextView;

    .line 288
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mView:Landroid/view/View;

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/dockmode/widget/FlipDigitalClock;

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mTime:Lcom/htc/dockmode/widget/FlipDigitalClock;

    .line 290
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mResId:Lcom/htc/dockmode/clock/ClockRes;

    iget v1, v1, Lcom/htc/dockmode/clock/ClockRes;->next_alarm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mNextAlarm:Landroid/widget/TextView;

    .line 291
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mResId:Lcom/htc/dockmode/clock/ClockRes;

    iget v1, v1, Lcom/htc/dockmode/clock/ClockRes;->ic_alarm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mAlarmIcon:Landroid/widget/ImageView;

    .line 293
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mViewClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    return-void
.end method

.method private loadFormatAndScale()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/dockmode/clock/ClockControl;->getDateFormat(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mDateFormat:Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lcom/htc/dockmode/clock/ClockControl;->setCurrentDay()V

    .line 262
    return-void
.end method

.method private loadPreference()V
    .locals 4

    .prologue
    .line 321
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/dockmode/clock/ClockPref;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 323
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-direct {p0, v0}, Lcom/htc/dockmode/clock/ClockControl;->getDateFormat(Landroid/content/SharedPreferences;)V

    .line 324
    invoke-direct {p0, v0}, Lcom/htc/dockmode/clock/ClockControl;->getNextAlarm(Landroid/content/SharedPreferences;)V

    .line 325
    return-void
.end method

.method private refreshAlarm()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mNextAlarm:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mOnAlarmUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private refreshDate()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mDate:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mDateFormat:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshTime()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mOnTimeUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method

.method private resumeTime()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mTime:Lcom/htc/dockmode/widget/FlipDigitalClock;

    iget-boolean v1, p0, Lcom/htc/dockmode/clock/ClockControl;->m24HourMode:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/dockmode/widget/FlipDigitalClock;->setClockInfo(ZLjava/util/Calendar;)V

    .line 200
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mTime:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-virtual {v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->onResume()V

    .line 201
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->refreshDate()V

    .line 202
    return-void
.end method

.method private savePreference()V
    .locals 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/dockmode/clock/ClockPref;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    .local v0, settings:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mDateFormat:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "short_dateformat"

    iget-object v2, p0, Lcom/htc/dockmode/clock/ClockControl;->mDateFormat:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 156
    :cond_0
    const-string v1, "hour_mode"

    iget-boolean v2, p0, Lcom/htc/dockmode/clock/ClockControl;->m24HourMode:Z

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    .line 158
    return-void
.end method

.method private scheduleAlarmDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mStopped:Z

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mFetchAlarmDataUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setNextAlarmInfo(ZLjava/lang/String;)V
    .locals 5
    .parameter "enabled"
    .parameter "timeString"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 391
    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mResId:Lcom/htc/dockmode/clock/ClockRes;

    iget v1, v1, Lcom/htc/dockmode/clock/ClockRes;->icon_alarm:I

    aput v1, v0, v2

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mResId:Lcom/htc/dockmode/clock/ClockRes;

    iget v1, v1, Lcom/htc/dockmode/clock/ClockRes;->icon_alarm:I

    aput v1, v0, v3

    .line 394
    .local v0, resId:[I
    if-eqz p1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mNextAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mAlarmIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mNextAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mAlarmIcon:Landroid/widget/ImageView;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 408
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mNextAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mAlarmIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mAlarmIcon:Landroid/widget/ImageView;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private unInitRegister()V
    .locals 2

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unscheduleAlarmFetch()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mFetchAlarmDataUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method private updateAlarmDisplay()V
    .locals 2

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mAlarmEnabled:Z

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mAlarmTimeString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/dockmode/clock/ClockControl;->setNextAlarmInfo(ZLjava/lang/String;)V

    .line 388
    return-void
.end method

.method private updateTime()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mTime:Lcom/htc/dockmode/widget/FlipDigitalClock;

    iget-boolean v1, p0, Lcom/htc/dockmode/clock/ClockControl;->m24HourMode:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/dockmode/widget/FlipDigitalClock;->setClockInfo(ZLjava/util/Calendar;)V

    .line 352
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mTime:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-virtual {v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->updateTime()V

    .line 353
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->refreshDate()V

    .line 354
    return-void
.end method


# virtual methods
.method public onDoDestroy()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->savePreference()V

    .line 146
    return-void
.end method

.method public onDoInit1()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/htc/dockmode/clock/ClockRes;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/dockmode/clock/ClockRes;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mResId:Lcom/htc/dockmode/clock/ClockRes;

    .line 75
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mContentResolver:Landroid/content/ContentResolver;

    .line 76
    invoke-static {}, Lcom/htc/dockmode/utils/AutoResume;->getInstance()Lcom/htc/dockmode/utils/AutoResume;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

    .line 78
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->loadPreference()V

    .line 79
    return-void
.end method

.method public onDoInit2()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->getAlarmTimeString()V

    .line 95
    return-void
.end method

.method public onDoPause()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mStopped:Z

    .line 127
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mTime:Lcom/htc/dockmode/widget/FlipDigitalClock;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mTime:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-virtual {v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->onPause()V

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->unInitRegister()V

    .line 131
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->unscheduleAlarmFetch()V

    .line 132
    return-void
.end method

.method public onDoRefresh1()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mLayoutId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mView:Landroid/view/View;

    .line 85
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->initView()V

    .line 86
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->initRestoreUI()V

    .line 88
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->getAlarmTimeString()V

    .line 89
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->updateAlarmDisplay()V

    .line 90
    return-void
.end method

.method public onDoRemoveMessages()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mRefreshTime:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mRefreshAlarm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mOnTimeUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mOnAlarmUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public onDoResume()V
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mStopped:Z

    .line 120
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->initRegister()V

    .line 121
    invoke-direct {p0}, Lcom/htc/dockmode/clock/ClockControl;->refreshTime()V

    .line 122
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/dockmode/clock/ClockControl;->scheduleAlarmDelayed(J)V

    .line 123
    return-void
.end method

.method public onDoStop()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public resetLayout()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 411
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 414
    .local v0, res:Landroid/content/res/Resources;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-eq v1, v2, :cond_0

    .line 415
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mView:Landroid/view/View;

    const v2, 0x7f0a0007

    const v3, 0x7f070011

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/htc/dockmode/utils/ResetLayoutUtil;->ResetRelativeLayoutMargin(Landroid/content/res/Resources;Landroid/view/View;IIIII)V

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl;->mTime:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-virtual {v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->forceSetTime()V

    .line 421
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method protected setCurrentDay()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/dockmode/clock/ClockControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/dockmode/clock/AlarmUtils;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/dockmode/clock/ClockControl;->m24HourMode:Z

    .line 358
    return-void
.end method
