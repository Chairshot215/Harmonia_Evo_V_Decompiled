.class public Lcom/htc/clock/util/location/LocationData;
.super Ljava/lang/Object;
.source "LocationData.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFSTDateNow:Ljava/lang/String;

.field private mFSTNow:Lcom/htc/clock/util/location/WeatherForecast;

.field private mForecastList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/clock/util/location/WeatherForecast;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCurLocation:Z

.field private mLastUpdateTime:J

.field public mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

.field private mWSPData:Lcom/htc/util/weather/WSPData;

.field private mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mForecastList:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/clock/util/location/LocationData;->mIsCurLocation:Z

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/clock/util/location/LocationData;->mLastUpdateTime:J

    .line 34
    iput-object p1, p0, Lcom/htc/clock/util/location/LocationData;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/util/weather/WeatherLocation;)V
    .locals 2
    .parameter "context"
    .parameter "weatherLocation"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mForecastList:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/clock/util/location/LocationData;->mIsCurLocation:Z

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/clock/util/location/LocationData;->mLastUpdateTime:J

    .line 48
    iput-object p1, p0, Lcom/htc/clock/util/location/LocationData;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    .line 50
    sget-object v0, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->ONLY_LOC:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/util/weather/WeatherLocation;Lcom/htc/clock/util/location/LocationCtrl$LocationState;)V
    .locals 2
    .parameter "context"
    .parameter "weatherLocation"
    .parameter "locState"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mForecastList:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/clock/util/location/LocationData;->mIsCurLocation:Z

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/clock/util/location/LocationData;->mLastUpdateTime:J

    .line 55
    iput-object p1, p0, Lcom/htc/clock/util/location/LocationData;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    .line 57
    iput-object p3, p0, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "locCode"
    .parameter "locName"
    .parameter "locTimeZoneId"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mForecastList:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/clock/util/location/LocationData;->mIsCurLocation:Z

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/clock/util/location/LocationData;->mLastUpdateTime:J

    .line 39
    iput-object p1, p0, Lcom/htc/clock/util/location/LocationData;->mContext:Landroid/content/Context;

    .line 40
    sget-object v0, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->ONLY_LOC:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 41
    new-instance v0, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v0}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    .line 42
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0, p2}, Lcom/htc/util/weather/WeatherLocation;->setCode(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0, p3}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0, p4}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private setWeatherLoc(Lcom/htc/util/weather/WSPData;)Z
    .locals 4
    .parameter "wspData"

    .prologue
    .line 217
    sget-object v2, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->ONLY_LOC:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    iput-object v2, p0, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 218
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-static {v2}, Lcom/htc/clock/util/location/LocationCtrl;->getWeatheApCityName(Lcom/htc/util/weather/WeatherLocation;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, oldFullName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getCurLocState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getCurLocName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getCurLocLat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getCurLocLng()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getCurLocTimezoneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-static {v2}, Lcom/htc/clock/util/location/LocationCtrl;->getWeatheApCityName(Lcom/htc/util/weather/WeatherLocation;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, updatedFullName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    const/4 v2, 0x1

    .line 230
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addForecast(Lcom/htc/clock/util/location/WeatherForecast;)V
    .locals 1
    .parameter "forecast"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mForecastList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public getForecast()Lcom/htc/clock/util/location/WeatherForecast;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mFSTNow:Lcom/htc/clock/util/location/WeatherForecast;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lcom/htc/clock/util/location/LocationData;->mLastUpdateTime:J

    return-wide v0
.end method

.method public getLocCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, locName:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/htc/clock/util/location/LocationData;->mIsCurLocation:Z

    if-eqz v1, :cond_1

    .line 236
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 237
    :cond_0
    sget-object v0, Lcom/htc/clock/util/location/LocationUtil;->sDefaultLocName:Ljava/lang/String;

    .line 240
    :cond_1
    return-object v0
.end method

.method public getLocTimeZoneId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, timezoneId:Ljava/lang/String;
    return-object v0
.end method

.method public getWeatherLocation()Lcom/htc/util/weather/WeatherLocation;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    return-object v0
.end method

.method public isOverdue()Z
    .locals 7

    .prologue
    .line 195
    const-wide/32 v3, 0xa4cb80

    .line 196
    .local v3, interval:J
    iget-object v5, p0, Lcom/htc/clock/util/location/LocationData;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v0

    .line 198
    .local v0, bAutoSync:Z
    if-eqz v0, :cond_0

    .line 199
    iget-object v5, p0, Lcom/htc/clock/util/location/LocationData;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/clock/util/MyUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v3, v5

    .line 204
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 205
    .local v1, current_time:J
    iget-wide v5, p0, Lcom/htc/clock/util/location/LocationData;->mLastUpdateTime:J

    cmp-long v5, v1, v5

    if-ltz v5, :cond_1

    iget-wide v5, p0, Lcom/htc/clock/util/location/LocationData;->mLastUpdateTime:J

    sub-long v5, v1, v5

    cmp-long v5, v5, v3

    if-gez v5, :cond_1

    .line 207
    const/4 v5, 0x0

    .line 209
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mFSTDateNow:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mFSTNow:Lcom/htc/clock/util/location/WeatherForecast;

    .line 63
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mForecastList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    sget-object v1, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->OK:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    if-ne v0, v1, :cond_0

    .line 65
    sget-object v0, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->ONLY_LOC:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 66
    :cond_0
    return-void
.end method

.method public setUpLocInfo(Lcom/htc/util/weather/WSPData;)V
    .locals 0
    .parameter "wspData"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/clock/util/location/LocationData;->setWeatherLoc(Lcom/htc/util/weather/WSPData;)Z

    .line 70
    return-void
.end method

.method public setupByWSPData(Lcom/htc/util/weather/WSPData;Z)Z
    .locals 21
    .parameter "wspData"
    .parameter "bClearCache"

    .prologue
    .line 73
    const/4 v3, 0x0

    .line 74
    .local v3, bCityChanged:Z
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/htc/clock/util/location/LocationData;->reset()V

    .line 76
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/clock/util/location/LocationData;->mIsCurLocation:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 77
    sget-object v19, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Lcom/htc/util/weather/WeatherLocation;->setCode(Ljava/lang/String;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 86
    const/4 v3, 0x1

    .line 91
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    move v4, v3

    .line 142
    .end local v3           #bCityChanged:Z
    .local v4, bCityChanged:Z
    :goto_1
    return v4

    .line 88
    .end local v4           #bCityChanged:Z
    .restart local v3       #bCityChanged:Z
    :cond_1
    sget-object v19, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->ONLY_LOC:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    goto :goto_0

    .line 94
    :cond_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setupByWSPData~ wspData:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPData;->toDebugInfo()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/htc/clock/util/location/LocationData;->reset()V

    .line 96
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/clock/util/location/LocationData;->mWSPData:Lcom/htc/util/weather/WSPData;

    .line 97
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/clock/util/location/LocationData;->mIsCurLocation:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 98
    invoke-direct/range {p0 .. p1}, Lcom/htc/clock/util/location/LocationData;->setWeatherLoc(Lcom/htc/util/weather/WSPData;)Z

    move-result v3

    .line 100
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPData;->getLastUpdate()J

    move-result-wide v17

    .line 101
    .local v17, updateTime:J
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/clock/util/location/LocationData;->mLastUpdateTime:J

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPData;->hasWeatherData()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 103
    sget-object v19, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->OK:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v7

    .line 105
    .local v7, dateString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v5

    .line 106
    .local v5, conditionString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPData;->getFstHighTempC()Ljava/util/ArrayList;

    move-result-object v13

    .line 107
    .local v13, tempHCString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPData;->getFstHighTempF()Ljava/util/ArrayList;

    move-result-object v14

    .line 108
    .local v14, tempHFString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPData;->getFstLowTempC()Ljava/util/ArrayList;

    move-result-object v15

    .line 109
    .local v15, tempLCString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPData;->getFstLowTempF()Ljava/util/ArrayList;

    move-result-object v16

    .line 110
    .local v16, tempLFString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 111
    .local v12, tempF:Ljava/lang/String;
    const/4 v11, 0x0

    .line 112
    .local v11, tempC:Ljava/lang/String;
    const/4 v9, 0x0

    .line 113
    .local v9, i:I
    const/4 v8, 0x0

    .line 114
    .local v8, forecast:Lcom/htc/clock/util/location/WeatherForecast;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 115
    .local v6, date:Ljava/lang/String;
    new-instance v8, Lcom/htc/clock/util/location/WeatherForecast;

    .end local v8           #forecast:Lcom/htc/clock/util/location/WeatherForecast;
    invoke-direct {v8}, Lcom/htc/clock/util/location/WeatherForecast;-><init>()V

    .line 116
    .restart local v8       #forecast:Lcom/htc/clock/util/location/WeatherForecast;
    invoke-virtual {v8, v6}, Lcom/htc/clock/util/location/WeatherForecast;->setDate(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #tempF:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 118
    .restart local v12       #tempF:Ljava/lang/String;
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #tempC:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 119
    .restart local v11       #tempC:Ljava/lang/String;
    invoke-virtual {v8, v12, v11}, Lcom/htc/clock/util/location/WeatherForecast;->setHigh(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #tempF:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 121
    .restart local v12       #tempF:Ljava/lang/String;
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #tempC:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 122
    .restart local v11       #tempC:Ljava/lang/String;
    invoke-virtual {v8, v12, v11}, Lcom/htc/clock/util/location/WeatherForecast;->setLow(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-nez v9, :cond_4

    .line 125
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/clock/util/location/LocationData;->mFSTDateNow:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/htc/clock/util/location/LocationData;->mFSTNow:Lcom/htc/clock/util/location/WeatherForecast;

    .line 127
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setupByWSPData~ mFSTDateNow:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/clock/util/location/LocationData;->mFSTDateNow:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/htc/clock/util/location/WeatherForecast;->setCondition(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPData;->getCurTempF()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPData;->getCurTempC()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/htc/clock/util/location/WeatherForecast;->setCur(II)V

    .line 135
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/clock/util/location/LocationData;->addForecast(Lcom/htc/clock/util/location/WeatherForecast;)V

    .line 136
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 132
    :cond_4
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/htc/clock/util/location/WeatherForecast;->setCondition(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v8}, Lcom/htc/clock/util/location/WeatherForecast;->setCurByForecast()V

    goto :goto_3

    .line 138
    .end local v6           #date:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/clock/util/location/LocationData;->updateForecastDateNow()Z

    .end local v5           #conditionString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #dateString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #forecast:Lcom/htc/clock/util/location/WeatherForecast;
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #tempC:Ljava/lang/String;
    .end local v12           #tempF:Ljava/lang/String;
    .end local v13           #tempHCString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #tempHFString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #tempLCString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #tempLFString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    move v4, v3

    .line 142
    .end local v3           #bCityChanged:Z
    .restart local v4       #bCityChanged:Z
    goto/16 :goto_1

    .line 140
    .end local v4           #bCityChanged:Z
    .restart local v3       #bCityChanged:Z
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/clock/util/location/LocationData;->reset()V

    goto :goto_4
.end method

.method public updateForecastDateNow()Z
    .locals 15

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, bUpdate:Z
    const/4 v6, 0x0

    .line 152
    .local v6, forecastDay:Ljava/lang/String;
    const/4 v7, 0x0

    .line 153
    .local v7, forecastNow:Lcom/htc/clock/util/location/WeatherForecast;
    iget-object v13, p0, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    sget-object v14, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->OK:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    if-ne v13, v14, :cond_4

    iget-object v13, p0, Lcom/htc/clock/util/location/LocationData;->mForecastList:Ljava/util/ArrayList;

    if-eqz v13, :cond_4

    iget-object v13, p0, Lcom/htc/clock/util/location/LocationData;->mForecastList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationData;->isOverdue()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 156
    iget-object v13, p0, Lcom/htc/clock/util/location/LocationData;->mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v13}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, timezoneId:Ljava/lang/String;
    invoke-static {v12}, Lcom/htc/clock/util/MyTimeUtil;->getToday(Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v11

    .line 158
    .local v11, now:Landroid/text/format/Time;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 159
    .local v5, forecastDate:Landroid/text/format/Time;
    const-wide/high16 v9, -0x4010

    .line 160
    .local v9, min:D
    const-wide/16 v2, 0x0

    .line 161
    .local v2, difDay:D
    const/4 v1, 0x0

    .line 164
    .local v1, date:Ljava/lang/String;
    iget-object v13, p0, Lcom/htc/clock/util/location/LocationData;->mForecastList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/clock/util/location/WeatherForecast;

    .line 165
    .local v4, forecast:Lcom/htc/clock/util/location/WeatherForecast;
    invoke-virtual {v4}, Lcom/htc/clock/util/location/WeatherForecast;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v5, v1, v12}, Lcom/htc/clock/util/MyTimeUtil;->setTimeObject(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v5

    .line 169
    invoke-static {v11, v5}, Lcom/htc/clock/util/MyTimeUtil;->dayDiff(Landroid/text/format/Time;Landroid/text/format/Time;)D

    move-result-wide v2

    .line 170
    cmpg-double v13, v2, v9

    if-ltz v13, :cond_1

    const-wide/high16 v13, -0x4010

    cmpl-double v13, v9, v13

    if-nez v13, :cond_0

    .line 171
    :cond_1
    move-wide v9, v2

    .line 172
    move-object v6, v1

    .line 173
    move-object v7, v4

    goto :goto_0

    .line 177
    .end local v1           #date:Ljava/lang/String;
    .end local v2           #difDay:D
    .end local v4           #forecast:Lcom/htc/clock/util/location/WeatherForecast;
    .end local v5           #forecastDate:Landroid/text/format/Time;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #min:D
    .end local v11           #now:Landroid/text/format/Time;
    .end local v12           #timezoneId:Ljava/lang/String;
    :cond_2
    iget-object v13, p0, Lcom/htc/clock/util/location/LocationData;->mForecastList:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #forecastNow:Lcom/htc/clock/util/location/WeatherForecast;
    check-cast v7, Lcom/htc/clock/util/location/WeatherForecast;

    .line 178
    .restart local v7       #forecastNow:Lcom/htc/clock/util/location/WeatherForecast;
    invoke-virtual {v7}, Lcom/htc/clock/util/location/WeatherForecast;->getDate()Ljava/lang/String;

    move-result-object v6

    .line 180
    :cond_3
    if-eqz v6, :cond_5

    .line 181
    iget-object v13, p0, Lcom/htc/clock/util/location/LocationData;->mFSTDateNow:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 182
    iput-object v6, p0, Lcom/htc/clock/util/location/LocationData;->mFSTDateNow:Ljava/lang/String;

    .line 183
    iput-object v7, p0, Lcom/htc/clock/util/location/LocationData;->mFSTNow:Lcom/htc/clock/util/location/WeatherForecast;

    .line 184
    const/4 v0, 0x1

    .line 190
    :cond_4
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateForecastDateNow~ mFSTDateNow:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/clock/util/location/LocationData;->mFSTDateNow:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 191
    return v0

    .line 187
    :cond_5
    const-string v13, "updateForecastDateNow~ forecastDay is null"

    invoke-static {v13}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
