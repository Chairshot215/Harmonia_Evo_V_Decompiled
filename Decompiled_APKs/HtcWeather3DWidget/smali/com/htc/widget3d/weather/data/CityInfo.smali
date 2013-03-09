.class public Lcom/htc/widget3d/weather/data/CityInfo;
.super Ljava/lang/Object;
.source "CityInfo.java"


# static fields
.field public static final CITYINFO_STATE_NOT_UPDATE:I = 0x0

.field public static final CITYINFO_STATE_NO_DATA:I = -0x1

.field public static final CITYINFO_STATE_UPDATE_BY_BUNDLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "cityInfo"

.field private static final localLOGV:Z = true


# instance fields
.field private UpdateTime:J

.field agentCode:Ljava/lang/String;

.field bundle:Lcom/htc/util/weather/WSPPData;

.field public cityName:Ljava/lang/String;

.field public city_:Lcom/htc/widget3d/weather/data/City;

.field public displayName:Ljava/lang/String;

.field private formatUpdateTime:Ljava/lang/String;

.field geoCodeName:Ljava/lang/String;

.field public hasWeatherData:Z

.field public index:I

.field private locationInfo:Lcom/htc/util/weather/WeatherLocation;

.field public mState:I

.field needUpdate:Z

.field public type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->cityName:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->displayName:Ljava/lang/String;

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->UpdateTime:J

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->geoCodeName:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->agentCode:Ljava/lang/String;

    .line 40
    iput v2, p0, Lcom/htc/widget3d/weather/data/CityInfo;->mState:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->needUpdate:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->hasWeatherData:Z

    .line 46
    iput v2, p0, Lcom/htc/widget3d/weather/data/CityInfo;->index:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    .line 48
    sget-object v0, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    .line 49
    new-instance v0, Lcom/htc/widget3d/weather/data/City;

    invoke-direct {v0}, Lcom/htc/widget3d/weather/data/City;-><init>()V

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->city_:Lcom/htc/widget3d/weather/data/City;

    .line 50
    return-void
.end method

.method private resetCityName()V
    .locals 2

    .prologue
    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->cityName:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->cityName:Ljava/lang/String;

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->cityName:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->cityName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private resetDisplayName()V
    .locals 2

    .prologue
    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->displayName:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->displayName:Ljava/lang/String;

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method private resetGeoCodeName()V
    .locals 2

    .prologue
    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->geoCodeName:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->geoCodeName:Ljava/lang/String;

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->geoCodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->geoCodeName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public changeOffsetOfToday(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->city_:Lcom/htc/widget3d/weather/data/City;

    if-nez v1, :cond_0

    .line 197
    const/4 v1, 0x0

    .line 200
    :goto_0
    return v1

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    if-nez v1, :cond_1

    const-string v0, ""

    .line 200
    .local v0, timezoneId:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->city_:Lcom/htc/widget3d/weather/data/City;

    invoke-virtual {v1, p1, v0}, Lcom/htc/widget3d/weather/data/City;->changeTodayIndex(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 199
    .end local v0           #timezoneId:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public genCode()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    .line 209
    .local v0, loc:Lcom/htc/util/weather/WeatherLocation;
    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-object v1

    .line 211
    :cond_1
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.htclocationservice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 214
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/weather/WSPPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/util/weather/WSPPUtility;->generateWSPRequestForLatitude(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAgentCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->agentCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getBundle()Lcom/htc/util/weather/WSPPData;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->bundle:Lcom/htc/util/weather/WSPPData;

    return-object v0
.end method

.method public getCity()Lcom/htc/widget3d/weather/data/City;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->city_:Lcom/htc/widget3d/weather/data/City;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->formatUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoCodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->geoCodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationInfo()Lcom/htc/util/weather/WeatherLocation;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->mState:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->UpdateTime:J

    return-wide v0
.end method

.method public removeCity()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/htc/widget3d/weather/data/City;

    invoke-direct {v0}, Lcom/htc/widget3d/weather/data/City;-><init>()V

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->city_:Lcom/htc/widget3d/weather/data/City;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->bundle:Lcom/htc/util/weather/WSPPData;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->hasWeatherData:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->needUpdate:Z

    .line 141
    return-void
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->needUpdate:Z

    .line 205
    return-void
.end method

.method public setAgentCode(Ljava/lang/String;)V
    .locals 0
    .parameter "_code"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->agentCode:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setBundle(Lcom/htc/util/weather/WSPPData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 118
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->mState:I

    .line 119
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->bundle:Lcom/htc/util/weather/WSPPData;

    .line 120
    return-void
.end method

.method public setCity(Lcom/htc/widget3d/weather/data/City;)V
    .locals 3
    .parameter "city"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->city_:Lcom/htc/widget3d/weather/data/City;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->bundle:Lcom/htc/util/weather/WSPPData;

    .line 55
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/CityInfo;->city_:Lcom/htc/widget3d/weather/data/City;

    iget-object v0, v0, Lcom/htc/widget3d/weather/data/City;->current:Lcom/htc/widget3d/weather/data/City$Condition;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/City$Condition;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    iput-boolean v2, p0, Lcom/htc/widget3d/weather/data/CityInfo;->hasWeatherData:Z

    .line 57
    iput-boolean v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->needUpdate:Z

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-boolean v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->hasWeatherData:Z

    .line 60
    iput-boolean v2, p0, Lcom/htc/widget3d/weather/data/CityInfo;->needUpdate:Z

    goto :goto_0
.end method

.method public setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V
    .locals 3
    .parameter "locationInfo"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->locationInfo:Lcom/htc/util/weather/WeatherLocation;

    .line 96
    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, code:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
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

    iput-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->agentCode:Ljava/lang/String;

    .line 102
    :goto_0
    invoke-direct {p0}, Lcom/htc/widget3d/weather/data/CityInfo;->resetCityName()V

    .line 103
    invoke-direct {p0}, Lcom/htc/widget3d/weather/data/CityInfo;->resetDisplayName()V

    .line 104
    invoke-direct {p0}, Lcom/htc/widget3d/weather/data/CityInfo;->resetGeoCodeName()V

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->needUpdate:Z

    .line 107
    return-void

    .line 100
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

    iput-object v1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->agentCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 130
    iput p1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->mState:I

    .line 131
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 6
    .parameter "time"

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/htc/widget3d/weather/data/CityInfo;->UpdateTime:J

    .line 79
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 80
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 81
    .local v2, m:I
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, minute:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v4

    const/16 v5, 0xc

    if-lt v4, v5, :cond_1

    const-string v0, "PM"

    .line 83
    .local v0, ap:Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget3d/weather/data/CityInfo;->formatUpdateTime:Ljava/lang/String;

    .line 85
    return-void

    .line 81
    .end local v0           #ap:Ljava/lang/String;
    .end local v3           #minute:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 82
    .restart local v3       #minute:Ljava/lang/String;
    :cond_1
    const-string v0, "AM"

    goto :goto_1
.end method
