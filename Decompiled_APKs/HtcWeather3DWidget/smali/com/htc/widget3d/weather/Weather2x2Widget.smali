.class public Lcom/htc/widget3d/weather/Weather2x2Widget;
.super Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;
.source "Weather2x2Widget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;
    }
.end annotation


# static fields
.field private static final ASSET_FORECAST_M10PATH:Ljava/lang/String; = "Port/"

.field private static final TAG:Ljava/lang/String; = "WeatherWidget2x2"


# instance fields
.field protected SZ_DEFAULT_M10PATH:Ljava/lang/String;

.field protected SZ_DEFAULT_M10PATH_LAND:Ljava/lang/String;

.field private fx_HitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private fx_Status:Lcom/htc/fusion/fx/FxScene;

.field private fxsc_Status:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private fxtc_Weather:Lcom/htc/fusion/fx/FxTimelineControl;

.field private fxtl_City:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private fxtl_Condition:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private fxtl_Empty:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private fxtl_EmptyCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private fxtl_HL:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private fxtl_Temp:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private isWeatherDataAvalible:Z

.field private landScene:Lcom/htc/fusion/fx/FxScene;

.field private mGetFxControls:Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;

.field private mTapListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end field

.field protected mWidgetID:I

.field protected mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

.field private m_fxScene:Lcom/htc/fusion/fx/FxScene;

.field private m_nTiltEndFrame:I

.field private m_nTiltStartFrame:I

.field private m_timelineTilt:Lcom/htc/fusion/fx/FxTimelineControl;

.field private portScene:Lcom/htc/fusion/fx/FxScene;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;-><init>()V

    .line 33
    const-string v0, "Port/Weather_2x2.m10"

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->SZ_DEFAULT_M10PATH:Ljava/lang/String;

    .line 34
    const-string v0, "Land/Weather_2x2_land.m10"

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->SZ_DEFAULT_M10PATH_LAND:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->isWeatherDataAvalible:Z

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mWidgetID:I

    .line 48
    iput-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_Condition:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 259
    iput-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_timelineTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 260
    iput v1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_nTiltStartFrame:I

    .line 261
    iput v1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_nTiltEndFrame:I

    .line 312
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget3d/weather/Weather2x2Widget;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget3d/weather/Weather2x2Widget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget3d/weather/Weather2x2Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->initWeatherControl()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget3d/weather/Weather2x2Widget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->isWeatherDataAvalible:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget3d/weather/Weather2x2Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->initWeatherState()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/widget3d/weather/Weather2x2Widget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget3d/weather/Weather2x2Widget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private initWeatherControl()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 174
    const-string v3, "WeatherWidget2x2"

    const-string v4, "InitWeatherControl"

    invoke-static {v3, v4}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    .line 178
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v3, :cond_0

    .line 211
    :goto_0
    return-void

    .line 179
    :cond_0
    iget v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mWidgetID:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mWidgetID:I

    if-ne v3, v6, :cond_3

    .line 180
    :cond_1
    const/16 v3, 0xa

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "timeline.weather"

    aput-object v3, v2, v7

    const-string v3, "panel.hitbox"

    aput-object v3, v2, v8

    const-string v3, "textlabel.empty_city"

    aput-object v3, v2, v5

    const-string v3, "textlabel.empty_page"

    aput-object v3, v2, v6

    const-string v3, "timeline.tilt_weather"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "scenecontainer.weather_state"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "textlabel.city"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "textlabel.temp"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "textlabel.H_L"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "textlabel.weather"

    aput-object v4, v2, v3

    .line 186
    .local v2, szArrary:[Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 187
    .local v0, itemArray:[Lcom/htc/fusion/fx/FxObject;
    aget-object v3, v0, v7

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtc_Weather:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 188
    aget-object v3, v0, v8

    check-cast v3, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fx_HitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 189
    aget-object v3, v0, v5

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_EmptyCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 190
    aget-object v3, v0, v6

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_Empty:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 191
    aget-object v3, v0, v9

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_timelineTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 192
    const/4 v3, 0x5

    aget-object v3, v0, v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxsc_Status:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 193
    const/4 v3, 0x6

    aget-object v3, v0, v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_City:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 194
    const/4 v3, 0x7

    aget-object v3, v0, v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_Temp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 195
    const/16 v3, 0x8

    aget-object v3, v0, v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_HL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 196
    const/16 v3, 0x9

    aget-object v3, v0, v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_Condition:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 198
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_timelineTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_2

    .line 199
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_timelineTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v4, "tilt"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    .line 200
    .local v1, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v1, :cond_2

    .line 201
    iget v3, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_nTiltStartFrame:I

    .line 202
    iget v3, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v3, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_nTiltEndFrame:I

    .line 209
    .end local v0           #itemArray:[Lcom/htc/fusion/fx/FxObject;
    .end local v1           #marker:Lcom/htc/fusion/fx/Marker;
    .end local v2           #szArrary:[Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->setHitBox()V

    goto/16 :goto_0

    .line 207
    :cond_3
    const-string v3, "WeatherWidget2x2"

    const-string v4, "invalid widgetID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initWeatherInfo()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "WeatherWidget2x2"

    const-string v1, "initWeatherInfo"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/htc/widget3d/weather/WeatherInfo2x2;

    invoke-direct {v0}, Lcom/htc/widget3d/weather/WeatherInfo2x2;-><init>()V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    .line 142
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/widget3d/weather/WeatherInfo2x2;->szCity:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/widget3d/weather/WeatherInfo2x2;->szDescription:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/widget3d/weather/WeatherInfo2x2;->szCurTemp:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/widget3d/weather/WeatherInfo2x2;->curHitemp:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/widget3d/weather/WeatherInfo2x2;->curLowTemp:Ljava/lang/String;

    .line 147
    return-void
.end method

.method private initWeatherState()V
    .locals 3

    .prologue
    .line 134
    const-string v0, "WeatherWidget2x2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "condition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    iget-object v2, v2, Lcom/htc/widget3d/weather/WeatherInfo2x2;->szDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    invoke-virtual {p0, v0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->setInfoToControl(Lcom/htc/widget3d/weather/WeatherInfo2x2;)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->playWeatherUpdate()V

    .line 137
    return-void
.end method

.method private setHitBox()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 215
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fx_HitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v0, :cond_0

    .line 216
    const-string v0, "WeatherWidget2x2"

    const-string v1, "Control Hitbox.weather == null !!"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fx_HitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 220
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fx_HitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mTapListener:Lcom/htc/fusion/fx/MessageListener;

    if-nez v0, :cond_1

    .line 223
    new-instance v0, Lcom/htc/widget3d/weather/Weather2x2Widget$1;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/Weather2x2Widget$1;-><init>(Lcom/htc/widget3d/weather/Weather2x2Widget;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mTapListener:Lcom/htc/fusion/fx/MessageListener;

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fx_HitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fx_HitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fx_HitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mTapListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_0
.end method

.method private updateWeatherInfo()V
    .locals 5

    .prologue
    .line 151
    const-string v2, "WeatherWidget2x2"

    const-string v3, "updateWeatherInfo"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-eqz v2, :cond_1

    .line 153
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    .line 155
    .local v0, cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getCity()Lcom/htc/widget3d/weather/data/City;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/widget3d/weather/data/City;->current:Lcom/htc/widget3d/weather/data/City$Condition;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/City$Condition;->today()Lcom/htc/widget3d/weather/data/DayForecast;

    move-result-object v1

    .line 156
    .local v1, today:Lcom/htc/widget3d/weather/data/DayForecast;
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    iget-object v3, v0, Lcom/htc/widget3d/weather/data/CityInfo;->displayName:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/widget3d/weather/WeatherInfo2x2;->szCity:Ljava/lang/String;

    .line 157
    iget-boolean v2, v0, Lcom/htc/widget3d/weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v2, :cond_0

    .line 158
    const-string v2, "WeatherWidget2x2"

    const-string v3, "cityinfo.hasWeatherData"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->isWeatherDataAvalible:Z

    .line 160
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/data/DayForecast;->getCondition()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/widget3d/weather/WeatherInfo2x2;->szDescription:Ljava/lang/String;

    .line 161
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/widget3d/weather/Weather2x2Widget;->mUnit:Lcom/htc/widget3d/weather/data/City$UNIT;

    invoke-virtual {v1, v4}, Lcom/htc/widget3d/weather/data/DayForecast;->getCurrent(Lcom/htc/widget3d/weather/data/City$UNIT;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/widget3d/weather/WeatherInfo2x2;->szCurTemp:Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/widget3d/weather/Weather2x2Widget;->mUnit:Lcom/htc/widget3d/weather/data/City$UNIT;

    invoke-virtual {v1, v4}, Lcom/htc/widget3d/weather/data/DayForecast;->getHigh(Lcom/htc/widget3d/weather/data/City$UNIT;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/widget3d/weather/WeatherInfo2x2;->curHitemp:Ljava/lang/String;

    .line 163
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/widget3d/weather/Weather2x2Widget;->mUnit:Lcom/htc/widget3d/weather/data/City$UNIT;

    invoke-virtual {v1, v4}, Lcom/htc/widget3d/weather/data/DayForecast;->getLow(Lcom/htc/widget3d/weather/data/City$UNIT;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/widget3d/weather/WeatherInfo2x2;->curLowTemp:Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/data/DayForecast;->getForecastIcon()I

    move-result v3

    iput v3, v2, Lcom/htc/widget3d/weather/WeatherInfo2x2;->condition:I

    .line 165
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->initWeatherState()V

    .line 171
    .end local v0           #cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    .end local v1           #today:Lcom/htc/widget3d/weather/data/DayForecast;
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string v2, "WeatherWidget2x2"

    const-string v3, "mCityInfo == null"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 75
    const-string v0, "WeatherWidget2x2"

    const-string v1, "mem : finalize called"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 3

    .prologue
    .line 80
    const-string v0, "WeatherWidget2x2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScene() , isPortrait=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/widget3d/weather/Weather2x2Widget;->isPortrait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-boolean v0, Lcom/htc/widget3d/weather/Weather2x2Widget;->isPortrait:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->portScene:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->landScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initData()V

    .line 128
    const-string v0, "WeatherWidget2x2"

    const-string v1, "updateData"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->updateWeatherInfo()V

    .line 130
    return-void
.end method

.method protected initWidget()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initWidget()V

    .line 116
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_WeaInfo:Lcom/htc/widget3d/weather/WeatherInfo2x2;

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->initWeatherInfo()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mGetFxControls:Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;

    if-eqz v0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->initWeatherControl()V

    .line 123
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfiguration"

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-super {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    const-string v1, "WeatherWidget2x2"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    :goto_0
    sput-boolean v0, Lcom/htc/widget3d/weather/Weather2x2Widget;->isPortrait:Z

    .line 92
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mGetFxControls:Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancel(Ljava/lang/Runnable;)V

    .line 95
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "saved"

    .prologue
    const/4 v2, 0x1

    .line 56
    invoke-super {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v0, "WeatherWidget2x2"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker()Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 61
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->SZ_DEFAULT_M10PATH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->portScene:Lcom/htc/fusion/fx/FxScene;

    .line 63
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->SZ_DEFAULT_M10PATH_LAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->landScene:Lcom/htc/fusion/fx/FxScene;

    .line 68
    new-instance v0, Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;-><init>(Lcom/htc/widget3d/weather/Weather2x2Widget;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mGetFxControls:Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;

    .line 69
    return-void
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->onHostMessage(Landroid/os/Message;)V

    .line 110
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "WeatherWidget2x2"

    const-string v1, "HOST_ORIENTATION_CHANGE_COMPLETE"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mGetFxControls:Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->mGetFxControls:Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/Weather2x2Widget$GetFxControls;->run()V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onTiltChanged(F)V
    .locals 3
    .parameter "fTilt"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_timelineTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_timelineTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_nTiltStartFrame:I

    iget v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->m_nTiltEndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 267
    :cond_0
    return-void
.end method

.method protected playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "city"
    .parameter "error_msg"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_Empty:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_Empty:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_EmptyCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_EmptyCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtc_Weather:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtc_Weather:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "empty_page"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 281
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->isWeatherDataAvalible:Z

    .line 282
    return-void

    .line 279
    :cond_2
    const-string v0, "WeatherWidget2x2"

    const-string v1, "fxtc_Weather=null"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playWeatherUpdate()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fx_Status:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fx_Status:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "In"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtc_Weather:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtc_Weather:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "weather_update"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 272
    :cond_1
    return-void
.end method

.method public setInfoToControl(Lcom/htc/widget3d/weather/WeatherInfo2x2;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_City:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_City:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p1, Lcom/htc/widget3d/weather/WeatherInfo2x2;->szCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_Condition:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_Condition:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p1, Lcom/htc/widget3d/weather/WeatherInfo2x2;->szDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_Temp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_Temp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p1, Lcom/htc/widget3d/weather/WeatherInfo2x2;->szCurTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_HL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxtl_HL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/htc/widget3d/weather/WeatherInfo2x2;->curHitemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/widget3d/weather/WeatherInfo2x2;->curLowTemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 299
    :cond_3
    iget v0, p1, Lcom/htc/widget3d/weather/WeatherInfo2x2;->condition:I

    invoke-virtual {p0, v0}, Lcom/htc/widget3d/weather/Weather2x2Widget;->setStatusControl(I)V

    .line 300
    return-void
.end method

.method public setStatusControl(I)V
    .locals 4
    .parameter "condition"

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, m10Path:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/widget3d/weather/util/WeatherUtil;->getForecastScenePath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string v1, "WeatherWidget2x2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m10path :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fx_Status:Lcom/htc/fusion/fx/FxScene;

    .line 307
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxsc_Status:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fxsc_Status:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather2x2Widget;->fx_Status:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 309
    :cond_0
    return-void
.end method
