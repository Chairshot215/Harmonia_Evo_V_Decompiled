.class public Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;
.super Ljava/lang/Object;
.source "FxWeatherControls.java"


# static fields
.field private static final HOUR:Ljava/lang/String; = "timeline.flip_hour"

.field private static final MIN:Ljava/lang/String; = "timeline.flip_minute"

.field private static final TILT:Ljava/lang/String; = "timeline.tiltanim"


# instance fields
.field API_level:I

.field public mCityRest:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mCityRestText:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mCityView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mConditionLength:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mConditionView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mDigital_Data:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

.field public mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

.field public mFxHitboxClock:Lcom/htc/fusion/fx/controls/FxHitbox;

.field public mFxHitboxWeather:Lcom/htc/fusion/fx/controls/FxHitbox;

.field public mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mHLTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field public mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mMarkerHour:Lcom/htc/fusion/fx/Marker;

.field public mMarkerMin:Lcom/htc/fusion/fx/Marker;

.field public mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mNoWeatherView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mTileMark:Lcom/htc/fusion/fx/Marker;

.field public mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mTodayAnimation:Lcom/htc/fusion/fx/FxScene;

.field public mWeatherType:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxScene;)V
    .locals 9
    .parameter "scene"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/16 v6, 0xb

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->API_level:I

    .line 54
    const/16 v2, 0x16

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "button.clock.hitbox"

    aput-object v2, v0, v5

    const-string v2, "button.weather.hitbox"

    aput-object v2, v0, v4

    const-string v2, "timeline.flip_minute"

    aput-object v2, v0, v7

    const-string v2, "timeline.flip_hour"

    aput-object v2, v0, v8

    const/4 v2, 0x4

    const-string v3, "textlabel.weatherclock_cityname"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "textlabel.weatherclock_weather"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "textlabel.weatherclock_noweather"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "textlabel.weatherclock_date"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "textlabel.weatherclock_todaytemp"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "textlabel.weatherclock_H"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "textlabel.weatherclock_L"

    aput-object v3, v0, v2

    const-string v2, "textlabel.weatherclock_tempHi"

    aput-object v2, v0, v6

    const/16 v2, 0xc

    const-string v3, "textlabel.weatherclock_templow"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "scenecontainer.forecast_weather_state"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "timeline.tiltanim"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "timeline.flip_hour"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "timeline.flip_minute"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "timeline.info"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "textlabel.info"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "timeline.weather_type"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "timeline.city_name"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "textlabel.temp_H"

    aput-object v3, v0, v2

    .line 66
    .local v0, controls:[Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, [Lcom/htc/fusion/fx/FxObject;

    .line 68
    .local v1, objs:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v1, v5

    check-cast v2, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxClock:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 69
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxClock:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 70
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxClock:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 72
    aget-object v2, v1, v4

    check-cast v2, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxWeather:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 73
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxWeather:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 74
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxWeather:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 76
    new-instance v3, Lcom/htc/clock3dwidget/util/DigitControl;

    aget-object v2, v1, v7

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    const/16 v4, 0x3c

    invoke-direct {v3, v2, v4}, Lcom/htc/clock3dwidget/util/DigitControl;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;I)V

    iput-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    .line 77
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    .line 78
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v2, v5}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    .line 80
    new-instance v3, Lcom/htc/clock3dwidget/util/DigitControl;

    aget-object v2, v1, v8

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    const/16 v4, 0x18

    invoke-direct {v3, v2, v4}, Lcom/htc/clock3dwidget/util/DigitControl;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;I)V

    iput-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    .line 81
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v2, v5}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    .line 83
    const/4 v2, 0x4

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mCityView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 85
    const/4 v2, 0x5

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mConditionView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 86
    const/4 v2, 0x6

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mNoWeatherView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 87
    const/4 v2, 0x7

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Data:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 88
    const/16 v2, 0x8

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 89
    const/16 v2, 0x9

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 90
    const/16 v2, 0xa

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 91
    aget-object v2, v1, v6

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 92
    const/16 v2, 0xc

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 93
    const/16 v2, 0xd

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 95
    const/16 v2, 0xe

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 96
    iget v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->API_level:I

    if-lt v2, v6, :cond_0

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v2, :cond_0

    .line 97
    const/16 v2, 0x14

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mConditionLength:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "tilt"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mTileMark:Lcom/htc/fusion/fx/Marker;

    .line 102
    :cond_1
    const/16 v2, 0xf

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 103
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "tilt"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mMarkerHour:Lcom/htc/fusion/fx/Marker;

    .line 107
    :cond_2
    const/16 v2, 0x10

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 108
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_3

    .line 109
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "tilt"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mMarkerMin:Lcom/htc/fusion/fx/Marker;

    .line 112
    :cond_3
    const/16 v2, 0x11

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mCityRest:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 114
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mCityRest:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_4

    .line 115
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mCityRest:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 117
    :cond_4
    const/16 v2, 0x12

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mCityRestText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 119
    const/16 v2, 0x13

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mWeatherType:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 121
    const/16 v2, 0x15

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mHLTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 123
    invoke-direct {p0}, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->reset()V

    .line 124
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mConditionView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mConditionView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Data:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Data:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_6

    .line 152
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 155
    :cond_6
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mCityView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_7

    .line 156
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mCityView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 159
    :cond_7
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mHLTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_8

    .line 160
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mHLTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 163
    :cond_8
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mNoWeatherView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_9

    .line 164
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mNoWeatherView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 166
    :cond_9
    return-void
.end method
