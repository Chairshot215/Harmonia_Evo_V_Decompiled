.class public Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;
.super Lfr/clockwidget/lpsense/weather/WeatherCondition;
.source "WeatherForecastCondition.java"


# instance fields
.field private tempMaxCelcius:Ljava/lang/Integer;

.field private tempMaxFahrenheit:Ljava/lang/Integer;

.field private tempMinCelcius:Ljava/lang/Integer;

.field private tempMinFahrenheit:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    .line 30
    invoke-direct {p0}, Lfr/clockwidget/lpsense/weather/WeatherCondition;-><init>()V

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->tempMinCelcius:Ljava/lang/Integer;

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->tempMaxCelcius:Ljava/lang/Integer;

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->tempMinFahrenheit:Ljava/lang/Integer;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->tempMaxFahrenheit:Ljava/lang/Integer;

    .line 31
    return-void
.end method


# virtual methods
.method public getTempMax(Z)Ljava/lang/Integer;
    .locals 1
    .parameter "useCelcius"

    .prologue
    .line 44
    if-eqz p1, :cond_0

    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->tempMaxCelcius:Ljava/lang/Integer;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->tempMaxFahrenheit:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getTempMin(Z)Ljava/lang/Integer;
    .locals 1
    .parameter "useCelcius"

    .prologue
    .line 34
    if-eqz p1, :cond_0

    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->tempMinCelcius:Ljava/lang/Integer;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->tempMinFahrenheit:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setTempMax(Ljava/lang/Integer;Z)V
    .locals 1
    .parameter "tempMax"
    .parameter "useCelcius"

    .prologue
    .line 48
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->tempMaxCelcius:Ljava/lang/Integer;

    .line 49
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->toFahrenheit(I)I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->tempMaxFahrenheit:Ljava/lang/Integer;

    .line 50
    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->toCelsius(I)I

    move-result v0

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method public setTempMin(Ljava/lang/Integer;Z)V
    .locals 1
    .parameter "tempMin"
    .parameter "useCelcius"

    .prologue
    .line 38
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->tempMinCelcius:Ljava/lang/Integer;

    .line 39
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->toFahrenheit(I)I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->tempMinFahrenheit:Ljava/lang/Integer;

    .line 40
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->toCelsius(I)I

    move-result v0

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method
