.class public Lcom/htc/clock/util/time/TimeCtrl;
.super Ljava/lang/Object;
.source "TimeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock/util/time/TimeCtrl$1;,
        Lcom/htc/clock/util/time/TimeCtrl$DbChangeObserver;,
        Lcom/htc/clock/util/time/TimeCtrl$MyUIHandler;,
        Lcom/htc/clock/util/time/TimeCtrl$MyBGHandler;,
        Lcom/htc/clock/util/time/TimeCtrl$MyReceiver;,
        Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;
    }
.end annotation


# static fields
.field public static final TIME_TYPE_MIN:I = 0x2

.field public static final TIME_TYPE_SETTING:I = 0x8

.field public static final TIME_TYPE_TIMEZONE:I = 0x4

.field public static final WHAT_ON_INIT_DATA:I = 0x3

.field public static final WHAT_ON_SETTING_CHANGED:I = 0x2

.field public static final WHAT_ON_START_SECOND:I = 0x1

.field public static final WHAT_UI_MINUTE:I = 0x3ea

.field public static final WHAT_UI_SECOND:I = 0x3e9

.field public static final WHAT_UI_SETTING_CHANGED:I = 0x3ed

.field public static final WHAT_UI_TIMEZONE_CHANGED:I = 0x3ec

.field public static final WHAT_UI_TIME_CHANGED:I = 0x3eb

.field private static mB24hourFormat:Z


# instance fields
.field mBGLooper:Landroid/os/Looper;

.field mCalendar:Ljava/util/Calendar;

.field private mCityCode:Ljava/lang/String;

.field protected mCityName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mDateFormat:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mListener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mSettingChangeObserver:Landroid/database/ContentObserver;

.field private mTimeZoneStr:Ljava/lang/String;

.field mType:I

.field mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/clock/util/time/TimeCtrl;->mB24hourFormat:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/htc/clock/util/time/TimeCtrl$MyUIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/clock/util/time/TimeCtrl$MyUIHandler;-><init>(Lcom/htc/clock/util/time/TimeCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mUIHandler:Landroid/os/Handler;

    .line 307
    const-string v0, "EE, MM-dd"

    iput-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mDateFormat:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/clock/util/time/TimeCtrl;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/clock/util/time/TimeCtrl;->getNextSecTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getNextSecTime()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 225
    .local v2, now:J
    rem-long v4, v2, v6

    sub-long v4, v6, v4

    add-long v0, v2, v4

    .line 226
    .local v0, next:J
    return-wide v0
.end method

.method private initBGHandler(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, looper:Landroid/os/Looper;
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 117
    :cond_0
    if-nez v0, :cond_2

    .line 118
    iget-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mBGLooper:Landroid/os/Looper;

    if-nez v2, :cond_1

    .line 119
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TimeCtrl"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 121
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mBGLooper:Landroid/os/Looper;

    .line 123
    .end local v1           #thread:Landroid/os/HandlerThread;
    :cond_1
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mBGLooper:Landroid/os/Looper;

    .line 125
    :cond_2
    new-instance v2, Lcom/htc/clock/util/time/TimeCtrl$MyBGHandler;

    invoke-direct {v2, p0, v0}, Lcom/htc/clock/util/time/TimeCtrl$MyBGHandler;-><init>(Lcom/htc/clock/util/time/TimeCtrl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mHandler:Landroid/os/Handler;

    .line 126
    return-void
.end method


# virtual methods
.method public getCalendar()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 349
    const-string v0, "TimeCtrl~ getCalendar null"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeCtrl~ getCalendar tz:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZoneCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method protected handlerInit()V
    .locals 7

    .prologue
    const/16 v6, 0x3ec

    .line 285
    const-string v4, "TimeCtrl~ handlerInit"

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, bUpdateCity:Z
    iget-object v4, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCityCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 288
    iget-object v4, p0, Lcom/htc/clock/util/time/TimeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCityCode:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/htc/util/weather/WeatherUtility;->getLocationListByCode(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 289
    .local v1, locationListCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 290
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    invoke-static {v1}, Lcom/htc/util/weather/WeatherUtility;->CursorToWeatherLocation(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    .line 292
    .local v2, tempWeatherLocation:Lcom/htc/util/weather/WeatherLocation;
    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCityName:Ljava/lang/String;

    .line 293
    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, timeZoneStr:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/htc/clock/util/time/TimeCtrl;->setTimeZone(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x1

    .line 297
    .end local v2           #tempWeatherLocation:Lcom/htc/util/weather/WeatherLocation;
    .end local v3           #timeZoneStr:Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 300
    .end local v1           #locationListCursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/clock/util/time/TimeCtrl;->handlerSettingChanged()V

    .line 301
    if-eqz v0, :cond_2

    .line 302
    iget-object v4, p0, Lcom/htc/clock/util/time/TimeCtrl;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6}, Lcom/htc/clock/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 303
    iget-object v4, p0, Lcom/htc/clock/util/time/TimeCtrl;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 305
    :cond_2
    return-void
.end method

.method protected handlerSettingChanged()V
    .locals 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/htc/clock/util/time/TimeCtrl;->updateFormat()Z

    move-result v0

    .line 279
    .local v0, bUpdate:Z
    if-eqz v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-static {v1, v2}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 282
    :cond_0
    return-void
.end method

.method protected handlerTimeZoneChanged()V
    .locals 2

    .prologue
    const/16 v1, 0x3ec

    .line 165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    .line 166
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/htc/clock/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 167
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 168
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;ILandroid/os/Handler;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "listener"
    .parameter "type"
    .parameter "handler"
    .parameter "locCode"

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeCtrl~ init mCityCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mListener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;

    .line 67
    iput p3, p0, Lcom/htc/clock/util/time/TimeCtrl;->mType:I

    .line 68
    iput-object p5, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCityCode:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, v3}, Lcom/htc/clock/util/time/TimeCtrl;->setTimeZone(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p4}, Lcom/htc/clock/util/time/TimeCtrl;->initBGHandler(Landroid/os/Handler;)V

    .line 77
    new-instance v1, Lcom/htc/clock/util/time/TimeCtrl$MyReceiver;

    invoke-direct {v1, p0, v3}, Lcom/htc/clock/util/time/TimeCtrl$MyReceiver;-><init>(Lcom/htc/clock/util/time/TimeCtrl;Lcom/htc/clock/util/time/TimeCtrl$1;)V

    iput-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    and-int/lit8 v1, p3, 0x2

    if-lez v1, :cond_0

    .line 81
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    :cond_0
    and-int/lit8 v1, p3, 0x4

    if-lez v1, :cond_1

    .line 84
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mSettingChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_2

    and-int/lit8 v1, p3, 0x8

    if-lez v1, :cond_2

    .line 89
    new-instance v1, Lcom/htc/clock/util/time/TimeCtrl$DbChangeObserver;

    iget-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/htc/clock/util/time/TimeCtrl$DbChangeObserver;-><init>(Lcom/htc/clock/util/time/TimeCtrl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mSettingChangeObserver:Landroid/database/ContentObserver;

    .line 90
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/clock/util/time/TimeCtrl;->mSettingChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 94
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_3
    return-void
.end method

.method public is24HourFormat()Z
    .locals 1

    .prologue
    .line 327
    sget-boolean v0, Lcom/htc/clock/util/time/TimeCtrl;->mB24hourFormat:Z

    return v0
.end method

.method protected onMinute()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mListener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;

    .line 231
    .local v0, listener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0}, Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;->onMinute()V

    .line 234
    :cond_0
    return-void
.end method

.method protected onSecond()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mListener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;

    .line 238
    .local v0, listener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;
    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0}, Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;->onSecond()V

    .line 241
    :cond_0
    return-void
.end method

.method protected onSettingChanged()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mListener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;

    .line 259
    .local v0, listener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;
    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0}, Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;->onFormatChanged()V

    .line 262
    :cond_0
    return-void
.end method

.method protected onTimeChanged()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mListener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;

    .line 245
    .local v0, listener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;
    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0}, Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;->onTimeChanged()V

    .line 248
    :cond_0
    return-void
.end method

.method protected onTimeZoneChanged()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mListener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;

    .line 252
    .local v0, listener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;
    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0}, Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;->onTimeZoneChanged()V

    .line 255
    :cond_0
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 3
    .parameter "timezone"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, tz:Ljava/util/TimeZone;
    iput-object p1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mTimeZoneStr:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 103
    :cond_0
    if-eqz v0, :cond_1

    .line 104
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    .line 109
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeCtrl~ setTimeZone tz:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 110
    return-void

    .line 107
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public uninit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mSettingChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mSettingChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 131
    iput-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mSettingChangeObserver:Landroid/database/ContentObserver;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mBGLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mBGLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    iput-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    :cond_2
    iput-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mListener:Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;

    .line 141
    return-void
.end method

.method public update24HourFormat()Z
    .locals 3

    .prologue
    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, ret:Z
    iget-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 333
    .local v0, is24Hour:Z
    sget-boolean v2, Lcom/htc/clock/util/time/TimeCtrl;->mB24hourFormat:Z

    if-eq v2, v0, :cond_0

    .line 334
    const/4 v1, 0x1

    .line 335
    sput-boolean v0, Lcom/htc/clock/util/time/TimeCtrl;->mB24hourFormat:Z

    .line 337
    :cond_0
    return v1
.end method

.method public updateDateFormat()Z
    .locals 4

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 315
    .local v1, ret:Z
    iget-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format_short"

    invoke-static {v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, format:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mDateFormat:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    const/4 v1, 0x1

    .line 319
    iput-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl;->mDateFormat:Ljava/lang/String;

    .line 322
    :cond_0
    return v1
.end method

.method public updateFormat()Z
    .locals 2

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, bUpdated:Z
    invoke-virtual {p0}, Lcom/htc/clock/util/time/TimeCtrl;->updateDateFormat()Z

    move-result v1

    or-int/2addr v0, v1

    .line 343
    invoke-virtual {p0}, Lcom/htc/clock/util/time/TimeCtrl;->update24HourFormat()Z

    move-result v1

    or-int/2addr v0, v1

    .line 344
    return v0
.end method
