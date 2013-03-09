.class public Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;
.super Lfr/clockwidget/lpsense/weather/WeatherCondition;
.source "WeatherCurrentCondition.java"


# instance fields
.field private humidity:Ljava/lang/String;

.field private tempCelcius:Ljava/lang/Integer;

.field private tempFahrenheit:Ljava/lang/Integer;

.field private windCondition:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x8000

    .line 30
    invoke-direct {p0}, Lfr/clockwidget/lpsense/weather/WeatherCondition;-><init>()V

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->tempCelcius:Ljava/lang/Integer;

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->tempFahrenheit:Ljava/lang/Integer;

    .line 27
    iput-object v2, p0, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->windCondition:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->humidity:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getHumidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->humidity:Ljava/lang/String;

    return-object v0
.end method

.method public getTemp(Z)Ljava/lang/Integer;
    .locals 1
    .parameter "useCelcius"

    .prologue
    .line 34
    if-eqz p1, :cond_0

    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->tempCelcius:Ljava/lang/Integer;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->tempFahrenheit:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getWindCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->windCondition:Ljava/lang/String;

    return-object v0
.end method

.method public setHumidity(Ljava/lang/String;)V
    .locals 0
    .parameter "humidity"

    .prologue
    .line 60
    iput-object p1, p0, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->humidity:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setTempCelcius(Ljava/lang/Integer;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 38
    iput-object p1, p0, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->tempCelcius:Ljava/lang/Integer;

    .line 39
    return-void
.end method

.method public setTempFahrenheit(Ljava/lang/Integer;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 43
    iput-object p1, p0, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->tempFahrenheit:Ljava/lang/Integer;

    .line 44
    return-void
.end method

.method public setWindCondition(Ljava/lang/String;)V
    .locals 0
    .parameter "windCondition"

    .prologue
    .line 52
    iput-object p1, p0, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->windCondition:Ljava/lang/String;

    .line 53
    return-void
.end method
