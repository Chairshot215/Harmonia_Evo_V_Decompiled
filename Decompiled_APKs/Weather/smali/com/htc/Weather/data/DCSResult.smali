.class public Lcom/htc/Weather/data/DCSResult;
.super Ljava/lang/Object;
.source "DCSResult.java"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private checkCode:Ljava/lang/String;

.field private cityCode:Ljava/lang/String;

.field private cityLocalTime:Ljava/lang/String;

.field private cityWebURL:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private currentCondition:Ljava/lang/String;

.field private currentHumi:Ljava/lang/String;

.field private currentIcon:Ljava/lang/String;

.field private currentRealFeelC:I

.field private currentRealFeelF:I

.field private currentTempCValue:I

.field private currentTempFValue:I

.field private currentTime:Ljava/lang/String;

.field private currentUvi:Ljava/lang/String;

.field private currentVisibilityKM:Ljava/lang/String;

.field private currentVisibilityMI:Ljava/lang/String;

.field private currentWindSpeedKM:Ljava/lang/String;

.field private currentWindSpeedMI:Ljava/lang/String;

.field private dayLightFlag:Ljava/lang/String;

.field private forecastCondition:[Ljava/lang/String;

.field private forecastDate:[Ljava/lang/String;

.field private forecastHighTempC:[Ljava/lang/String;

.field private forecastHighTempF:[Ljava/lang/String;

.field private forecastIcon:[Ljava/lang/String;

.field private forecastLowTempC:[Ljava/lang/String;

.field private forecastLowTempF:[Ljava/lang/String;

.field private forecastName:[Ljava/lang/String;

.field private forecastUvi:[Ljava/lang/String;

.field private forecastWindDir:[Ljava/lang/String;

.field private forecastWindSpeedkph:[Ljava/lang/String;

.field private forecastWindSpeedmph:[Ljava/lang/String;

.field private fstDayRealFeelHighC:[Ljava/lang/String;

.field private fstDayRealFeelHighF:[Ljava/lang/String;

.field private fstDayRealFeelLowC:[Ljava/lang/String;

.field private fstDayRealFeelLowF:[Ljava/lang/String;

.field private fstNightCondition:[Ljava/lang/String;

.field private fstNightDate:[Ljava/lang/String;

.field private fstNightHighTempC:[Ljava/lang/String;

.field private fstNightHighTempF:[Ljava/lang/String;

.field private fstNightIcon:[Ljava/lang/String;

.field private fstNightLowTempC:[Ljava/lang/String;

.field private fstNightLowTempF:[Ljava/lang/String;

.field private fstNightName:[Ljava/lang/String;

.field private fstNightPrecip:[Ljava/lang/String;

.field private fstNightRealFeelHighC:[Ljava/lang/String;

.field private fstNightRealFeelHighF:[Ljava/lang/String;

.field private fstNightRealFeelLowC:[Ljava/lang/String;

.field private fstNightRealFeelLowF:[Ljava/lang/String;

.field private fstNightWindDir:[Ljava/lang/String;

.field private fstNightWindSpeedkph:[Ljava/lang/String;

.field private fstNightWindSpeedmph:[Ljava/lang/String;

.field private fstPrecip:[Ljava/lang/String;

.field private fstSunrise:[Ljava/lang/String;

.field private fstSunset:[Ljava/lang/String;

.field private hourlyIcon:[Ljava/lang/String;

.field private hourlyPrecip:[Ljava/lang/String;

.field private hourlyTempC:[I

.field private hourlyTempF:[I

.field private hourlyTime:[Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private status:I

.field private totalForecast:I

.field private updateTime:J


# direct methods
.method public constructor <init>(Lcom/htc/util/weather/WSPPData;)V
    .locals 5
    .parameter "wsp"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object v3, p0, Lcom/htc/Weather/data/DCSResult;->bundle:Landroid/os/Bundle;

    .line 94
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/Weather/data/DCSResult;->status:I

    .line 97
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getLastUpdate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/Weather/data/DCSResult;->updateTime:J

    .line 98
    iput-object v3, p0, Lcom/htc/Weather/data/DCSResult;->checkCode:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getLocCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->cityCode:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getLatitude()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->latitude:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getLongitude()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->longitude:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->location:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->country:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurTempF()I

    move-result v0

    iput v0, p0, Lcom/htc/Weather/data/DCSResult;->currentTempFValue:I

    .line 105
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurTempC()I

    move-result v0

    iput v0, p0, Lcom/htc/Weather/data/DCSResult;->currentTempCValue:I

    .line 106
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentIcon:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentCondition:Ljava/lang/String;

    .line 108
    iput v4, p0, Lcom/htc/Weather/data/DCSResult;->totalForecast:I

    .line 110
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastDate:[Ljava/lang/String;

    .line 112
    const-string v0, "WeatherWidgetBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weather forecastDate length= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Weather/data/DCSResult;->forecastDate:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstName()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastName:[Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastIcon:[Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastCondition:[Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstHighTempF()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastHighTempF:[Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstLowTempF()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastLowTempF:[Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstHighTempC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastHighTempC:[Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstLowTempC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastLowTempC:[Ljava/lang/String;

    .line 122
    iput-object v3, p0, Lcom/htc/Weather/data/DCSResult;->forecastUvi:[Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getDayLightFlag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->dayLightFlag:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCityLocalTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->cityLocalTime:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCityWebURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->cityWebURL:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurFeelTempF()I

    move-result v0

    iput v0, p0, Lcom/htc/Weather/data/DCSResult;->currentRealFeelF:I

    .line 129
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurFeelTempC()I

    move-result v0

    iput v0, p0, Lcom/htc/Weather/data/DCSResult;->currentRealFeelC:I

    .line 130
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurHumidity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentHumi:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurWinddirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurWindspeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentWindSpeedMI:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurWinddirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurWindspeedKM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentWindSpeedKM:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurVisibility()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentVisibilityMI:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurVisibilityKM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentVisibilityKM:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstSunrise()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstSunrise:[Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstSunset()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstSunset:[Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getHourTempF()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getIntFromArrayList(Ljava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->hourlyTempF:[I

    .line 138
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getHourTempC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getIntFromArrayList(Ljava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->hourlyTempC:[I

    .line 139
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getHourConditionId()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->hourlyIcon:[Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getHourPrecip()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->hourlyPrecip:[Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getHourName()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->hourlyTime:[Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstFeelHighTempF()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstDayRealFeelHighF:[Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstFeelLowTempF()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstDayRealFeelLowF:[Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstFeelHighTempC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstDayRealFeelHighC:[Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstFeelLowTempC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstDayRealFeelLowC:[Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstNightConditionId()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightIcon:[Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstNightHighTempF()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightHighTempF:[Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstNightLowTempF()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightLowTempF:[Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstNightHighTempC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightHighTempC:[Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstNightLowTempC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightLowTempC:[Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelHighTempF()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightRealFeelHighF:[Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelLowTempF()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightRealFeelLowF:[Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelHighTempC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightRealFeelHighC:[Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelLowTempC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightRealFeelLowC:[Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstPrecip()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstPrecip:[Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstNightPrecip()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightPrecip:[Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastUvi:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastUvi:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_2

    .line 162
    :cond_1
    const-string v0, "1"

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentUvi:Ljava/lang/String;

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastDate:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/htc/Weather/data/DCSResult;->totalForecast:I

    goto/16 :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastUvi:[Ljava/lang/String;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentUvi:Ljava/lang/String;

    goto :goto_1
.end method

.method private getIntFromArrayList(Ljava/util/ArrayList;)[I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, ary:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 183
    .local v2, num:I
    new-array v1, v2, [I

    .line 184
    .local v1, i_ary:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 185
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0           #i:I
    .end local v1           #i_ary:[I
    .end local v2           #num:I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, ary:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 173
    .local v0, num:I
    new-array v1, v0, [Ljava/lang/String;

    .line 174
    .local v1, s_ary:[Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 176
    .end local v0           #num:I
    .end local v1           #s_ary:[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCheckCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->checkCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityLocalTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->cityLocalTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCityWebURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->cityWebURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentHumi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentHumi:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentRealFeelC()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/htc/Weather/data/DCSResult;->currentRealFeelC:I

    return v0
.end method

.method public getCurrentRealFeelF()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/htc/Weather/data/DCSResult;->currentRealFeelF:I

    return v0
.end method

.method public getCurrentTemp()I
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 239
    iget v0, p0, Lcom/htc/Weather/data/DCSResult;->currentTempCValue:I

    .line 241
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/Weather/data/DCSResult;->currentTempFValue:I

    goto :goto_0
.end method

.method public getCurrentTempC()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/htc/Weather/data/DCSResult;->currentTempCValue:I

    return v0
.end method

.method public getCurrentTempF()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/htc/Weather/data/DCSResult;->currentTempFValue:I

    return v0
.end method

.method public getCurrentTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUvi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentUvi:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVisibility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentVisibilityMI:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVisibilityKM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentVisibilityKM:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWindSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentWindSpeedMI:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWindSpeedKM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->currentWindSpeedKM:Ljava/lang/String;

    return-object v0
.end method

.method public getDayLightFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->dayLightFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastCondition(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/htc/Weather/data/DCSResult;->getForecastCondition()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastCondition()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastCondition:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastDate(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/htc/Weather/data/DCSResult;->getForecastDate()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastDate()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastDate:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastHighTemp(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/htc/Weather/data/DCSResult;->getForecastHighTemp()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastHighTemp()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastHighTempC:[Ljava/lang/String;

    .line 292
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastHighTempF:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getForecastHighTempC(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/htc/Weather/data/DCSResult;->getForecastHighTempC()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastHighTempC()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastHighTempC:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastHighTempF()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastHighTempF:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastIcon(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/htc/Weather/data/DCSResult;->getForecastIcon()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastIcon()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastIcon:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastLowTemp(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/htc/Weather/data/DCSResult;->getForecastLowTemp()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastLowTemp()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastLowTempC:[Ljava/lang/String;

    .line 307
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastLowTempF:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getForecastLowTempC(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/htc/Weather/data/DCSResult;->getForecastLowTempC()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastLowTempC()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastLowTempC:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastLowTempF()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastLowTempF:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastName(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/htc/Weather/data/DCSResult;->getForecastName()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastName:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastUvi(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/htc/Weather/data/DCSResult;->getForecastUvi()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastUvi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->forecastUvi:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstDayRealFeelHighC()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstDayRealFeelHighC:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstDayRealFeelHighF()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstDayRealFeelHighF:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstDayRealFeelLowC()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstDayRealFeelLowC:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstDayRealFeelLowF()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstDayRealFeelLowF:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstNightHighTempC()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightHighTempC:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstNightHighTempF()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightHighTempF:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstNightIcon()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightIcon:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstNightLowTempC()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightLowTempC:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstNightLowTempF()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightLowTempF:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstNightPrecip()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightPrecip:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstNightRealFeelHighC()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightRealFeelHighC:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstNightRealFeelHighF()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightRealFeelHighF:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstNightRealFeelLowC()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightRealFeelLowC:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstNightRealFeelLowF()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstNightRealFeelLowF:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstPrecip()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstPrecip:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstSunrise()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstSunrise:[Ljava/lang/String;

    return-object v0
.end method

.method public getFstSunset()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->fstSunset:[Ljava/lang/String;

    return-object v0
.end method

.method public getHourlyIcon()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->hourlyIcon:[Ljava/lang/String;

    return-object v0
.end method

.method public getHourlyPrecip()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->hourlyPrecip:[Ljava/lang/String;

    return-object v0
.end method

.method public getHourlyTempC()[I
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->hourlyTempC:[I

    return-object v0
.end method

.method public getHourlyTempF()[I
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->hourlyTempF:[I

    return-object v0
.end method

.method public getHourlyTime()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->hourlyTime:[Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/Weather/data/DCSResult;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/data/DCSResult;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/Weather/data/DCSResult;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/htc/Weather/data/DCSResult;->status:I

    return v0
.end method

.method public getTotalForecast()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/htc/Weather/data/DCSResult;->totalForecast:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/htc/Weather/data/DCSResult;->updateTime:J

    return-wide v0
.end method

.method public getUpdateTimeInDate()Ljava/util/Date;
    .locals 3

    .prologue
    .line 222
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/htc/Weather/data/DCSResult;->updateTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public setCityLocalTime(Ljava/lang/String;)V
    .locals 0
    .parameter "cityLocalTime"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->cityLocalTime:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setCityWebURL(Ljava/lang/String;)V
    .locals 0
    .parameter "cityWebURL"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->cityWebURL:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setDayLightFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "dayLightFlag"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->dayLightFlag:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public setFstDayRealFeelHighC([Ljava/lang/String;)V
    .locals 0
    .parameter "fstDayRealFeelHighC"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstDayRealFeelHighC:[Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setFstDayRealFeelHighF([Ljava/lang/String;)V
    .locals 0
    .parameter "fstDayRealFeelHighF"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstDayRealFeelHighF:[Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setFstDayRealFeelLowC([Ljava/lang/String;)V
    .locals 0
    .parameter "fstDayRealFeelLowC"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstDayRealFeelLowC:[Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setFstDayRealFeelLowF([Ljava/lang/String;)V
    .locals 0
    .parameter "fstDayRealFeelLowF"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstDayRealFeelLowF:[Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setFstNightHighTempC([Ljava/lang/String;)V
    .locals 0
    .parameter "fstNightHighTempC"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstNightHighTempC:[Ljava/lang/String;

    .line 521
    return-void
.end method

.method public setFstNightHighTempF([Ljava/lang/String;)V
    .locals 0
    .parameter "fstNightHighTempF"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstNightHighTempF:[Ljava/lang/String;

    .line 513
    return-void
.end method

.method public setFstNightIcon([Ljava/lang/String;)V
    .locals 0
    .parameter "fstNightIcon"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstNightIcon:[Ljava/lang/String;

    .line 509
    return-void
.end method

.method public setFstNightLowTempC([Ljava/lang/String;)V
    .locals 0
    .parameter "fstNightLowTempC"

    .prologue
    .line 524
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstNightLowTempC:[Ljava/lang/String;

    .line 525
    return-void
.end method

.method public setFstNightLowTempF([Ljava/lang/String;)V
    .locals 0
    .parameter "fstNightLowTempF"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstNightLowTempF:[Ljava/lang/String;

    .line 517
    return-void
.end method

.method public setFstNightPrecip([Ljava/lang/String;)V
    .locals 0
    .parameter "fstNightPrecip"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstNightPrecip:[Ljava/lang/String;

    .line 485
    return-void
.end method

.method public setFstNightRealFeelHighC([Ljava/lang/String;)V
    .locals 0
    .parameter "fstNightRealFeelHighC"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstNightRealFeelHighC:[Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setFstNightRealFeelHighF([Ljava/lang/String;)V
    .locals 0
    .parameter "fstNightRealFeelHighF"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstNightRealFeelHighF:[Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setFstNightRealFeelLowC([Ljava/lang/String;)V
    .locals 0
    .parameter "fstNightRealFeelLowC"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstNightRealFeelLowC:[Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setFstNightRealFeelLowF([Ljava/lang/String;)V
    .locals 0
    .parameter "fstNightRealFeelLowF"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstNightRealFeelLowF:[Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setFstPrecip([Ljava/lang/String;)V
    .locals 0
    .parameter "fstPrecip"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->fstPrecip:[Ljava/lang/String;

    .line 481
    return-void
.end method

.method public setHourlyIcon([Ljava/lang/String;)V
    .locals 0
    .parameter "hourlyIcon"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->hourlyIcon:[Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setHourlyPrecip([Ljava/lang/String;)V
    .locals 0
    .parameter "hourlyPrecip"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->hourlyPrecip:[Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setHourlyTime([Ljava/lang/String;)V
    .locals 0
    .parameter "hourlyTime"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/htc/Weather/data/DCSResult;->hourlyTime:[Ljava/lang/String;

    .line 461
    return-void
.end method
