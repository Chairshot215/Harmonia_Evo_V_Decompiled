.class public Lfr/clockwidget/lpsense/weather/WeatherCondition;
.super Ljava/lang/Object;
.source "WeatherCondition.java"


# instance fields
.field private condition:Ljava/lang/String;

.field private dayofWeek:Ljava/lang/String;

.field private iconURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherCondition;->dayofWeek:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherCondition;->iconURL:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherCondition;->condition:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherCondition;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public getDayofWeek()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherCondition;->dayofWeek:Ljava/lang/String;

    return-object v0
.end method

.method public getIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/WeatherCondition;->iconURL:Ljava/lang/String;

    return-object v0
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0
    .parameter "condition"

    .prologue
    .line 49
    iput-object p1, p0, Lfr/clockwidget/lpsense/weather/WeatherCondition;->condition:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setDayofWeek(Ljava/lang/String;)V
    .locals 0
    .parameter "dayofWeek"

    .prologue
    .line 33
    iput-object p1, p0, Lfr/clockwidget/lpsense/weather/WeatherCondition;->dayofWeek:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setIconURL(Ljava/lang/String;)V
    .locals 0
    .parameter "iconURL"

    .prologue
    .line 41
    iput-object p1, p0, Lfr/clockwidget/lpsense/weather/WeatherCondition;->iconURL:Ljava/lang/String;

    .line 42
    return-void
.end method
