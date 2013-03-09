.class public Lcom/htc/clock3dwidget/ClockWeather_4x1;
.super Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;
.source "ClockWeather_4x1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "saved"

    .prologue
    .line 11
    sget-object v0, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_WEATHER_4x1:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    iput-object v0, p0, Lcom/htc/clock3dwidget/ClockWeather_4x1;->mClockType:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    .line 13
    invoke-super {p0, p1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->onCreate(Landroid/os/Bundle;)V

    .line 14
    return-void
.end method
