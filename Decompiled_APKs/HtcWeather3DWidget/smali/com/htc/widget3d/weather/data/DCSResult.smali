.class public Lcom/htc/widget3d/weather/data/DCSResult;
.super Ljava/lang/Object;
.source "DCSResult.java"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private checkCode:Ljava/lang/String;

.field private cityCode:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private currentCondition:Ljava/lang/String;

.field private currentIcon:Ljava/lang/String;

.field private currentTempCValue:I

.field private currentTempFValue:I

.field private currentTime:Ljava/lang/String;

.field private currentUvi:Ljava/lang/String;

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

.field private latitude:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private status:I

.field private totalForecast:I

.field private updateTime:J


# direct methods
.method public constructor <init>(Lcom/htc/util/weather/WSPPData;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v2, p0, Lcom/htc/widget3d/weather/data/DCSResult;->bundle:Landroid/os/Bundle;

    .line 83
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->status:I

    .line 86
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getLastUpdate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->updateTime:J

    .line 87
    iput-object v2, p0, Lcom/htc/widget3d/weather/data/DCSResult;->checkCode:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getLocCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->cityCode:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getLatitude()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->latitude:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getLongitude()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->longitude:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->location:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->country:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurTempF()I

    move-result v0

    iput v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentTempFValue:I

    .line 94
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurTempC()I

    move-result v0

    iput v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentTempCValue:I

    .line 95
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentIcon:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentCondition:Ljava/lang/String;

    .line 97
    iput v3, p0, Lcom/htc/widget3d/weather/data/DCSResult;->totalForecast:I

    .line 98
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget3d/weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastDate:[Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstName()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget3d/weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastName:[Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget3d/weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastIcon:[Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget3d/weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastCondition:[Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstHighTempF()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget3d/weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastHighTempF:[Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstLowTempF()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget3d/weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastLowTempF:[Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstHighTempC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget3d/weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastHighTempC:[Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstLowTempC()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget3d/weather/data/DCSResult;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastLowTempC:[Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastUvi:[Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastUvi:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastUvi:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_2

    .line 138
    :cond_1
    const-string v0, "1"

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentUvi:Ljava/lang/String;

    .line 141
    :goto_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastDate:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->totalForecast:I

    goto/16 :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastUvi:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentUvi:Ljava/lang/String;

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
    .line 156
    .local p1, ary:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 159
    .local v2, num:I
    new-array v1, v2, [I

    .line 160
    .local v1, i_ary:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 161
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
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
    .line 145
    .local p1, ary:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 149
    .local v0, num:I
    new-array v1, v0, [Ljava/lang/String;

    .line 150
    .local v1, s_ary:[Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 152
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
    .line 170
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCheckCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->checkCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTemp()I
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/htc/widget3d/weather/data/WeatherModel;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 215
    iget v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentTempCValue:I

    .line 217
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentTempFValue:I

    goto :goto_0
.end method

.method public getCurrentTempC()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentTempCValue:I

    return v0
.end method

.method public getCurrentTempF()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentTempFValue:I

    return v0
.end method

.method public getCurrentTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUvi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->currentUvi:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastCondition(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastCondition()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastCondition()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastCondition:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastDate(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastDate()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastDate()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastDate:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastHighTemp(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastHighTemp()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastHighTemp()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lcom/htc/widget3d/weather/data/WeatherModel;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastHighTempC:[Ljava/lang/String;

    .line 268
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastHighTempF:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getForecastHighTempC(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastHighTempC()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastHighTempC()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastHighTempC:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastHighTempF()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastHighTempF:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastIcon(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastIcon()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastIcon()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastIcon:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastLowTemp(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastLowTemp()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastLowTemp()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    sget-object v0, Lcom/htc/widget3d/weather/data/WeatherModel;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastLowTempC:[Ljava/lang/String;

    .line 283
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastLowTempF:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getForecastLowTempC(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastLowTempC()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastLowTempC()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastLowTempC:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastLowTempF()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastLowTempF:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastName(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastName()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastName:[Ljava/lang/String;

    return-object v0
.end method

.method public getForecastUvi(I)Ljava/lang/String;
    .locals 1
    .parameter "day"

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastUvi()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForecastUvi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->forecastUvi:[Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/widget3d/weather/data/DCSResult;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget3d/weather/data/DCSResult;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->status:I

    return v0
.end method

.method public getTotalForecast()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->totalForecast:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/htc/widget3d/weather/data/DCSResult;->updateTime:J

    return-wide v0
.end method

.method public getUpdateTimeInDate()Ljava/util/Date;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/htc/widget3d/weather/data/DCSResult;->updateTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
