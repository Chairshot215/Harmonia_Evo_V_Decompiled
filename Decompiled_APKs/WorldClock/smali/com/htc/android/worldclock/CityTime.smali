.class public Lcom/htc/android/worldclock/CityTime;
.super Ljava/lang/Object;
.source "CityTime.java"


# instance fields
.field private mCityId:Ljava/lang/String;

.field private mCityName:Ljava/lang/String;

.field private mLoc:Lcom/htc/util/weather/WeatherLocation;

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 58
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 59
    if-ne p0, p1, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 66
    .end local p1
    :goto_0
    return v0

    .line 62
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_2
    check-cast p1, Lcom/htc/android/worldclock/CityTime;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/android/worldclock/CityTime;->getCityName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/CityTime;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 23
    iget-object v0, p0, Lcom/htc/android/worldclock/CityTime;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 33
    iget-object v0, p0, Lcom/htc/android/worldclock/CityTime;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 43
    iget-object v0, p0, Lcom/htc/android/worldclock/CityTime;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getWeatherLocation()Lcom/htc/util/weather/WeatherLocation;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 53
    iget-object v0, p0, Lcom/htc/android/worldclock/CityTime;->mLoc:Lcom/htc/util/weather/WeatherLocation;

    return-object v0
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 17
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 18
    iput-object p1, p0, Lcom/htc/android/worldclock/CityTime;->mCityId:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 27
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 28
    iput-object p1, p0, Lcom/htc/android/worldclock/CityTime;->mCityName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .parameter "tz"

    .prologue
    .line 37
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 38
    iput-object p1, p0, Lcom/htc/android/worldclock/CityTime;->mTimeZone:Ljava/util/TimeZone;

    .line 39
    return-void
.end method

.method public setWeatherLocation(Lcom/htc/util/weather/WeatherLocation;)V
    .locals 0
    .parameter "loc"

    .prologue
    .line 47
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 48
    iput-object p1, p0, Lcom/htc/android/worldclock/CityTime;->mLoc:Lcom/htc/util/weather/WeatherLocation;

    .line 49
    return-void
.end method
