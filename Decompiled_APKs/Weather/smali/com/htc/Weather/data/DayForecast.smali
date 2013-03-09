.class public Lcom/htc/Weather/data/DayForecast;
.super Ljava/lang/Object;
.source "DayForecast.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DayForecast"


# instance fields
.field private cityLocalTime_:Ljava/lang/String;

.field private cityWebURL_:Ljava/lang/String;

.field private condition_:Ljava/lang/String;

.field private currentC_:I

.field private currentF_:I

.field private currentForcastIcon_:Ljava/lang/String;

.field private currentRealFeelC_:I

.field private currentRealFeelF_:I

.field private date_:Ljava/lang/String;

.field private dayHighRealfeelTempC_:I

.field private dayHighRealfeelTempF_:I

.field private dayHighTempC_:I

.field private dayHighTempF_:I

.field private dayLowRealfeelTempC_:I

.field private dayLowRealfeelTempF_:I

.field private dayLowTempC_:I

.field private dayLowTempF_:I

.field private day_:Ljava/lang/String;

.field private formatData_:Ljava/lang/String;

.field public fstDayIndex:I

.field private hourlyIcon_:[Ljava/lang/String;

.field private hourlyPrecipPercent_:[I

.field private hourlyPrecip_:[Ljava/lang/String;

.field private hourlyTime_:[Ljava/lang/String;

.field private hourlytempC_:[I

.field private hourlytempF_:[I

.field private humi_:Ljava/lang/String;

.field private isDayLight:Z

.field private mContext:Landroid/content/Context;

.field private mmdd_:Ljava/lang/String;

.field private nightCondition_:Ljava/lang/String;

.field private nightForecaseIcon_:Ljava/lang/String;

.field private nightHighRealfeelTempC_:I

.field private nightHighRealfeelTempF_:I

.field private nightHighTempC_:I

.field private nightHighTempF_:I

.field private nightLowRealfeelTempC_:I

.field private nightLowRealfeelTempF_:I

.field private nightLowTempC_:I

.field private nightLowTempF_:I

.field private nightPrecip_:Ljava/lang/String;

.field private precip_:Ljava/lang/String;

.field private sunrise_:Ljava/lang/String;

.field private sunset_:Ljava/lang/String;

.field private visibilityKM_:Ljava/lang/String;

.field private visibility_:Ljava/lang/String;

.field private windspeedKM_:Ljava/lang/String;

.field private windspeed_:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/data/DayForecast;->isDayLight:Z

    .line 74
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->mContext:Landroid/content/Context;

    .line 75
    iput v2, p0, Lcom/htc/Weather/data/DayForecast;->currentF_:I

    .line 76
    iput v2, p0, Lcom/htc/Weather/data/DayForecast;->currentC_:I

    .line 77
    iput-object v1, p0, Lcom/htc/Weather/data/DayForecast;->condition_:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/htc/Weather/data/DayForecast;->day_:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/htc/Weather/data/DayForecast;->currentForcastIcon_:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private calculateTemperature(I)I
    .locals 2
    .parameter "val"

    .prologue
    .line 202
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
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->cityLocalTime_:Ljava/lang/String;

    return-object v0
.end method

.method public getCityOriTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->cityLocalTime_:Ljava/lang/String;

    return-object v0
.end method

.method public getCityWebURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->cityWebURL_:Ljava/lang/String;

    return-object v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->condition_:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent()I
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 196
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->currentC_:I

    .line 198
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->currentF_:I

    goto :goto_0
.end method

.method public getCurrentC_()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->currentC_:I

    return v0
.end method

.method public getCurrentF_()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->currentF_:I

    return v0
.end method

.method public getCurrentRealFeelC_()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->currentRealFeelC_:I

    return v0
.end method

.method public getCurrentRealFeelF_()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->currentRealFeelF_:I

    return v0
.end method

.method public getCurrentRealFeelTemp()I
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 245
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->currentRealFeelC_:I

    .line 246
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->currentRealFeelF_:I

    goto :goto_0
.end method

.method public getCurrentTemp()I
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 223
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->currentC_:I

    .line 224
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->currentF_:I

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->date_:Ljava/lang/String;

    return-object v0
.end method

.method public getDayHighRealfeelTemp()I
    .locals 2

    .prologue
    .line 328
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 329
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayHighRealfeelTempC_:I

    .line 330
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayHighRealfeelTempF_:I

    goto :goto_0
.end method

.method public getDayHighRealfeelTempC_()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayHighRealfeelTempC_:I

    return v0
.end method

.method public getDayHighRealfeelTempF_()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayHighRealfeelTempF_:I

    return v0
.end method

.method public getDayHighTemp()I
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 285
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayHighTempC_:I

    .line 286
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayHighTempF_:I

    goto :goto_0
.end method

.method public getDayHighTempC_()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayHighTempC_:I

    return v0
.end method

.method public getDayHighTempF_()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayHighTempF_:I

    return v0
.end method

.method public getDayLowRealfeelTemp()I
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 335
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayLowRealfeelTempC_:I

    .line 336
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayLowRealfeelTempF_:I

    goto :goto_0
.end method

.method public getDayLowRealfeelTempC_()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayLowRealfeelTempC_:I

    return v0
.end method

.method public getDayLowRealfeelTempF_()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayLowRealfeelTempF_:I

    return v0
.end method

.method public getDayLowTemp()I
    .locals 2

    .prologue
    .line 290
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 291
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayLowTempC_:I

    .line 292
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayLowTempF_:I

    goto :goto_0
.end method

.method public getDayLowTempC_()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayLowTempC_:I

    return v0
.end method

.method public getDayLowTempF_()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->dayLowTempF_:I

    return v0
.end method

.method public getForecastIcon()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->currentForcastIcon_:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getForecastIconStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->currentForcastIcon_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->formatData_:Ljava/lang/String;

    return-object v0
.end method

.method public getHourlyIcon()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->hourlyIcon_:[Ljava/lang/String;

    return-object v0
.end method

.method public getHourlyPrecip()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->hourlyPrecip_:[Ljava/lang/String;

    return-object v0
.end method

.method public getHourlyPrecipPercent()[I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->hourlyPrecipPercent_:[I

    return-object v0
.end method

.method public getHourlyTemp()[I
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->hourlytempC_:[I

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->hourlytempF_:[I

    goto :goto_0
.end method

.method public getHourlyTime()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->hourlyTime_:[Ljava/lang/String;

    return-object v0
.end method

.method public getHumi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->humi_:Ljava/lang/String;

    return-object v0
.end method

.method public getMMDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->mmdd_:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxHourPrecip()I
    .locals 5

    .prologue
    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, maxP:I
    invoke-virtual {p0}, Lcom/htc/Weather/data/DayForecast;->getHourlyPrecipPercent()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 159
    .local v4, t:I
    if-le v4, v3, :cond_0

    .line 160
    move v3, v4

    .line 158
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v4           #t:I
    :cond_1
    return v3
.end method

.method public getMaxHourTemp()I
    .locals 5

    .prologue
    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, maxT:I
    invoke-virtual {p0}, Lcom/htc/Weather/data/DayForecast;->getHourlyTemp()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 148
    .local v4, t:I
    if-le v4, v3, :cond_0

    .line 149
    move v3, v4

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v4           #t:I
    :cond_1
    return v3
.end method

.method public getMinHourPrecip()I
    .locals 7

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/htc/Weather/data/DayForecast;->getHourlyPrecipPercent()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v3, v5, v6

    .line 178
    .local v3, minP:I
    invoke-virtual {p0}, Lcom/htc/Weather/data/DayForecast;->getHourlyPrecipPercent()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 179
    .local v4, t:I
    if-ge v4, v3, :cond_0

    .line 180
    move v3, v4

    .line 178
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v4           #t:I
    :cond_1
    return v3
.end method

.method public getMinHourTemp()I
    .locals 7

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/htc/Weather/data/DayForecast;->getHourlyTemp()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v3, v5, v6

    .line 168
    .local v3, minT:I
    invoke-virtual {p0}, Lcom/htc/Weather/data/DayForecast;->getHourlyTemp()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 169
    .local v4, t:I
    if-ge v4, v3, :cond_0

    .line 170
    move v3, v4

    .line 168
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v4           #t:I
    :cond_1
    return v3
.end method

.method public getNightCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->nightCondition_:Ljava/lang/String;

    return-object v0
.end method

.method public getNightForecaseIcon()I
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->nightForecaseIcon_:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNightHighRealfeelTemp()I
    .locals 2

    .prologue
    .line 702
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 703
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightHighRealfeelTempC_:I

    .line 704
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightHighRealfeelTempF_:I

    goto :goto_0
.end method

.method public getNightHighRealfeelTempC_()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightHighRealfeelTempC_:I

    return v0
.end method

.method public getNightHighRealfeelTempF_()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightHighRealfeelTempF_:I

    return v0
.end method

.method public getNightHighTemp()I
    .locals 2

    .prologue
    .line 658
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 659
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightHighTempC_:I

    .line 660
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightHighTempF_:I

    goto :goto_0
.end method

.method public getNightHighTempC_()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightHighTempC_:I

    return v0
.end method

.method public getNightHighTempF_()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightHighTempF_:I

    return v0
.end method

.method public getNightLowRealfeelTemp()I
    .locals 2

    .prologue
    .line 708
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 709
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightLowRealfeelTempC_:I

    .line 710
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightLowRealfeelTempF_:I

    goto :goto_0
.end method

.method public getNightLowRealfeelTempC_()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightLowRealfeelTempC_:I

    return v0
.end method

.method public getNightLowRealfeelTempF_()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightLowRealfeelTempF_:I

    return v0
.end method

.method public getNightLowTemp()I
    .locals 2

    .prologue
    .line 664
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 665
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightLowTempC_:I

    .line 666
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightLowTempF_:I

    goto :goto_0
.end method

.method public getNightLowTempC_()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightLowTempC_:I

    return v0
.end method

.method public getNightLowTempF_()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/htc/Weather/data/DayForecast;->nightLowTempF_:I

    return v0
.end method

.method public getNightPrecip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->nightPrecip_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->precip_:Ljava/lang/String;

    return-object v0
.end method

.method public getSunrise()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0xa

    .line 462
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunrise_:Ljava/lang/String;

    if-nez v7, :cond_1

    const-string v2, ""

    .line 514
    :cond_0
    :goto_0
    return-object v2

    .line 466
    :cond_1
    const-string v2, ""

    .line 467
    .local v2, ftime:Ljava/lang/String;
    const-string v6, ""

    .line 468
    .local v6, sunset_time:Ljava/lang/String;
    const-string v0, ""

    .line 469
    .local v0, ap:Ljava/lang/String;
    const/4 v3, 0x0

    .line 470
    .local v3, h:I
    const/4 v4, 0x0

    .line 472
    .local v4, m:I
    sget-object v7, Lcom/htc/Weather/WeatherActivity;->default_time_12_24:Lcom/htc/Weather/data/City$TIME;

    sget-object v8, Lcom/htc/Weather/data/City$TIME;->_TIME_12:Lcom/htc/Weather/data/City$TIME;

    if-ne v7, v8, :cond_4

    .line 474
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunrise_:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_0

    .line 478
    :try_start_0
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunrise_:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v6, v7, v8

    .line 479
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunrise_:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string v8, "PM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20c0176

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    :goto_1
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 483
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 488
    :goto_2
    if-ge v4, v10, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, mm:Ljava/lang/String;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    goto/16 :goto_0

    .line 479
    .end local v5           #mm:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20c0175

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "DayForecast"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSunrise,can\'t parse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/Weather/data/DayForecast;->sunrise_:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 488
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 496
    :cond_4
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunrise_:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_0

    .line 499
    :try_start_2
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunrise_:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v6, v7, v8

    .line 500
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunrise_:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v0, v7, v8

    .line 502
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 503
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 507
    :goto_4
    if-ge v4, v10, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 508
    .restart local v5       #mm:Ljava/lang/String;
    :goto_5
    const-string v7, "PM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v3, v3, 0xc

    .line 509
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 504
    .end local v5           #mm:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 505
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "DayForecast"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSunrise,can\'t parse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/Weather/data/DayForecast;->sunrise_:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 507
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5
.end method

.method public getSunset()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0xa

    .line 524
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunset_:Ljava/lang/String;

    if-nez v7, :cond_1

    const-string v2, ""

    .line 576
    :cond_0
    :goto_0
    return-object v2

    .line 526
    :cond_1
    const-string v2, ""

    .line 527
    .local v2, ftime:Ljava/lang/String;
    const-string v6, ""

    .line 528
    .local v6, sunset_time:Ljava/lang/String;
    const-string v0, ""

    .line 529
    .local v0, ap:Ljava/lang/String;
    const/4 v3, 0x0

    .line 530
    .local v3, h:I
    const/4 v4, 0x0

    .line 531
    .local v4, m:I
    sget-object v7, Lcom/htc/Weather/WeatherActivity;->default_time_12_24:Lcom/htc/Weather/data/City$TIME;

    sget-object v8, Lcom/htc/Weather/data/City$TIME;->_TIME_12:Lcom/htc/Weather/data/City$TIME;

    if-ne v7, v8, :cond_4

    .line 532
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunset_:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_0

    .line 536
    :try_start_0
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunset_:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v6, v7, v8

    .line 537
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunset_:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string v8, "PM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20c0176

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 540
    :goto_1
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 541
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 547
    :goto_2
    if-ge v4, v10, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, mm:Ljava/lang/String;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    goto/16 :goto_0

    .line 537
    .end local v5           #mm:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20c0175

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "DayForecast"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSunset,can\'t parse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/Weather/data/DayForecast;->sunset_:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 547
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 554
    :cond_4
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunset_:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_0

    .line 558
    :try_start_2
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunset_:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v6, v7, v8

    .line 559
    iget-object v7, p0, Lcom/htc/Weather/data/DayForecast;->sunset_:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v0, v7, v8

    .line 561
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 562
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 568
    :goto_4
    if-ge v4, v10, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 569
    .restart local v5       #mm:Ljava/lang/String;
    :goto_5
    const-string v7, "PM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v3, v3, 0xc

    .line 570
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 564
    .end local v5           #mm:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 565
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "DayForecast"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSunset,can\'t parse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/Weather/data/DayForecast;->sunset_:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 568
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5
.end method

.method public getVisibility()Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->visibilityKM_:Ljava/lang/String;

    .line 458
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->visibility_:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWeekDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->day_:Ljava/lang/String;

    return-object v0
.end method

.method public getWindspeed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 448
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v1, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->windspeedKM_:Ljava/lang/String;

    .line 451
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/data/DayForecast;->windspeed_:Ljava/lang/String;

    goto :goto_0
.end method

.method public isDayLight()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/Weather/data/DayForecast;->isDayLight:Z

    return v0
.end method

.method public setCityLocalTime(Ljava/lang/String;)V
    .locals 0
    .parameter "cityLocalTime_"

    .prologue
    .line 430
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->cityLocalTime_:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setCityWebURL(Ljava/lang/String;)V
    .locals 0
    .parameter "cityWebURL_"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->cityWebURL_:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0
    .parameter "condition"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->condition_:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setCurrentC(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 191
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->currentC_:I

    .line 192
    return-void
.end method

.method public setCurrentC_(I)V
    .locals 0
    .parameter "currentC_"

    .prologue
    .line 218
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->currentC_:I

    .line 219
    return-void
.end method

.method public setCurrentF(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 187
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->currentF_:I

    .line 188
    return-void
.end method

.method public setCurrentF_(I)V
    .locals 0
    .parameter "currentF_"

    .prologue
    .line 210
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->currentF_:I

    .line 211
    return-void
.end method

.method public setCurrentRealFeelC_(I)V
    .locals 0
    .parameter "currentRealFeelC_"

    .prologue
    .line 240
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->currentRealFeelC_:I

    .line 241
    return-void
.end method

.method public setCurrentRealFeelF_(I)V
    .locals 0
    .parameter "currentRealFeelF_"

    .prologue
    .line 232
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->currentRealFeelF_:I

    .line 233
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 10
    .parameter "date"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 348
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->date_:Ljava/lang/String;

    .line 349
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, m:[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    .line 353
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 354
    .local v0, c:Ljava/util/Calendar;
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v3, v7

    invoke-static {v5}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget-object v6, v3, v8

    invoke-static {v6}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 359
    iget-object v4, p0, Lcom/htc/Weather/data/DayForecast;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, data_format:Ljava/lang/String;
    const-string v4, "DayForecast"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings.System.DATE_FORMAT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v2, 0x0

    .line 364
    .local v2, formattedDate:Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    const-string v4, "EE, MMM d, yyyy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 366
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 377
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/Weather/data/DayForecast;->formatData_:Ljava/lang/String;

    .line 382
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/Weather/data/DayForecast;->mmdd_:Ljava/lang/String;

    .line 384
    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #data_format:Ljava/lang/String;
    .end local v2           #formattedDate:Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/htc/Weather/data/DayForecast;->mmdd_:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, ""

    iput-object v4, p0, Lcom/htc/Weather/data/DayForecast;->mmdd_:Ljava/lang/String;

    .line 385
    :cond_3
    iget-object v4, p0, Lcom/htc/Weather/data/DayForecast;->date_:Ljava/lang/String;

    if-nez v4, :cond_4

    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->date_:Ljava/lang/String;

    .line 387
    :cond_4
    return-void

    .line 367
    .restart local v0       #c:Ljava/util/Calendar;
    .restart local v1       #data_format:Ljava/lang/String;
    .restart local v2       #formattedDate:Ljava/lang/CharSequence;
    :cond_5
    if-eqz v1, :cond_6

    const-string v4, "EE, d MMM yyyy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 369
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 370
    :cond_6
    if-eqz v1, :cond_7

    const-string v4, "yyyy MMM d, EE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 372
    const/16 v4, 0xa

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 373
    :cond_7
    if-eqz v1, :cond_0

    .line 374
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public setDayHighRealfeelTempC_(I)V
    .locals 0
    .parameter "dayHighRealfeelTempC_"

    .prologue
    .line 316
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->dayHighRealfeelTempC_:I

    .line 317
    return-void
.end method

.method public setDayHighRealfeelTempF_(I)V
    .locals 0
    .parameter "dayHighRealfeelTempF_"

    .prologue
    .line 300
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->dayHighRealfeelTempF_:I

    .line 301
    return-void
.end method

.method public setDayHighTempC_(I)V
    .locals 0
    .parameter "dayHighTempC_"

    .prologue
    .line 271
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->dayHighTempC_:I

    .line 272
    return-void
.end method

.method public setDayHighTempF_(I)V
    .locals 0
    .parameter "dayHighTempF_"

    .prologue
    .line 254
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->dayHighTempF_:I

    .line 255
    return-void
.end method

.method public setDayLight(Z)V
    .locals 0
    .parameter "isDayLight"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/htc/Weather/data/DayForecast;->isDayLight:Z

    .line 88
    return-void
.end method

.method public setDayLowRealfeelTempC_(I)V
    .locals 0
    .parameter "dayLowRealfeelTempC_"

    .prologue
    .line 324
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->dayLowRealfeelTempC_:I

    .line 325
    return-void
.end method

.method public setDayLowRealfeelTempF_(I)V
    .locals 0
    .parameter "dayLowRealfeelTempF_"

    .prologue
    .line 308
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->dayLowRealfeelTempF_:I

    .line 309
    return-void
.end method

.method public setDayLowTempC_(I)V
    .locals 0
    .parameter "dayLowTempC_"

    .prologue
    .line 279
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->dayLowTempC_:I

    .line 280
    return-void
.end method

.method public setDayLowTempF_(I)V
    .locals 0
    .parameter "dayLowTempF_"

    .prologue
    .line 262
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->dayLowTempF_:I

    .line 263
    return-void
.end method

.method public setForecastIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->currentForcastIcon_:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public setHourlyIcon([Ljava/lang/String;)V
    .locals 0
    .parameter "hourlyIcon"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->hourlyIcon_:[Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setHourlyPrecip([Ljava/lang/String;)V
    .locals 5
    .parameter "hourlyPrecip"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->hourlyPrecip_:[Ljava/lang/String;

    .line 131
    iget-object v3, p0, Lcom/htc/Weather/data/DayForecast;->hourlyPrecip_:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/htc/Weather/data/DayForecast;->hourlyPrecipPercent_:[I

    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/Weather/data/DayForecast;->hourlyPrecipPercent_:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, precip:F
    iget-object v3, p0, Lcom/htc/Weather/data/DayForecast;->hourlyPrecip_:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/Weather/data/DayForecast;->hourlyPrecip_:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/htc/Weather/data/DayForecast;->hourlyPrecip_:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 137
    :cond_0
    const/4 v1, 0x0

    .line 138
    .local v1, percent:I
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 140
    iget-object v3, p0, Lcom/htc/Weather/data/DayForecast;->hourlyPrecipPercent_:[I

    aput v1, v3, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v1           #percent:I
    .end local v2           #precip:F
    :cond_1
    return-void
.end method

.method public setHourlyTempC([I)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->hourlytempC_:[I

    .line 96
    return-void
.end method

.method public setHourlyTempF([I)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->hourlytempF_:[I

    .line 92
    return-void
.end method

.method public setHourlyTime([Ljava/lang/String;)V
    .locals 0
    .parameter "hourlyTime"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->hourlyTime_:[Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setHumi(Ljava/lang/String;)V
    .locals 0
    .parameter "humi_"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->humi_:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public setNightCondition(Ljava/lang/String;)V
    .locals 0
    .parameter "nightCondition_"

    .prologue
    .line 718
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->nightCondition_:Ljava/lang/String;

    .line 719
    return-void
.end method

.method public setNightForecaseIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "nightForecaseIcon_"

    .prologue
    .line 714
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->nightForecaseIcon_:Ljava/lang/String;

    .line 715
    return-void
.end method

.method public setNightHighRealfeelTempC_(I)V
    .locals 0
    .parameter "nightHighRealfeelTempC_"

    .prologue
    .line 690
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->nightHighRealfeelTempC_:I

    .line 691
    return-void
.end method

.method public setNightHighRealfeelTempF_(I)V
    .locals 0
    .parameter "nightHighRealfeelTempF_"

    .prologue
    .line 674
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->nightHighRealfeelTempF_:I

    .line 675
    return-void
.end method

.method public setNightHighTempC_(I)V
    .locals 0
    .parameter "nightHighTempC_"

    .prologue
    .line 646
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->nightHighTempC_:I

    .line 647
    return-void
.end method

.method public setNightHighTempF_(I)V
    .locals 0
    .parameter "nightHighTempF_"

    .prologue
    .line 630
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->nightHighTempF_:I

    .line 631
    return-void
.end method

.method public setNightLowRealfeelTempC_(I)V
    .locals 0
    .parameter "nightLowRealfeelTempC_"

    .prologue
    .line 698
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->nightLowRealfeelTempC_:I

    .line 699
    return-void
.end method

.method public setNightLowRealfeelTempF_(I)V
    .locals 0
    .parameter "nightLowRealfeelTempF_"

    .prologue
    .line 682
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->nightLowRealfeelTempF_:I

    .line 683
    return-void
.end method

.method public setNightLowTempC_(I)V
    .locals 0
    .parameter "nightLowTempC_"

    .prologue
    .line 654
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->nightLowTempC_:I

    .line 655
    return-void
.end method

.method public setNightLowTempF_(I)V
    .locals 0
    .parameter "nightLowTempF_"

    .prologue
    .line 638
    iput p1, p0, Lcom/htc/Weather/data/DayForecast;->nightLowTempF_:I

    .line 639
    return-void
.end method

.method public setNightPrecip(Ljava/lang/String;)V
    .locals 0
    .parameter "nightPrecip_"

    .prologue
    .line 722
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->nightPrecip_:Ljava/lang/String;

    .line 723
    return-void
.end method

.method public setPrecip(Ljava/lang/String;)V
    .locals 0
    .parameter "precip_"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->precip_:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setSunrise(Ljava/lang/String;)V
    .locals 0
    .parameter "sunrise_"

    .prologue
    .line 606
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->sunrise_:Ljava/lang/String;

    .line 607
    return-void
.end method

.method public setSunset(Ljava/lang/String;)V
    .locals 0
    .parameter "sunset_"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->sunset_:Ljava/lang/String;

    .line 611
    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .locals 0
    .parameter "visibility_"

    .prologue
    .line 594
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->visibility_:Ljava/lang/String;

    .line 595
    return-void
.end method

.method public setVisibilityKM(Ljava/lang/String;)V
    .locals 0
    .parameter "visibilitykm_"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->visibilityKM_:Ljava/lang/String;

    .line 603
    return-void
.end method

.method public setWeekDay(Ljava/lang/String;)V
    .locals 0
    .parameter "day"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->day_:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setWindspeed(Ljava/lang/String;)V
    .locals 0
    .parameter "windspeed_"

    .prologue
    .line 590
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->windspeed_:Ljava/lang/String;

    .line 591
    return-void
.end method

.method public setWindspeedKM(Ljava/lang/String;)V
    .locals 0
    .parameter "windspeedkm_"

    .prologue
    .line 598
    iput-object p1, p0, Lcom/htc/Weather/data/DayForecast;->windspeedKM_:Ljava/lang/String;

    .line 599
    return-void
.end method
