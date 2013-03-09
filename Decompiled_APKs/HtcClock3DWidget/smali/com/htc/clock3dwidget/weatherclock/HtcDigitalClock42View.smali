.class public Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;
.super Lcom/htc/clock3dwidget/weatherclock/WeatherView;
.source "HtcDigitalClock42View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;
    }
.end annotation


# static fields
.field private static mB24hourFormat:Z


# instance fields
.field protected final ANIMATION_HOUR_COUNT:I

.field protected final ANIMATION_MINUTE_COUNT:I

.field protected final ClockFormats:[Ljava/lang/String;

.field protected mBListenTimeZoneChanged:Z

.field private mBUpdateFomate:Z

.field protected mCalendar:Ljava/util/Calendar;

.field private mDateFormat:Ljava/lang/String;

.field protected mDigital_Data:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

.field protected mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

.field private mFlipAnimePrepared:Z

.field protected mHour:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLogCount:I

.field protected mMinuteFlipCount:I

.field protected mMinutes:I

.field protected mOldHour:I

.field protected mOldMinutes:I

.field protected mPaused:Z

.field public mReceiverRegistered:Z

.field private mTimeZoneChangedLog:Ljava/lang/StringBuffer;

.field private mUIHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field public mUseAnimation:Z

.field private m_bAutoSyn:Z

.field private m_telephonyManager:Landroid/telephony/TelephonyManager;

.field protected tz:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mB24hourFormat:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Lcom/htc/android/rosie/widget/Widget$Host;)V
    .locals 6
    .parameter "context"
    .parameter "widget"
    .parameter "host"

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/clock3dwidget/weatherclock/WeatherView;-><init>(Landroid/content/Context;Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Lcom/htc/android/rosie/widget/Widget$Host;)V

    .line 35
    iput v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    .line 36
    iput v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldMinutes:I

    .line 37
    iput v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    .line 38
    iput v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 42
    iput-boolean v4, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mPaused:Z

    .line 48
    iput v4, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->ANIMATION_HOUR_COUNT:I

    .line 49
    iput v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->ANIMATION_MINUTE_COUNT:I

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EE, MM-dd"

    aput-object v1, v0, v3

    const-string v1, "EE, dd-MM"

    aput-object v1, v0, v4

    const-string v1, "EE, MMM dd"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "EE, dd-MMM"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EE, MM-dd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EE, MMM dd"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->ClockFormats:[Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isFlipEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mUseAnimation:Z

    .line 54
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mFlipAnimePrepared:Z

    .line 57
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mReceiverRegistered:Z

    .line 92
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$1;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$1;-><init>(Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 374
    iput-boolean v4, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mBListenTimeZoneChanged:Z

    .line 384
    iput v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mLogCount:I

    .line 404
    iput-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDateFormat:Ljava/lang/String;

    .line 421
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mBUpdateFomate:Z

    .line 437
    iput-boolean v4, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->m_bAutoSyn:Z

    .line 452
    iput-object v5, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    .line 30
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;

    invoke-direct {v0, p0, v5}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;-><init>(Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$1;)V

    invoke-interface {p3, v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mUIHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 31
    return-void
.end method

.method static synthetic access$100(Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mFlipAnimePrepared:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mUIHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method private applyRotation()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setDestNumber(I)V

    .line 263
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setDestNumber(II)V

    .line 265
    :cond_0
    return-void
.end method

.method private increaseHour()V
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 240
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->is24HourFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    rem-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 243
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    add-int/lit8 v0, v0, -0xc

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    goto :goto_0
.end method


# virtual methods
.method protected applyRotationTest()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 468
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 470
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    .line 471
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 473
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->is24HourFormat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 475
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 476
    :cond_0
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    add-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    .line 485
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mPaused:Z

    if-nez v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setDestNumber(I)V

    .line 488
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setDestNumber(I)V

    .line 491
    :cond_2
    return-void

    .line 478
    :cond_3
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    if-nez v0, :cond_4

    .line 479
    iput v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 480
    :cond_4
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    .line 481
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    if-nez v0, :cond_1

    .line 482
    iput v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    goto :goto_0
.end method

.method public checkSystemAutoSynTimezone()V
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->isTimeAutoState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->m_bAutoSyn:Z

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSystemAutoSynTimezone~ m_bAutoSyn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->m_bAutoSyn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mPaused:Z

    .line 128
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->deInit()V

    .line 132
    return-void
.end method

.method public clearAnimations()V
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->clearAnimations(II)V

    .line 174
    return-void
.end method

.method public clearAnimations(II)V
    .locals 1
    .parameter "hour"
    .parameter "minutes"

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mUseAnimation:Z

    if-nez v0, :cond_0

    .line 180
    :cond_0
    return-void
.end method

.method public deInit()V
    .locals 3

    .prologue
    .line 115
    iget-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mReceiverRegistered:Z

    .line 124
    :cond_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public getCalendarNow()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, calendar:Ljava/util/Calendar;
    iget-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mBListenTimeZoneChanged:Z

    if-eqz v1, :cond_0

    .line 397
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->tz:Ljava/util/TimeZone;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getListenTimeZoneChanged()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mBListenTimeZoneChanged:Z

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->tz:Ljava/util/TimeZone;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 102
    iget-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mReceiverRegistered:Z

    .line 112
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public is24HourFormat()Z
    .locals 1

    .prologue
    .line 424
    sget-boolean v0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mB24hourFormat:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mPaused:Z

    return v0
.end method

.method public isPreparedFlip()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mFlipAnimePrepared:Z

    return v0
.end method

.method public isSimExist()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 455
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 460
    .local v0, simState:I
    if-eq v0, v2, :cond_1

    if-nez v0, :cond_2

    .line 462
    :cond_1
    const/4 v1, 0x0

    .line 464
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public isTimeAutoState()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->isTimeAutoState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isTimezoneAutoSyn()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->m_bAutoSyn:Z

    return v0
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->onTimeChanged(Z)V

    .line 184
    return-void
.end method

.method public onTimeChanged(Z)V
    .locals 2
    .parameter "bUseAnimation"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mPaused:Z

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "onTimeChanged~ mPaused is true"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 193
    const-string v0, "onTimeChanged mCalendar null"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->updateCurrentTime()V

    .line 199
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldMinutes:I

    if-eq v0, v1, :cond_3

    .line 200
    :cond_2
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldMinutes:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->clearAnimations(II)V

    .line 201
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinuteFlipCount:I

    .line 202
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mUseAnimation:Z

    if-nez v0, :cond_5

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimeChanged~ mHour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMinutes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    .line 206
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    .line 222
    :cond_4
    :goto_0
    return-void

    .line 210
    :cond_5
    if-eqz p1, :cond_6

    .line 212
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->applyRotationTest()V

    goto :goto_0

    .line 214
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimeChanged~ mHour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMinutes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    .line 218
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    goto :goto_0
.end method

.method public prepareAnimation()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    const/16 v2, 0xc

    .line 328
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mUseAnimation:Z

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->clearAnimations()V

    .line 331
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->getCalendarNow()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    .line 333
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    .line 334
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 336
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->is24HourFormat()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 337
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 338
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    .line 342
    :cond_2
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    add-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    .line 354
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->setData()V

    .line 356
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v0, v0, -0x2

    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldMinutes:I

    .line 357
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_4

    .line 358
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    .line 359
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldMinutes:I

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    .line 361
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAnimation~ mOldHour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOldMinutes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 363
    iput-boolean v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mFlipAnimePrepared:Z

    goto/16 :goto_0

    .line 344
    :cond_5
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    if-nez v0, :cond_6

    .line 345
    iput v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 346
    :cond_6
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_7

    .line 347
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    .line 349
    :cond_7
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    .line 350
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    if-nez v0, :cond_3

    .line 351
    iput v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    goto :goto_1
.end method

.method public printLog()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mTimeZoneChangedLog:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mTimeZoneChangedLog:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method

.method public setData()V
    .locals 3

    .prologue
    .line 135
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Data:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, format:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 139
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Data:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 143
    .end local v0           #format:Ljava/lang/String;
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setListenTimeZoneChanged(Z)V
    .locals 0
    .parameter "bListen"

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mBListenTimeZoneChanged:Z

    .line 378
    return-void
.end method

.method public setPause(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->setPause(ZZ)V

    .line 269
    return-void
.end method

.method public setPause(ZZ)V
    .locals 2
    .parameter "value"
    .parameter "bTimeChanged"

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPause~ mPaused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 273
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mPaused:Z

    .line 274
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mPaused:Z

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    if-eqz p2, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->onTimeChanged()V

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 2
    .parameter "timezone"

    .prologue
    .line 226
    monitor-enter p0

    .line 227
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 228
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->tz:Ljava/util/TimeZone;

    .line 229
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->tz:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    .line 234
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimeZone~ time zone id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->tz:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 235
    monitor-exit p0

    .line 236
    return-void

    .line 231
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->tz:Ljava/util/TimeZone;

    .line 232
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public skinApply()V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->startAnimation(Z)V

    .line 288
    return-void
.end method

.method public startAnimation(Z)V
    .locals 4
    .parameter "bPause"

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0x9

    .line 291
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mPaused:Z

    .line 292
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mUseAnimation:Z

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mFlipAnimePrepared:Z

    if-nez v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->onTimeChanged()V

    goto :goto_0

    .line 298
    :cond_1
    const-string v0, "startAnimation~"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->getCalendarNow()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    .line 302
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    .line 303
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 305
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->is24HourFormat()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 306
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 307
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    .line 318
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->setData()V

    .line 320
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinuteFlipCount:I

    .line 323
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->applyRotation()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mFlipAnimePrepared:Z

    goto :goto_0

    .line 312
    :cond_4
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    if-nez v0, :cond_5

    .line 313
    iput v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 314
    :cond_5
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    goto :goto_1
.end method

.method public testAnimation()V
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->clearAnimations()V

    .line 248
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    .line 249
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldMinutes:I

    .line 251
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    .line 253
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->increaseHour()V

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->applyRotation()V

    .line 258
    return-void
.end method

.method public update24HourFormat()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mB24hourFormat:Z

    .line 429
    return-void
.end method

.method updateCurrentTime()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0x9

    .line 146
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldHour:I

    .line 147
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mOldMinutes:I

    .line 149
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->getCalendarNow()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    .line 150
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 152
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mMinutes:I

    .line 153
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 155
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->is24HourFormat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 157
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    .line 169
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->setData()V

    .line 170
    return-void

    .line 162
    :cond_2
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    if-nez v0, :cond_3

    .line 163
    iput v4, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mHour:I

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    goto :goto_0
.end method

.method public updateDateFormat()V
    .locals 3

    .prologue
    .line 412
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format_short"

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, format:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 416
    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mDateFormat:Ljava/lang/String;

    .line 418
    :cond_0
    return-void
.end method

.method public updateFormat()V
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->updateDateFormat()V

    .line 433
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->update24HourFormat()V

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mBUpdateFomate:Z

    .line 435
    return-void
.end method
