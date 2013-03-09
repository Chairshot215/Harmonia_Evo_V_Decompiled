.class public Lcom/htc/Weather/data/CityInfo;
.super Ljava/lang/Object;
.source "CityInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "cityInfo"

.field private static final localLOGV:Z = true


# instance fields
.field agentCode:Ljava/lang/String;

.field bundle:Landroid/os/Bundle;

.field public cityName:Ljava/lang/String;

.field public city_:Lcom/htc/Weather/data/City;

.field public displayName:Ljava/lang/String;

.field private formatUpdateTime:Ljava/lang/String;

.field geoCodeName:Ljava/lang/String;

.field public hasWeatherData:Z

.field public index:I

.field private locationInfo:Lcom/htc/util/weather/WeatherLocation;

.field private mContext:Landroid/content/Context;

.field needUpdate:Z

.field public type_:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

.field private updateTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->cityName:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->displayName:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->geoCodeName:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->agentCode:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/data/CityInfo;->needUpdate:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    .line 41
    iput-object p1, p0, Lcom/htc/Weather/data/CityInfo;->mContext:Landroid/content/Context;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/Weather/data/CityInfo;->index:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    .line 44
    sget-object v0, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->type_:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    .line 45
    new-instance v0, Lcom/htc/Weather/data/City;

    invoke-direct {v0}, Lcom/htc/Weather/data/City;-><init>()V

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->city_:Lcom/htc/Weather/data/City;

    .line 46
    return-void
.end method

.method private resetCityName()V
    .locals 2

    .prologue
    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->cityName:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->cityName:Ljava/lang/String;

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/Weather/data/CityInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->cityName:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/Weather/data/CityInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->cityName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private resetDisplayName()V
    .locals 2

    .prologue
    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->displayName:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->displayName:Ljava/lang/String;

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/Weather/data/CityInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method private resetGeoCodeName()V
    .locals 2

    .prologue
    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->geoCodeName:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->geoCodeName:Ljava/lang/String;

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/Weather/data/CityInfo;->geoCodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->geoCodeName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public changeOffsetOfToday(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/htc/Weather/data/CityInfo;->city_:Lcom/htc/Weather/data/City;

    if-nez v1, :cond_0

    .line 164
    const/4 v1, 0x0

    .line 167
    :goto_0
    return v1

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    if-nez v1, :cond_1

    const-string v0, ""

    .line 167
    .local v0, timezoneId:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/htc/Weather/data/CityInfo;->city_:Lcom/htc/Weather/data/City;

    invoke-virtual {v1, p1, v0}, Lcom/htc/Weather/data/City;->changeTodayIndex(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 166
    .end local v0           #timezoneId:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getAgentCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->agentCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCity()Lcom/htc/Weather/data/City;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->city_:Lcom/htc/Weather/data/City;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatUpdateTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/Weather/data/CityInfo;->updateTime:J

    invoke-static {v0, v1, v2}, Lcom/htc/Weather/util/RefreshUtil;->getUpdateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->formatUpdateTime:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->formatUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoCodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->geoCodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationInfo()Lcom/htc/util/weather/WeatherLocation;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    return-object v0
.end method

.method public removeCity()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/htc/Weather/data/City;

    invoke-direct {v0}, Lcom/htc/Weather/data/City;-><init>()V

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->city_:Lcom/htc/Weather/data/City;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->bundle:Landroid/os/Bundle;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/data/CityInfo;->needUpdate:Z

    .line 108
    return-void
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/data/CityInfo;->needUpdate:Z

    .line 172
    return-void
.end method

.method public setAgentCode(Ljava/lang/String;)V
    .locals 0
    .parameter "_code"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/htc/Weather/data/CityInfo;->agentCode:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->bundle:Landroid/os/Bundle;

    .line 97
    return-void
.end method

.method public setCity(Lcom/htc/Weather/data/City;)V
    .locals 3
    .parameter "city"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    iput-object p1, p0, Lcom/htc/Weather/data/CityInfo;->city_:Lcom/htc/Weather/data/City;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/data/CityInfo;->bundle:Landroid/os/Bundle;

    .line 51
    iget-object v0, p0, Lcom/htc/Weather/data/CityInfo;->city_:Lcom/htc/Weather/data/City;

    iget-object v0, v0, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v0}, Lcom/htc/Weather/data/City$Condition;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    iput-boolean v2, p0, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    .line 53
    iput-boolean v1, p0, Lcom/htc/Weather/data/CityInfo;->needUpdate:Z

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-boolean v1, p0, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    .line 56
    iput-boolean v2, p0, Lcom/htc/Weather/data/CityInfo;->needUpdate:Z

    goto :goto_0
.end method

.method public setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V
    .locals 3
    .parameter "locationInfo"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/Weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    .line 78
    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, code:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/Weather/data/CityInfo;->agentCode:Ljava/lang/String;

    .line 84
    :goto_0
    invoke-direct {p0}, Lcom/htc/Weather/data/CityInfo;->resetCityName()V

    .line 85
    invoke-direct {p0}, Lcom/htc/Weather/data/CityInfo;->resetDisplayName()V

    .line 86
    invoke-direct {p0}, Lcom/htc/Weather/data/CityInfo;->resetGeoCodeName()V

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/Weather/data/CityInfo;->needUpdate:Z

    .line 89
    return-void

    .line 82
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/Weather/data/CityInfo;->agentCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUpdateTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/htc/Weather/data/CityInfo;->updateTime:J

    .line 67
    return-void
.end method
