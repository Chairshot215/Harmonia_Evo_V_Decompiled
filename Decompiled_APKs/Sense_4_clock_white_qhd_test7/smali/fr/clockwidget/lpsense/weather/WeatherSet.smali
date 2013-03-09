.class public Lfr/clockwidget/lpsense/weather/WeatherSet;
.super Ljava/lang/Object;
.source "WeatherSet.java"


# static fields
.field private static final FORECAST_SIZE:I = 0x4


# instance fields
.field private city:Ljava/lang/String;

.field private mCurrentCondition:Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;

.field private mForecastConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v2, p0, Lfr/clockwidget/lpsense/weather/WeatherSet;->mCurrentCondition:Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherSet;->mForecastConditions:Ljava/util/ArrayList;

    .line 30
    iput-object v2, p0, Lfr/clockwidget/lpsense/weather/WeatherSet;->city:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public addWeatherForecastCondition()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherSet;->mForecastConditions:Ljava/util/ArrayList;

    new-instance v1, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;

    invoke-direct {v1}, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherSet;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getLastWeatherForecastCondition()Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherSet;->mForecastConditions:Ljava/util/ArrayList;

    iget-object v1, p0, Lfr/clockwidget/lpsense/weather/WeatherSet;->mForecastConditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;

    return-object p0
.end method

.method public getWeatherCurrentCondition()Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherSet;->mCurrentCondition:Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;

    return-object v0
.end method

.method public getWeatherForecastCondition(I)Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;
    .locals 1
    .parameter "index"

    .prologue
    .line 45
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherSet;->mForecastConditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherSet;->mForecastConditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;

    move-object v0, p0

    .line 48
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWeatherForecastConditions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherSet;->mForecastConditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 65
    iput-object p1, p0, Lfr/clockwidget/lpsense/weather/WeatherSet;->city:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setWeatherCurrentCondition(Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;)V
    .locals 0
    .parameter "mCurrentWeather"

    .prologue
    .line 37
    iput-object p1, p0, Lfr/clockwidget/lpsense/weather/WeatherSet;->mCurrentCondition:Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;

    .line 38
    return-void
.end method
