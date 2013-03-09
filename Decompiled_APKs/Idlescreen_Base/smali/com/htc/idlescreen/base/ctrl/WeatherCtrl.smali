.class public Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;
.super Lcom/htc/idlescreen/base/ctrl/BaseCtrl;
.source "WeatherCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyHandler;,
        Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyReceiver;,
        Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;
    }
.end annotation


# static fields
.field private static final DAY:J = 0x5265c00L

.field private static final LOG_PREFIX:Ljava/lang/String; = "WeatherCtrl"

.field private static final WEATHER_ALARM:Ljava/lang/String; = "com.htc.idlescreen.alarm.weather"

.field public static final WEATHER_ALERTS_ENABLED:Ljava/lang/String; = "com.htc.weather_alerts_enabled"

.field private static final WHAT_ON_CANCEL:I = 0x2713

.field private static final WHAT_ON_SCHEDULE:I = 0x2712

.field private static final WHAT_ON_SHOWTIME:I = 0x2711

.field private static final WHAT_ON_UPDATESETTING:I = 0x2716

.field private static final WHAT_ON_WEATHER_DISMISS:I = 0x3ed

.field private static final WHAT_ON_WEATHER_UPDATE:I = 0x3ec

.field private static final WHAT_UI_UPDATESETTING:I = 0x4e21


# instance fields
.field city:I

.field private mAirPlaneMode:Z

.field private mAirplaneTime:J

.field private mCurCity:Ljava/lang/String;

.field private mData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

.field private mLocCtrl:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

.field private mMoningAlert:Z

.field private mNextShowTime:J

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPreData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStopped:Z

.field private mUIHandler:Landroid/os/Handler;

.field private mWeatherListener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;

.field private mWeatherSetting:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;-><init>()V

    .line 43
    iput-wide v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mNextShowTime:J

    .line 44
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mStopped:Z

    .line 45
    iput-wide v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mAirplaneTime:J

    .line 47
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mMoningAlert:Z

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mCurCity:Ljava/lang/String;

    .line 52
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mWeatherSetting:Z

    .line 54
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyHandler;-><init>(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mUIHandler:Landroid/os/Handler;

    .line 192
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mAirPlaneMode:Z

    .line 274
    iput v3, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->city:I

    .line 338
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$1;

    invoke-direct {v0, p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$1;-><init>(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mWeatherListener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;

    .line 394
    return-void
.end method

.method static synthetic access$200(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->requestShowWeather()V

    return-void
.end method

.method private dumpTime(J)Ljava/lang/String;
    .locals 4
    .parameter "ms"

    .prologue
    .line 221
    invoke-static {}, Lcom/htc/idlescreen/base/MyLog;->IsDebugLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 223
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 225
    .local v1, str:Ljava/lang/StringBuilder;
    const-string v2, "dumpTime c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #str:Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 267
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.idlescreen.alarm.weather"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mPendingIntent:Landroid/app/PendingIntent;

    .line 271
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v1
.end method

.method private getShowTime()J
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xb

    const/4 v8, 0x0

    const/4 v7, 0x6

    .line 237
    const/4 v0, 0x6

    .line 238
    .local v0, ALARM_HOUR:I
    const/4 v1, 0x0

    .line 240
    .local v1, ALARM_MIN:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 241
    .local v2, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 243
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 244
    .local v3, nowHour:I
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 247
    .local v4, nowMinute:I
    if-lt v7, v3, :cond_0

    if-ne v7, v3, :cond_1

    if-ltz v4, :cond_1

    .line 249
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 251
    :cond_1
    invoke-virtual {v2, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 252
    invoke-virtual {v2, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v5, 0xd

    invoke-virtual {v2, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v5, 0xe

    invoke-virtual {v2, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 256
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    return-wide v5
.end method

.method private requestShowWeather()V
    .locals 4

    .prologue
    const/16 v3, 0x3ec

    .line 215
    const-string v0, "WeatherCtrl"

    const-string v1, "requestShowWeatherData"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 217
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 218
    return-void
.end method

.method private startMonitor()V
    .locals 3

    .prologue
    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mStopped:Z

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mLocCtrl:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    if-nez v1, :cond_0

    .line 162
    const-string v1, "WeatherCtrl"

    const-string v2, "startMonitor"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mLocCtrl:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    .line 164
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mLocCtrl:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->setTempUnitEnable(Z)V

    .line 165
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mLocCtrl:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->addCurLoc()Z

    .line 166
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mLocCtrl:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    const-string v2, "cur"

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->setLocKey(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mLocCtrl:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getState()Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    move-result-object v1

    sget-object v2, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;->START:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    if-eq v1, v2, :cond_0

    .line 168
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getBGLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 169
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mLocCtrl:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mWeatherListener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;

    invoke-virtual {v1, v0, v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->register(Landroid/os/Handler;Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;)V

    .line 173
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    monitor-exit p0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopMonitor()V
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    const-string v0, "WeatherCtrl"

    const-string v1, "stopMonitor"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mLocCtrl:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mLocCtrl:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->unRegister()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mLocCtrl:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    .line 183
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    .line 184
    monitor-exit p0

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateWeather(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V
    .locals 7
    .parameter "weatherCtrl"

    .prologue
    .line 276
    const/4 v2, 0x0

    .line 277
    .local v2, dataOK:Z
    new-instance v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    invoke-direct {v1}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;-><init>()V

    .line 278
    .local v1, data:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;
    const/4 v0, 0x0

    .line 279
    .local v0, cityChanged:Z
    if-eqz p1, :cond_3

    .line 280
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLocState()Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    move-result-object v3

    sget-object v4, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;->OK:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    if-ne v3, v4, :cond_5

    .line 281
    const-string v3, "WeatherCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWeather oldCity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mCurCity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLocName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CityName:Ljava/lang/String;

    .line 284
    iget-object v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CityName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 285
    iget-object v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CityName:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mCurCity:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CityName:Ljava/lang/String;

    sget-object v4, Lcom/htc/idlescreen/base/ctrl/weather/LocationUtil;->sDefaultLocName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    :cond_0
    const/4 v0, 0x1

    .line 288
    iget-object v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CityName:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mCurCity:Ljava/lang/String;

    .line 290
    :cond_1
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getHTemp()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->HTemp:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLTemp()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->LTemp:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLocTemp()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CurTemp:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLocConditionIdInt()I

    move-result v3

    iput v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CurCondition:I

    .line 294
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLastUpdateTime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->UpdateTime:J

    .line 296
    const-string v3, "WeatherCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWeather data.CurCondition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CurCondition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v3, "WeatherCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWeather data.UpdateTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->UpdateTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v3, "WeatherCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWeather data.CityName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v3, "WeatherCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWeather mAirplaneTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mAirplaneTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CurCondition:I

    if-eqz v3, :cond_3

    .line 301
    monitor-enter p0

    .line 302
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mWeatherSetting:Z

    if-eqz v3, :cond_2

    .line 303
    iget-boolean v3, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mMoningAlert:Z

    if-eqz v3, :cond_4

    .line 304
    const/4 v2, 0x1

    .line 318
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    .line 327
    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    .line 332
    :goto_2
    return-void

    .line 306
    :cond_4
    :try_start_1
    iget-wide v3, v1, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->UpdateTime:J

    iget-wide v5, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mAirplaneTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    iget-wide v3, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mAirplaneTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 307
    const-string v3, "WeatherCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWeather airplane cityChanged:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    if-eqz v0, :cond_2

    .line 309
    const/4 v2, 0x1

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 323
    :cond_5
    const-string v3, "WeatherCtrl"

    const-string v4, "updateWeather not ready"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 330
    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    goto :goto_2
.end method


# virtual methods
.method public dismissWeather()V
    .locals 2

    .prologue
    .line 207
    monitor-enter p0

    .line 208
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mMoningAlert:Z

    .line 209
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mAirplaneTime:J

    .line 210
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->requestShowWeather()V

    .line 212
    return-void

    .line 210
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getData()Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    return-object v0
.end method

.method protected handleMessageBG(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x4e21

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 99
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 101
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->stopMonitor()V

    goto :goto_0

    .line 104
    :sswitch_1
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mLocCtrl:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-direct {p0, v2}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->updateWeather(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V

    .line 105
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mPreData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    if-eq v2, v3, :cond_0

    .line 106
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    iput-object v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mPreData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    .line 107
    invoke-virtual {p0, v4, v5}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->notifyLister(ILjava/lang/Object;)V

    goto :goto_0

    .line 111
    :sswitch_2
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mMoningAlert:Z

    .line 112
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mAirplaneTime:J

    .line 113
    iput-object v5, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mPreData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    .line 114
    iput-object v5, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    .line 115
    invoke-virtual {p0, v4, v5}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->notifyLister(ILjava/lang/Object;)V

    goto :goto_0

    .line 118
    :sswitch_3
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.htc.weather_alerts_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 120
    .local v1, setting:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 121
    .local v0, ret:Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 122
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 123
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 124
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v0}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x3ec -> :sswitch_1
        0x3ed -> :sswitch_2
        0x2713 -> :sswitch_0
        0x2716 -> :sswitch_3
    .end sparse-switch
.end method

.method public onAirplaneMode(Z)V
    .locals 4
    .parameter "airplane"

    .prologue
    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mAirPlaneMode:Z

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mAirplaneTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 196
    :cond_0
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mAirPlaneMode:Z

    .line 197
    const-string v0, "WeatherCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAirplaneMode airplane:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mWeatherSetting:Z

    if-eqz v0, :cond_1

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mAirplaneTime:J

    .line 200
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->requestShowWeather()V

    .line 203
    :cond_1
    monitor-exit p0

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTimeChange()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "WeatherCtrl"

    const-string v1, "onTimeChange"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->scheduleShowTime()Z

    .line 190
    return-void
.end method

.method public scheduleShowTime()Z
    .locals 8

    .prologue
    .line 131
    iget-boolean v4, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mStopped:Z

    if-eqz v4, :cond_1

    .line 132
    const/4 v2, 0x0

    .line 154
    :cond_0
    :goto_0
    return v2

    .line 134
    :cond_1
    const/4 v2, 0x0

    .line 135
    .local v2, show:Z
    monitor-enter p0

    .line 136
    :try_start_0
    const-string v4, "WeatherCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleShowTime mNextShowTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mNextShowTime:J

    invoke-direct {p0, v6, v7}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->dumpTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 138
    .local v0, current:J
    const-string v4, "WeatherCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleShowTime current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0, v1}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->dumpTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-wide v4, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mNextShowTime:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    iget-wide v4, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mNextShowTime:J

    sub-long/2addr v4, v0

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 141
    :cond_2
    iget-wide v4, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mNextShowTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mNextShowTime:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_3

    .line 143
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mMoningAlert:Z

    .line 144
    const/4 v2, 0x1

    .line 146
    :cond_3
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->getShowTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mNextShowTime:J

    .line 147
    const-string v4, "WeatherCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleShowTime after mNextShowTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mNextShowTime:J

    invoke-direct {p0, v6, v7}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->dumpTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mLocCtrl:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-virtual {v4}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->updateDataByForeCast()Z

    move-result v3

    .line 151
    .local v3, update:Z
    if-nez v2, :cond_5

    if-eqz v3, :cond_0

    .line 152
    :cond_5
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->requestShowWeather()V

    goto/16 :goto_0

    .line 149
    .end local v0           #current:J
    .end local v3           #update:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setAlarm(J)V
    .locals 4
    .parameter "showTime"

    .prologue
    .line 260
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 261
    .local v0, am:Landroid/app/AlarmManager;
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 262
    .local v1, pendint:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 263
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 264
    return-void
.end method

.method public setWeatherSetting(Z)V
    .locals 3
    .parameter "setting"

    .prologue
    .line 406
    const-string v0, "WeatherCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWeatherSetting setting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mWeatherSetting:Z

    .line 408
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mWeatherSetting:Z

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->scheduleShowTime()Z

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->dismissWeather()V

    goto :goto_0
.end method

.method protected startCtrl()V
    .locals 5

    .prologue
    const/16 v4, 0x2716

    .line 69
    const-string v2, "WeatherCtrl"

    const-string v3, "startCtrl"

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mStopped:Z

    .line 71
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, defaultCurName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationUtil;->setDefaultLocName(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 75
    new-instance v2, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyReceiver;-><init>(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$1;)V

    iput-object v2, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.weather_alerts_enabled"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 81
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 82
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->startMonitor()V

    .line 83
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->scheduleShowTime()Z

    .line 84
    return-void
.end method

.method protected stopCtrl()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "WeatherCtrl"

    const-string v1, "stopCtrl"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    monitor-enter p0

    .line 91
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->mStopped:Z

    .line 92
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->stopMonitor()V

    .line 93
    monitor-exit p0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
