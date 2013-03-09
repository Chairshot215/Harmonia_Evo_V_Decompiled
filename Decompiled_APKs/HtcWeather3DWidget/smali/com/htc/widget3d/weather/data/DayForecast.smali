.class public Lcom/htc/widget3d/weather/data/DayForecast;
.super Ljava/lang/Object;
.source "DayForecast.java"


# instance fields
.field private cityLocalTime_:Ljava/lang/String;

.field private condition_:Ljava/lang/String;

.field private currentC_:I

.field private currentF_:I

.field private date_:Ljava/lang/String;

.field private day_:Ljava/lang/String;

.field private forecastIcon_:Ljava/lang/String;

.field private highC_:I

.field private highF_:I

.field private hourlyIcon_:[Ljava/lang/String;

.field private hourlyPrecipPercent_:[I

.field private hourlyPrecip_:[Ljava/lang/String;

.field private hourlyTime_:[Ljava/lang/String;

.field private hourlytempC_:[I

.field private hourlytempF_:[I

.field private humi_:Ljava/lang/String;

.field private lowC_:I

.field private lowF_:I

.field private nightCondition_:Ljava/lang/String;

.field private nightForecaseIcon_:Ljava/lang/String;

.field private nightPrecip_:Ljava/lang/String;

.field private nightRealfeelTempC_:I

.field private nightRealfeelTempF_:I

.field private nightTempC_:I

.field private nightTempF_:I

.field private precip_:Ljava/lang/String;

.field private realFeelC_:I

.field private realFeelF_:I

.field private sunrise_:Ljava/lang/String;

.field private sunset_:Ljava/lang/String;

.field private visibility_:Ljava/lang/String;

.field private windspeed_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->currentF_:I

    .line 49
    iput v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->highF_:I

    .line 50
    iput v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->lowF_:I

    .line 51
    iput v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->currentC_:I

    .line 52
    iput v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->highC_:I

    .line 53
    iput v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->lowC_:I

    .line 54
    iput-object v1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->condition_:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->day_:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->forecastIcon_:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private calculateTemperature(I)I
    .locals 2
    .parameter "val"

    .prologue
    .line 176
    int-to-float v0, p1

    const/high16 v1, 0x4200

    sub-float/2addr v0, v1

    const/high16 v1, 0x40a0

    mul-float/2addr v0, v1

    const/high16 v1, 0x4110

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCityLocalTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 254
    iget-object v4, p0, Lcom/htc/widget3d/weather/data/DayForecast;->cityLocalTime_:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v1, ""

    .line 261
    :goto_0
    return-object v1

    .line 255
    :cond_0
    const-string v1, ""

    .line 256
    .local v1, ftime:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/widget3d/weather/data/DayForecast;->cityLocalTime_:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v2, v4, v5

    .line 257
    .local v2, h:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/widget3d/weather/data/DayForecast;->cityLocalTime_:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v4, v5

    .line 259
    .local v3, m:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_1

    const-string v0, "PM"

    .line 260
    .local v0, ap:Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    rem-int/lit8 v5, v5, 0xc

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

    move-result-object v1

    .line 261
    goto :goto_0

    .line 259
    .end local v0           #ap:Ljava/lang/String;
    :cond_1
    const-string v0, "AM"

    goto :goto_1
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->condition_:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent()I
    .locals 4

    .prologue
    .line 161
    const-string v1, "WeatherWidgetBase"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(WeatherModel.default_unit == UNIT._C) = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/htc/widget3d/weather/data/WeatherModel;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    sget-object v3, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "WeatherWidgetBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrent() currentC_="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget3d/weather/data/DayForecast;->currentC_:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  currentF_="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget3d/weather/data/DayForecast;->currentF_:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne v0, v1, :cond_1

    .line 165
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->currentC_:I

    .line 167
    :goto_1
    return v0

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :cond_1
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->currentF_:I

    goto :goto_1
.end method

.method public getCurrent(Lcom/htc/widget3d/weather/data/City$UNIT;)I
    .locals 1
    .parameter "unit"

    .prologue
    .line 170
    sget-object v0, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne p1, v0, :cond_0

    .line 171
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->currentC_:I

    .line 173
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->currentF_:I

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->date_:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastIcon()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->forecastIcon_:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getForecastIconStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->forecastIcon_:Ljava/lang/String;

    return-object v0
.end method

.method public getHigh()I
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 191
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->highC_:I

    .line 192
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->highF_:I

    goto :goto_0
.end method

.method public getHigh(Lcom/htc/widget3d/weather/data/City$UNIT;)I
    .locals 1
    .parameter "unit"

    .prologue
    .line 195
    sget-object v0, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne p1, v0, :cond_0

    .line 196
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->highC_:I

    .line 197
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->highF_:I

    goto :goto_0
.end method

.method public getHourlyIcon()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlyIcon_:[Ljava/lang/String;

    return-object v0
.end method

.method public getHourlyPrecip()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlyPrecip_:[Ljava/lang/String;

    return-object v0
.end method

.method public getHourlyPrecipPercent()[I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlyPrecipPercent_:[I

    return-object v0
.end method

.method public getHourlyTemp()[I
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlytempC_:[I

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlytempF_:[I

    goto :goto_0
.end method

.method public getHourlyTime()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlyTime_:[Ljava/lang/String;

    return-object v0
.end method

.method public getHumi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->humi_:Ljava/lang/String;

    return-object v0
.end method

.method public getLow()I
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 209
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->lowC_:I

    .line 210
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->lowF_:I

    goto :goto_0
.end method

.method public getLow(Lcom/htc/widget3d/weather/data/City$UNIT;)I
    .locals 1
    .parameter "unit"

    .prologue
    .line 213
    sget-object v0, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne p1, v0, :cond_0

    .line 214
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->lowC_:I

    .line 215
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->lowF_:I

    goto :goto_0
.end method

.method public getMaxHourPrecip()I
    .locals 5

    .prologue
    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, maxP:I
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DayForecast;->getHourlyPrecipPercent()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 125
    .local v4, t:I
    if-le v4, v3, :cond_0

    .line 126
    move v3, v4

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v4           #t:I
    :cond_1
    return v3
.end method

.method public getMaxHourTemp()I
    .locals 5

    .prologue
    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, maxT:I
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DayForecast;->getHourlyTemp()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 114
    .local v4, t:I
    if-le v4, v3, :cond_0

    .line 115
    move v3, v4

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v4           #t:I
    :cond_1
    return v3
.end method

.method public getMinHourPrecip()I
    .locals 7

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DayForecast;->getHourlyPrecipPercent()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v3, v5, v6

    .line 144
    .local v3, minP:I
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DayForecast;->getHourlyPrecipPercent()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 145
    .local v4, t:I
    if-ge v4, v3, :cond_0

    .line 146
    move v3, v4

    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v4           #t:I
    :cond_1
    return v3
.end method

.method public getMinHourTemp()I
    .locals 7

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DayForecast;->getHourlyTemp()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v3, v5, v6

    .line 134
    .local v3, minT:I
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/DayForecast;->getHourlyTemp()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 135
    .local v4, t:I
    if-ge v4, v3, :cond_0

    .line 136
    move v3, v4

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v4           #t:I
    :cond_1
    return v3
.end method

.method public getNightCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightCondition_:Ljava/lang/String;

    return-object v0
.end method

.method public getNightForecaseIcon()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightForecaseIcon_:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNightPrecip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightPrecip_:Ljava/lang/String;

    return-object v0
.end method

.method public getNightRealfeelTemp()I
    .locals 2

    .prologue
    .line 366
    sget-object v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 367
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightRealfeelTempC_:I

    .line 368
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightRealfeelTempF_:I

    goto :goto_0
.end method

.method public getNightTemp()I
    .locals 2

    .prologue
    .line 352
    sget-object v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 353
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightTempC_:I

    .line 354
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightTempF_:I

    goto :goto_0
.end method

.method public getPrecip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->precip_:Ljava/lang/String;

    return-object v0
.end method

.method public getRealFeel()I
    .locals 2

    .prologue
    .line 306
    sget-object v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 307
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->realFeelC_:I

    .line 308
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->realFeelF_:I

    goto :goto_0
.end method

.method public getSunrise()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->sunrise_:Ljava/lang/String;

    return-object v0
.end method

.method public getSunset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->sunset_:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->visibility_:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->day_:Ljava/lang/String;

    return-object v0
.end method

.method public getWindspeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/DayForecast;->windspeed_:Ljava/lang/String;

    return-object v0
.end method

.method public setCityLocalTime(Ljava/lang/String;)V
    .locals 0
    .parameter "cityLocalTime_"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->cityLocalTime_:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0
    .parameter "condition"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->condition_:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setCurrentC(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 157
    iput p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->currentC_:I

    .line 158
    return-void
.end method

.method public setCurrentF(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 153
    iput p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->currentF_:I

    .line 154
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->date_:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setForecastIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->forecastIcon_:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setHighC(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 186
    iput p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->highC_:I

    .line 187
    return-void
.end method

.method public setHighF(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 182
    iput p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->highF_:I

    .line 183
    return-void
.end method

.method public setHourlyIcon([Ljava/lang/String;)V
    .locals 0
    .parameter "hourlyIcon"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlyIcon_:[Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setHourlyPrecip([Ljava/lang/String;)V
    .locals 4
    .parameter "hourlyPrecip"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlyPrecip_:[Ljava/lang/String;

    .line 100
    iget-object v3, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlyPrecip_:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlyPrecipPercent_:[I

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlyPrecipPercent_:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlyPrecip_:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 103
    .local v2, precip:F
    const/4 v1, 0x0

    .line 104
    .local v1, percent:I
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 106
    iget-object v3, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlyPrecipPercent_:[I

    aput v1, v3, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v1           #percent:I
    .end local v2           #precip:F
    :cond_0
    return-void
.end method

.method public setHourlyTempC([I)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlytempC_:[I

    .line 65
    return-void
.end method

.method public setHourlyTempF([I)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlytempF_:[I

    .line 61
    return-void
.end method

.method public setHourlyTime([Ljava/lang/String;)V
    .locals 0
    .parameter "hourlyTime"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->hourlyTime_:[Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setHumi(Ljava/lang/String;)V
    .locals 0
    .parameter "humi_"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->humi_:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setLowC(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 204
    iput p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->lowC_:I

    .line 205
    return-void
.end method

.method public setLowF(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 200
    iput p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->lowF_:I

    .line 201
    return-void
.end method

.method public setNightCondition(Ljava/lang/String;)V
    .locals 0
    .parameter "nightCondition_"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightCondition_:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setNightForecaseIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "nightForecaseIcon_"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightForecaseIcon_:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setNightPrecip(Ljava/lang/String;)V
    .locals 0
    .parameter "nightPrecip_"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightPrecip_:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public setNightRealfeelTempC(I)V
    .locals 0
    .parameter "nightRealfeelTemp_"

    .prologue
    .line 362
    iput p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightRealfeelTempC_:I

    .line 363
    return-void
.end method

.method public setNightRealfeelTempF(I)V
    .locals 0
    .parameter "nightRealfeelTemp_"

    .prologue
    .line 358
    iput p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightRealfeelTempF_:I

    .line 359
    return-void
.end method

.method public setNightTempC(I)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 348
    iput p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightTempC_:I

    .line 349
    return-void
.end method

.method public setNightTempF(I)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 344
    iput p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->nightTempF_:I

    .line 345
    return-void
.end method

.method public setPrecip(Ljava/lang/String;)V
    .locals 0
    .parameter "precip_"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->precip_:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setRealFeelC(I)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 302
    iput p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->realFeelC_:I

    .line 303
    return-void
.end method

.method public setRealFeelF(I)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 299
    iput p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->realFeelF_:I

    .line 300
    return-void
.end method

.method public setSunrise(Ljava/lang/String;)V
    .locals 0
    .parameter "sunrise_"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->sunrise_:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setSunset(Ljava/lang/String;)V
    .locals 0
    .parameter "sunset_"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->sunset_:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .locals 0
    .parameter "visibility_"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->visibility_:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setWeekDay(Ljava/lang/String;)V
    .locals 0
    .parameter "day"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->day_:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setWindspeed(Ljava/lang/String;)V
    .locals 0
    .parameter "windspeed_"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/DayForecast;->windspeed_:Ljava/lang/String;

    .line 317
    return-void
.end method
