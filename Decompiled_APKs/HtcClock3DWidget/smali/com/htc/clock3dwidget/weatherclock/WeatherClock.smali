.class public Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
.super Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;
.source "WeatherClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock3dwidget/weatherclock/WeatherClock$1;,
        Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;,
        Lcom/htc/clock3dwidget/weatherclock/WeatherClock$ClockClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[WeatherClock]"


# instance fields
.field API_level:I

.field private mClockClickLand:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$ClockClickListener;

.field private mClockClickListener:Landroid/view/View$OnClickListener;

.field private mClockClickPort:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$ClockClickListener;

.field protected mFxHitboxClock:Lcom/htc/fusion/fx/controls/FxHitbox;

.field protected mFxHitboxWeather:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mMarkerHour:Lcom/htc/fusion/fx/Marker;

.field private mMarkerMin:Lcom/htc/fusion/fx/Marker;

.field private mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mTileMark:Lcom/htc/fusion/fx/Marker;

.field private mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mWeatherClickLand:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;

.field private mWeatherClickListener:Landroid/view/View$OnClickListener;

.field private mWeatherClickPort:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Lcom/htc/android/rosie/widget/Widget$Host;)V
    .locals 2
    .parameter "context"
    .parameter "widget"
    .parameter "host"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;-><init>(Landroid/content/Context;Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Lcom/htc/android/rosie/widget/Widget$Host;)V

    .line 29
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClock;Lcom/htc/clock3dwidget/weatherclock/WeatherClock$1;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mWeatherClickPort:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;

    .line 30
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClock;Lcom/htc/clock3dwidget/weatherclock/WeatherClock$1;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mWeatherClickLand:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;

    .line 31
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock$ClockClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock$ClockClickListener;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClock;Lcom/htc/clock3dwidget/weatherclock/WeatherClock$1;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mClockClickPort:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$ClockClickListener;

    .line 32
    new-instance v0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock$ClockClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock$ClockClickListener;-><init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClock;Lcom/htc/clock3dwidget/weatherclock/WeatherClock$1;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mClockClickLand:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$ClockClickListener;

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->API_level:I

    .line 48
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mParentWidget:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    .line 50
    iput-object p3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 51
    return-void
.end method

.method static synthetic access$200(Lcom/htc/clock3dwidget/weatherclock/WeatherClock;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mClockClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClock;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mWeatherClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;)V
    .locals 2
    .parameter "controlsPort"
    .parameter "controlsLand"

    .prologue
    .line 88
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxClock:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mClockClickPort:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$ClockClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 89
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxWeather:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mWeatherClickPort:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 90
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/util/DigitControl;->bind()V

    .line 91
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/util/DigitControl;->bind()V

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p2, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/util/DigitControl;->bind()V

    .line 95
    iget-object v0, p2, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/util/DigitControl;->bind()V

    .line 96
    iget-object v0, p2, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxClock:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mClockClickLand:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$ClockClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 97
    iget-object v0, p2, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxWeather:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mWeatherClickLand:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 99
    :cond_0
    return-void
.end method

.method public doTiltChanged(F)V
    .locals 3
    .parameter "tilt"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mTileMark:Lcom/htc/fusion/fx/Marker;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mTileMark:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mTileMark:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v0

    .line 118
    .local v0, frame:F
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 120
    .end local v0           #frame:F
    :cond_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mMarkerHour:Lcom/htc/fusion/fx/Marker;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mMarkerHour:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mMarkerHour:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v0

    .line 122
    .restart local v0       #frame:F
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 124
    .end local v0           #frame:F
    :cond_1
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mMarkerMin:Lcom/htc/fusion/fx/Marker;

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mMarkerMin:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mMarkerMin:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v0

    .line 126
    .restart local v0       #frame:F
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 128
    .end local v0           #frame:F
    :cond_2
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v1, p1}, Lcom/htc/clock3dwidget/util/DigitControl;->doTiltChanged(F)V

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v1, :cond_4

    .line 132
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v1, p1}, Lcom/htc/clock3dwidget/util/DigitControl;->doTiltChanged(F)V

    .line 134
    :cond_4
    return-void
.end method

.method public init(Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;)V
    .locals 2
    .parameter "controls"

    .prologue
    .line 54
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxClock:Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mFxHitboxClock:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 55
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxWeather:Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mFxHitboxWeather:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 56
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    .line 57
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    .line 58
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mCityView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mCityView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 59
    iget v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->API_level:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mConditionLength:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mConditionLength:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 61
    :cond_0
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mConditionView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mConditionView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 62
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mNoWeatherView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mNoWeatherView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 63
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Data:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mDigital_Data:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mWeekDayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 64
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mCityRest:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mCityRest:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 65
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mCityRestText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mCityRestText:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 66
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mWeatherType:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mWeatherType:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 68
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 69
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mFxTextIndH:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 70
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mFxTextIndL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 71
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mHTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 72
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mLTempView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 73
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mImgToday:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 74
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mHLTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mHLTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 76
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 77
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mTileMark:Lcom/htc/fusion/fx/Marker;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mTileMark:Lcom/htc/fusion/fx/Marker;

    .line 79
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 80
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mMarkerHour:Lcom/htc/fusion/fx/Marker;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mMarkerHour:Lcom/htc/fusion/fx/Marker;

    .line 82
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 83
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mMarkerMin:Lcom/htc/fusion/fx/Marker;

    iput-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mMarkerMin:Lcom/htc/fusion/fx/Marker;

    .line 85
    return-void
.end method

.method public setOnClockClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mClockClickListener:Landroid/view/View$OnClickListener;

    .line 160
    return-void
.end method

.method public setOnWeatherClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mWeatherClickListener:Landroid/view/View$OnClickListener;

    .line 156
    return-void
.end method

.method public unbind(Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;)V
    .locals 2
    .parameter "controlsPort"
    .parameter "controlsLand"

    .prologue
    .line 102
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxClock:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mClockClickPort:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$ClockClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 103
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxWeather:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mWeatherClickPort:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 104
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/util/DigitControl;->unbind()V

    .line 105
    iget-object v0, p1, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/util/DigitControl;->unbind()V

    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p2, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/util/DigitControl;->unbind()V

    .line 109
    iget-object v0, p2, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/util/DigitControl;->unbind()V

    .line 110
    iget-object v0, p2, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxClock:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mClockClickLand:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$ClockClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 111
    iget-object v0, p2, Lcom/htc/clock3dwidget/weatherclock/FxWeatherControls;->mFxHitboxWeather:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mWeatherClickLand:Lcom/htc/clock3dwidget/weatherclock/WeatherClock$WeatherClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 113
    :cond_0
    return-void
.end method
